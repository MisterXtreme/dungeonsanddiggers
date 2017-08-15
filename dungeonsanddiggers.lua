local answer
local yourName
print("Welcome to Dungeons & Diggers!")
repeat
   io.write("Enter the realm? (y/n) ")
   io.flush()
   answer = io.read()
until answer == "y" or answer == "n"
if answer == "y" then
  print("You awaken in a strange hallway...")
  print("You look in your pockets...")
  print("You find a fuzzy picture, a trowel, and a worn book.")

  local continueVar
  repeat
    io.write('Press "Enter" to continue ')
    io.flush()
    continueVar = io.read()
  until continueVar ~= nil
  if not os.execute("clear") then
      os.execute("cls")
  elseif not os.execute("cls") then
      for i = 1,25 do
          print("\n\n")
      end
  end

  print("Holding the items, you decide to look at the photo, it seems familiar...")
  print("You realize why, It's you!")
  io.write("You can't seem to remember your name, so you decide to call yourself ")
  io.flush()
  yourName = io.read()
  print(yourName .. " you like it, it seems perfect...")
  print("\n")
  print("After saying " .. yourName .. "several times, you remember the other items you are holding.")
  print("You decide to read the book...")
  print("\n")
  print("My name is " .. yourName)
  print("I don't know what happened to me, I was running down the ally, next thing I knew, I was clutching my head in pain.")
  print("After I took in my suroundings (all I could see was what seemed to be mossy walls, and the light from a dim torch), I realized there was someone beside me.")
  print('When "they" (I could not tell what they looked like in the dim light, and their voice did not seem either male or female)')
  print('saw I was awake, they told me to "Find the keeper", then they left...')
  local continueVar
  repeat
    io.write('Press "Enter" to continue ')
    io.flush()
    continueVar = io.read()
  until continueVar ~= nil
  if not os.execute("clear") then
      os.execute("cls")
  elseif not os.execute("cls") then
      for i = 1,25 do
          print("\n\n")
      end
  end
  print("Hi")

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
