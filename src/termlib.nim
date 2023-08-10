proc nL*(number: int = 1) =
  for i in 1..number:
    stdout.write("\n")


proc w*(s: string) =
  stdout.write(s)
