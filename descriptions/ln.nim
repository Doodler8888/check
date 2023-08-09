import std/terminal

proc ln*() =

  stdout.write("\n")
  stdout.styledWriteLine(fgGreen, "    - Create a symbolic link to a file or directory:")
  stdout.styledWrite(fgRed, "      ln ")
  stdout.write(" [FULL]/path/to/file_or_directory [FULL]/path/to/symlink")
  stdout.write("\n")
  stdout.write("\n")
  stdout.write("\n")

  stdout.styledWriteLine(fgGreen, "    - Create a hard link to a file:")
  stdout.styledWrite(fgRed, "      ln ")
  stdout.write(" [FULL]/path/to/file [FULL]/path/to/hardlink")

  stdout.resetAttributes()


# If you do not include stdout.resetAttributes() at the end of your function,
# the style applied by the last called styledWriteLine() (which is fgRed in 
# your code) will continue to be applied to all the subsequent output on 
# stdout.
