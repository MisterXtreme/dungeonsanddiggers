function clearConsole()
  if not os.execute("clear") then
      os.execute("cls")
  elseif not os.execute("cls") then
      for i = 1,25 do
          print("\n\n")
      end
  end
end
clearConsole()
print("Welcome to Dungeons & Diggers!")
repeat
   io.write("Enter the realm? (y/n) ")
   io.flush()
   answer = io.read()
until answer == "y" or answer == "n"
if answer == "y" then
  dofile("game.lua")
elseif answer == "n" then
  print("Why did you start the game then?")
  print("\\______   \\  ___.__.   ____  ")
  print(" |    |  _/ <   |  | _/ __ \\ ")
  print(" |    |   \\  \\___  | \\  ___/ ")
  print(" |______  /  / ____|  \\___  >")
  print("        \\/   \\/           \\/ ")
  print("\n")
  print("\\_____  \\   \\_____  \\        ")
  print(" /   |   \\   /   |   \\       ")
  print("/    |    \\ /    |    \\      ")
  print("\\_______  / \\_______  /      ")
  print("        \\/          \\/       ")
  print("/\\                           ")
  print(")/                           ")
  print("\n")
  print("        /_____/              ")
  print(" ______         ______       ")
  print("/_____/        /_____/       ")
end
