import std/terminal

proc vault*() =
    stdout.styledWriteLine(fgGreen, "    - Show the list of vault paths:")
    stdout.styledWriteLine(fgRed, "      vault secrets list")
    stdout.write("\n")
    stdout.write("\n")
  
    stdout.styledWriteLine(fgGreen, "    - Unseal the vault using the command 3 times with different vault keys:")
    stdout.styledWriteLine(fgRed, "      vault operator unseal")
  
    stdout.resetAttributes()
  
