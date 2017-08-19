direction = nil
function pickRandomCharacters()
  local characters = {{name = "salesman", type = "friendly"}, {name = "wiseman", type = "friendly"}, {name = "weaponsmith", type = "friendly"}, {name = "stranger", type = "neutral"}, {name = "shifty salesman", type = "neutral"}, {name = "walker", type = "hostile"}, {name = "knight in dark armour", type = "hostile"}, {name = "archer", type = "hostile"}}
  local characterPicked = characters[math.random(1, #characters)]
  --[[
  local genders = {"male", "female"}
  local characterGender = math.random(1, #genders)
  if characterGender == "female" then
    if characterPicked.type == "friendly" then
      print("A " .. characterPicked.name .. " approachs you, she looks friendly")
    elseif characterPicked.type == "neutral" then
      print("You see a " .. characterPicked.name .. ", do you want to approach her?")
    elseif characterPicked.type == "hostile" then
      print("A " .. characterPicked.name .. " runs toward you!")
    end
  elseif characterGender == "male" then
    if characterPicked.type == "friendly" then
      print("A " .. characterPicked.name .. " approachs you, he looks friendly")
    elseif characterPicked.type == "neutral" then
      print("You see a " .. characterPicked.name .. ", do you want to approach him?")
    elseif characterPicked.type == "hostile" then
      print("A " .. characterPicked.name .. " runs toward you!")
    end
    --]]
    if characterPicked.type == "friendly" then
      print("A " .. characterPicked.name .. " approachs you, he looks friendly")
    elseif characterPicked.type == "neutral" then
      print("You see a " .. characterPicked.name .. ", do you want to approach him?")
    elseif characterPicked.type == "hostile" then
      print("A " .. characterPicked.name .. " runs toward you!")
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
while true do
  startRoom("left")
end
