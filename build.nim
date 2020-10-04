import os,osproc,csvtools,strutils

var
  filename: string
  buildcommand: string

let errorcode = existsOrCreateDir("bin")

for row in csvRows("apps.csv"):
  echo row[0]
  echo row[1]
  filename = "bin/" & row[0] & ".nim"
  copyFile("main.nim",filename)
  for fn in [filename]:
    fn.writeFile fn.readFile.replace("TITLE", row[0])
    fn.writeFile fn.readFile.replace("URL", row[1])
    buildcommand = "nim compile " & filename
    let errorcode = execCmd buildcommand
