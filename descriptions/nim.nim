import std/terminal

proc nim*() =
    stdout.write("\n")
    stdout.styledWriteLine(fgGreen, "    - Compile the code:")
    stdout.styledWrite(fgRed, "      nim c -d:release ")
    stdout.write("myprogram.nim |[1]")
    stdout.write("\n")
    stdout.write("\n")
    stdout.write("\n")

    stdout.styledWriteLine(fgGreen, "    - Run the code:")
    stdout.styledWrite(fgRed, "      nim r ")
    stdout.write("myprogram.nim")
    stdout.write("\n")
    stdout.write("\n")
    stdout.write("\n")

  
    stdout.write("    1.The -d:release flag tells Nim to compile in release mode, which applies\n")
    stdout.write("      optimizations and omits debugging information. This makes the resulting\n")
    stdout.write("      binary faster and smaller.\n")
    stdout.write("\n")
    stdout.write("\n")
