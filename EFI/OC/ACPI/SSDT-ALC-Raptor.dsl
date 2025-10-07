/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/OC/ACPI/SSDT-ALC-Raptor.aml, Thu Sep 25 23:27:34 2025
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000086 (134)
 *     Revision         0x02
 *     Checksum         0x3C
 *     OEM ID           "HACK"
 *     OEM Table ID     "HDAU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "HDAU", 0x00000000)
{
    External (_SB_.PC00.HDAS, DeviceObj)

    Scope (_SB.PC00.HDAS)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            If (!_OSI ("Darwin"))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x02)
            {
                "layout-id", 
                Buffer (0x04)
                {
                     0x0C, 0x00, 0x00, 0x00                           // ....
                }
            })
        }
    }
}

