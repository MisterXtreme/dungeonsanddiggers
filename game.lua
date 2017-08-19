local direction

function clearConsole()
  if not os.execute("clear") then
      os.execute("cls")
  elseif not os.execute("cls") then
      for i = 1,25 do
          print("\n\n")
      end
  end
end

function detectKey(key, message)
  repeat
    io.write('Press "' .. key .. '" to continue ')
    io.flush()
    continueVar = io.read()
  until continueVar ~= nil
end
function pickRandomCharacters()
  local characters = {{name = "salesman", type = "friendly"}, {name = "wiseman", type = "friendly"}, {name = "weaponsmith", type = "friendly"}, {name = "stranger", type = "neutral"}, {name = "shifty salesman", type = "neutral"}, {name = "walker", type = "hostile"}, {name = "knight in dark armour", type = "hostile"}, {name = "archer", type = "hostile"}}
  local characterPicked = characters[math.random(1, #characters)]
  if characterPicked.type == "friendly" then
      print("A " .. characterPicked.name .. " approachs you, he looks friendly")
    elseif characterPicked.type == "neutral" then
      print("You see a " .. characterPicked.name .. ", do you want to approach him?")
    elseif characterPicked.type == "hostile" then
      print("A " .. characterPicked.name .. " runs toward you!")
      repeat
        io.write('Do you want to fight "f", hide "h", or run "r"?')
        io.flush()
        enemyReaction = io.read()
      until enemyReaction == "f" or "h" or "r"
      if enemyReaction == "f" then
        print("You decide to fight the " .. characterPicked.name)

  end

end
function startRoom(direction)
  print("You walk into the " .. direction .. " hallway...")
  local stopWhen = math.random(1, 3)
  pickRandomCharacters()
  repeat
    io.write('Press "Enter" to continue ')
    io.flush()
    continueVar = io.read()
  until continueVar ~= nil
end


local answer
local yourName
print("You awaken in a strange hallway...")
print("You look in your pockets...")
print("You find a fuzzy picture, a trowel, and a worn book.")

local continueVar
repeat
  io.write('Press "Enter" to continue ')
  io.flush()
  continueVar = io.read()
until continueVar ~= nil
clearConsole()

print("Holding the items, you decide to look at the photo, it seems familiar...")
print("You realize why, It's you!")
repeat
  io.write("You can't seem to remember your name, so you decide to call yourself (type your name) ")
  io.flush()
  yourName = io.read()
until yourName ~= nil
print(yourName .. ", you like it, it seems perfect...")
print("\n")
print("After saying " .. yourName .. " several times, you remember the other items you are holding.")
print("You decide to read the book...")
print("\n")
print("My name is " .. yourName)
print("I don't know what happened to me, I was running down an ally, next thing I knew, I was clutching my head in pain.")
print("After I took in my suroundings (all I could see was what seemed to be mossy walls, and the light from a dim torch), I realized there was someone beside me.")
print('When "they" saw I was awake, they told me to "Find the keeper", then they left...')

io.write('You decide to dig, choose "d", then press "enter" to dig ')
io.flush()
local choice = io.read()
repeat
  print("You find a sword, it appears to be quite old")
until choice == "d"
local pressedEnter = nil
repeat
  io.write('Press "Enter" to continue')
  io.flush()
  pressedEnter = io.read()
until pressedEnter ~= nil

clearConsole()
repeat
  local choice = nil
  io.write('You decide to walk down the (left/right) hallway? ')
  io.flush()
  choice = io.read()
until choice == "left" or "right"
startRoom(choice)
score = nil
while score > 100 do
  repeat
    local choice = nil
    io.write('You decide to walk down the (left/right) hallway? ')
    io.flush()
    choice = io.read()
  until choice == "left" or "right"
  startRoom(choice)
end
