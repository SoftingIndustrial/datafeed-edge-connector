# Modbus Item Syntax

The Modbus item syntax has the following structure:
`<Area><DataType><StartAddress>[.ArraySize]`

If the data type is BOOL the bit number must be provided:
`<Area><DataType><StartAddress><.Bitnumber>[.ArraySize]`

The UnitID could be specified individualy with item syntax:
`[UnitID.]<Area><DataType><StartAddresse><.Bitnumber>[.ArraySize]`

**Legend:** `<> =` mandatory,  `[ ] =`  optional

## `[UnitID.]`

The UnitId for this item is specified by the item syntax. 
Simply place the UnitID name in front of the item name (UnitidName.ItemName).

The UnitID name is made up of the Id and the number.

If the UnitID is missing in the item syntax, the parametrized UnitID is transferred to the PLC.

Example:

- `Id1.40001`
- `Id2.R2`
- `Id3.S20.30`

## `<Area>`

|                    | Syntax abbreviation | Object type | Access rights |
| --                 | --                  | --          | ---           |
| Discrete Inputs    | I                   | BIT         | read          |
|                    | E                   |             |               |
|                    | DI                  |             |               |
|                    | DE                  |             |               |
|                    | 1                   |             |               |
| Discrete Outputs   | A                   | BIT         | read / write  |
|                    | O                   |             |               |
|                    | Q                   |             |               |
|                    | DA                  |             |               |
|                    | DO                  |             |               |
|                    | DQ                  |             |               |
|                    | 0                   |             |               |
| Input Register     | ER                  | WORD        | read          |
|                    | IR                  |             |               |
|                    | 3                   |             |               |
| (Holding) Register | R                   | WORD        | read / write  |
|                    | HR                  |             |               |
|                    | 4                   |             |               |
 
* BIT object type means that one bit is addressed per physical address.
* WORD object type means that one word (16 bits) is addressed per physical address.

## `<DataType>`

|        | Syntax | Example Register | Example I/O |
| --     | --     | --               | --          |
| BIT    | X      | RX5.2            | I255        |
| Int16  |        | R50              |             |
|        | I      | RI50             |             |
| UInt16 | W      | RW50             |             |
| Int32  | D      | RD50             |             |
|        | DI     | RDI50            |             |
| UInt32 | DW     | RDW50            |             |
| Int64  | QI     | RQI50            |             |
| UInt64 | QW     | RQW50            |             |
| Real   | R      | RR50             |             |
| Double | RD     | RRD50            |             |
| String | S      | RS5.4            |             |

## `<StartAddress>`
The start address defines the point at which reading and writing starts.

Example: `ER120`: Input Register 120

If the start address is a specific bit, the bit number is also required.

## `<.BitNumber>`
The bit number must be provided whenever the data type is BOOL.

Example: `HRX5.2`: bit 2of Holding Register 5

## `[.ArraySize]`

Arrays are created to merge several units of a data type into one field.

Example: `HRD50.3`

## `[Strings]`

For a Modbus controllers to support strings we interpret consecutive Modbus registers
as a character string with 8 bit US-ASCII coding.
For example Syntax `RS100.8` allows for an interpretation of  Modbus registers
100 to 108 as a string of 8 character of 8  bits each.
