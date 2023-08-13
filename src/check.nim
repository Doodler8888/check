import os, system, strutils

let
  redStart = "\x1b[91m"
  greenStart = "\x1b[92m"
  blueStart = "\x1b[94m"
  endColor = "\x1b[0m"

proc displayDescription(text: string) =
  for line in text.splitLines():
    var outputLine = line
    outputLine = outputLine.replace("[RED]", redStart)
    outputLine = outputLine.replace("[GREEN]", greenStart)
    outputLine = outputLine.replace("[BLUE]", blueStart)
    outputLine = outputLine.replace("[END]", endColor)
    stdout.writeLine(outputLine)

if paramCount() > 0:
  let parameter1 = paramStr(1)
  var descriptionName: string
  case parameter1:
    of "postgres":
      descriptionName = "postgresql.txt"
    of "link":
      descriptionName = "ln.txt"
    else:
      descriptionName = paramStr(1) & ".txt"

  let descriptionFilePath = joinPath(joinPath(parentDir(parentDir(getAppFilename())), "descriptions"), descriptionName)
  if descriptionFilePath.fileExists():
    let descriptionText = readFile(descriptionFilePath)
    displayDescription(descriptionText)
  else:
    echo "File not found: ", descriptionFilePath

