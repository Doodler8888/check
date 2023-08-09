import std/terminal

proc postgresql*() =
    stdout.styledWriteLine(fgGreen, "    - To enter the postger console:")
    stdout.styledWriteLine(fgRed, "      sudo -u postgres psql")
    stdout.write("\n")
    stdout.write("\n")
    
    stdout.styledWriteLine(fgGreen, "    - Check users (console):")
    stdout.styledWriteLine(fgRed, "      \\du")
    stdout.write("\n")
    stdout.write("\n")
    
    stdout.styledWriteLine(fgGreen, "    - Check databases (console):")
    stdout.styledWriteLine(fgRed, "      \\l")
