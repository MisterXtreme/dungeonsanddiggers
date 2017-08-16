if not os.execute("clear") then
    os.execute("cls")
elseif not os.execute("cls") then
    for i = 1,25 do
        print("\n\n")
    end
end
--[[
--[[
Group 1 = friendly
members of friendly:
1  Weaponsmith
2  Salesman
3  Wiseman

Group 2 = nuetral
members of nuetral
1 Stranger
2 Shifty Salesman

Group 3 = hostile
1 Walker
2 Tank
3 Archer

characters = { 1 = {1, 2, 3}, 2 = {1, 2}, 3 = {1, 2, 3}}
]]
--local characters = { {name = "Weaponsmith", type = "friendly", {name = "Salesman", type = "friendly"}, ...}

function startRoom(direction)
  print("You walk into the " .. direction .. " hallway...")
  local characters = { {name = "Weaponsmith", type = "friendly"}, {name = "Walker", type = "hostile"}}
  local characterType = characters[math.random(1, #characters)]
  local character = characterType.name
  print("You walk into a large room, you notice a " .. character " ...")
  if characterType == "friendly" then
    print("You approach the " .. chracter " ...")
  elseif characterType == "neutral" then
    repeat
      io.write('Do you want to approach the ' .. character .. ' (y/n)? ')
      io.flush()
      approach = io.read()
    until approach == "y" or "n"
  end
end

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
  io.write("You can't seem to remember your name, so you decide to call yourself (type your name) ")
  io.flush()
  yourName = io.read()
  print(yourName .. ", you like it, it seems perfect...")
  print("\n")
  print("After saying " .. yourName .. " several times, you remember the other items you are holding.")
  print("You decide to read the book...")
  print("\n")
  print("My name is " .. yourName)
  print("I don't know what happened to me, I was running down an ally, next thing I knew, I was clutching my head in pain.")
  print("After I took in my suroundings (all I could see was what seemed to be mossy walls, and the light from a dim torch), I realized there was someone beside me.")
  print('When "they" saw I was awake, they told me to "Find the keeper", then they left...')

  io.write('Do you want to dig? (y/n) ')
  io.flush()
  local choice = io.read()
  if choice == "y" then
    print("You find a sword, it appears to be quite old")
  elseif choice == "n" then
    repeat
    local choice = nil
      print("Hmm, I think you should dig...")
      io.write('Do you want to dig? (y/n) ')
      io.flush()
      if choice == "y" then
        print("Finally!")
        print("You find a sword, it appears to be quite old")
      end
    until choice == "y"
  end
  local choice = nil
  repeat
    io.write('Press "Enter" to continue')
    io.flush()
    choice = io.read()
  until choice ~= nil

  if not os.execute("clear") then
      os.execute("cls")
  elseif not os.execute("cls") then
      for i = 1,25 do
          print("\n\n")
      end
  end
  repeat
    local choice = nil
    io.write('You decide to walk down the (left/right) hallway? ')
    io.flush()
    choice = io.read()
  until choice == "left" or "right"
  startRoom(choice)



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
