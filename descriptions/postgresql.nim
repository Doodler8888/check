import std/terminal, ../src/termlib

proc postgresql*() =

    nL()
    stdout.styledWriteLine(fgGreen, "    - To enter the postger console:")
    stdout.styledWriteLine(fgRed, "      sudo -u postgres psql")
    nL(2)
    
    stdout.styledWriteLine(fgGreen, "    - Check users (console):")
    stdout.styledWriteLine(fgRed, "      \\du")
    nL(2)
    
    stdout.styledWriteLine(fgGreen, "    - Check databases (console):")
    stdout.styledWriteLine(fgRed, "      \\l")
