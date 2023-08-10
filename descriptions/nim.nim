import std/terminal, ../src/termlib 

proc nim*() =
    nL()
    stdout.styledWriteLine(fgGreen, "    - Compile the code:")
    stdout.styledWrite(fgRed, "      nim c -d:release ")
    w("myprogram.nim |[1]")
    nL(3)

    stdout.styledWriteLine(fgGreen, "    - Run the code:")
    stdout.styledWrite(fgRed, "      nim r ")
    w("myprogram.nim")
    nL(3)

  
    w("    1.the -d:release flag tells nim to compile in release mode, which applies\n")
    w("      optimizations and omits debugging information. this makes the resulting\n")
    w("      binary faster and smaller.\n")
    nL(2)
