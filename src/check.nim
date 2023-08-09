import os, system, ../descriptions/ln, ../descriptions/vault, ../descriptions/postgresql, ../descriptions/nim

if paramCount() > 0:
  let functionName = paramStr(1)
  case functionName
  of "vault":
    vault()
  of "nim":
    nim()
  of "ln", "link":
    ln()
  of "postgresql", "psql", "postgres":
    postgresql()
  else:
    echo "Incorrect input: ", functionName
