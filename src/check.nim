import os, system


proc getDescriptionPath(): string =
  let currentExecutablePath = getAppFilename()
  let parentDirectory = parentDir(parentDir(currentExecutablePath))
  return joinPath(parentDirectory, "descriptions")

proc main(fileName: string) =
  let descriptionsPath = getDescriptionPath()
  let contentPath = joinPath(descriptionsPath, fileName & ".txt")
  let content = readFile(contentPath)
  echo content

if paramCount() > 0:
  main(paramStr(1))
else:
  echo "Please provide a filename as an argument."


# readFile handles opening the file, reading the contents into a string, 
# and closing the file for you. And even if there is an exception which
# intervenes, it wont be a problem because readFile returns a string, not
# an object.

# 0 is always a program's own name.

# getAppFilename returns not just the executable name, but the full path of it.

# the parentDir function takes a path and returns the parent directory of 
# that path, effectively removing the last component (i.e., the filename itself) 
# from the path.

# Executable in the src directory, and to get from here to the descriptions 
# directory i need to go up one level, that's why ".." is second in the
# order.
