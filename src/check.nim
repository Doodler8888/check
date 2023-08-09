import os, system, ../descriptions/ln, ../descriptions/vault, ../descriptions/postgresql

if paramCount() > 0:
  let functionName = paramStr(1)
  case functionName
  of "vault":
    vault()
  of "ln", "link":
    ln()
  of "postgresql", "psql", "postgres":
    postgresql()
  else:
    echo "No such function: ", functionName
