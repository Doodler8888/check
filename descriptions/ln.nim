import std/terminal, ../src/termlib

proc ln*() =

  nL()
  stdout.styledWriteLine(fgGreen, "    - Create a symbolic link to a file or directory:")
  stdout.styledWrite(fgRed, "      ln ")
  w(" [FULL]/path/to/file_or_directory [FULL]/path/to/symlink")
  nL(3)
  stdout.styledWriteLine(fgGreen, "    - Create a hard link to a file:")
  stdout.styledWrite(fgRed, "      ln ")
  w(" [FULL]/path/to/file [FULL]/path/to/hardlink")
  nL(2)

  stdout.resetAttributes()


# If you do not include stdout.resetAttributes() at the end of your function,
# the style applied by the last called styledWriteLine() (which is fgRed in 
# your code) will continue to be applied to all the subsequent output on 
# stdout.
