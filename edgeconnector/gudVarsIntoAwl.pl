#!/usr/bin/perl

# This script converts GUD variable definition into awl syntax, suitable
# to address the variable in NCK for read and write operations.
#
# The GUD definition is read from STDIN.
# The awl syntax is written to stdout
#
# Example usage:
# ./gudVarsIntoAwl.pl GUD4 < GUD4.DEF > gud.awl
# ./gudVarsIntoAwl.pl MGUD < MGUD.DEF >> gud.awl
# ./gudVarsIntoAwl.pl UGUD < UGUD.DEF >> gud.awl
# cat gud.awl

use strict;
use warnings;

sub printHelp
{
    print STDERR ("You need to provide the name of the GUD area!\n");
    print STDERR ("Valid names are:\n");
    print STDERR ("SGUD, UGUD, MGUD, GUD4, GUD5, GUD6, GUD7, GUD8, GUD9\n");
} ;

# Addressing starts at 1, not 0
my $NCKCount = 1;
my $ChanCount = 1;
my $GUDArea;

if (! defined $ARGV[0] )
{
    printHelp;
    exit 1;
}

my $GUDAreaName = uc $ARGV[0]; # uppercase of first argument

if ( $GUDAreaName eq "SGUD" ) {
    $GUDArea = "B#16#17;" ;
} elsif  ( $GUDAreaName eq "MGUD" ) {
    $GUDArea = "B#16#2D;" ;
} elsif ( $GUDAreaName eq "UGUD" ) {
    $GUDArea = "B#16#2E;" ;
} elsif ( $GUDAreaName eq "GUD4" ) {
    $GUDArea = "B#16#2F;" ;
} elsif ( $GUDAreaName eq "GUD5" ) {
    $GUDArea = "B#16#30;" ;
} elsif ( $GUDAreaName eq "GUD6" ) {
    $GUDArea = "B#16#31;" ;
} elsif ( $GUDAreaName eq "GUD7" ) {
    $GUDArea = "B#16#32;" ;
} elsif ( $GUDAreaName eq "GUD8" ) {
    $GUDArea = "B#16#33;" ;
} elsif ( $GUDAreaName eq "GUD9" ) {
    $GUDArea = "B#16#34;" ;
} elsif ( $GUDAreaName eq "SGUD GD1" ) {
    $GUDArea = "B#16#34;" ;
} else {
    printHelp;
    print STDERR "But you have provided $GUDAreaName\n";
    exit 1;
}

print STDOUT "$GUDAreaName:\n";
print STDOUT "STRUCT\n";

# Assuming that the GUD definitions are read from STDIN
# Writing debug goes to STDERR
# Wrting awl goes to STDOUT
while(my $line = <STDIN> ) {
    # The regular expression needs to match the description in page 142 of
    # https://cache.industry.siemens.com/dl/files/410/54714410/att_851303/v1/PGA_de.pdf
    if ( $line =~ /^DEF\s+(NCK|CHAN)\s+(SYNR|SYNW|SYNRW|)\s*(BOOL|CHAR|INT|REAL|STRING\[(\d+)\]|AXIS|FRAME)\s+([_\w\d]+)/ ) {
        my $area = $1;
        my $vlStop = $2;
        my $type = $3;
        my $size = $4;
        my $symbolname = $5;
        print STDERR "$symbolname ";
        print STDOUT "\t$symbolname:\n";
        print STDOUT "\tSTRUCT\n";
        print STDOUT "\t\tSYNTAX_ID : BYTE := B#16#82;\n";
        if ( $area eq "NCK" ) {
            print STDERR "NCK $NCKCount ";
            print STDOUT "\t\tArea_Unit : BYTE := B#16#01;\n";
            printf ("\t\tColumn : WORD := W#16#%02X;\n", $NCKCount);
            print STDOUT "\t\tLine : WORD := W#16#1;\n";
            print STDOUT "\t\tBlockType : BYTE := $GUDArea\n";
            print STDOUT "\t\tNumOfLine : BYTE := B#16#1;\n";
            $NCKCount++;
        }
        elsif ( $area eq "CHAN" ) {
            print STDERR "Chan $ChanCount ";
            print STDOUT "\t\tArea_Unit : BYTE := B#16#41;\n";
            printf ("\t\tColumn : WORD := W#16#%X;\n", $ChanCount);
            print STDOUT "\t\tLine : WORD := W#16#1;\n";
            print STDOUT "\t\tBlockType : BYTE := $GUDArea\n";
            print STDOUT "\t\tNumOfLine : BYTE := B#16#1;\n";
            $ChanCount++;
        }
        print STDERR "Type $type";
        # For data sizes see page 25 of https://cache.industry.siemens.com/dl/files/410/54714410/att_851303/v1/PGA_de.pdf
        if ( $type eq "REAL" ) {
            $size = 8; # real is double
            print STDOUT "\t\tDataType : BYTE := B#16#f;\n";
        } elsif ( $type eq "CHAR" ) {
            $size = 1;
            print STDOUT "\t\tDataType : BYTE := B#16#3;\n"; # unsigned
        } elsif ( $type =~ /STRING/ ) {
            print STDOUT "\t\tDataType : BYTE := B#16#13;\n"; # NCU string
            $size++; # increase size by one for the trailing 0
        } elsif ( $type eq "BOOL" ) {
            $size = 1;
            print STDOUT "\t\tDataType : BYTE := B#16#1;\n";
        } elsif ( $type eq "INT" ) {
            $size = 4;
            print STDOUT "\t\tDataType : BYTE := B#16#7;\n";
        } elsif ( $type eq "AXIS" ) {
            $size = 4;
            print STDOUT "\t\tDataType : BYTE := B#16#13;\n"; # not 0 terminated string of 4 chars
        } else {
            print STDERR "Unsurpported type $type\n";
        }
        if ( defined $size ) {
            print STDERR " size: $size\n";
            printf ("\t\tLength : BYTE := B#16#%X;\n", $size);
        }
        print STDOUT "\tEND_STRUCT ;\n";
    }
}
print STDOUT "END_STRUCT ;\n";
