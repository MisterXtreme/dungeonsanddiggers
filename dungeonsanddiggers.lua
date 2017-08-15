local answer
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
  local whatGotChosen
  repeat
    io.write("Do you want to dig, look at the picture, or read the book? (1, 2, or 3)")
    io.flush()
    whatGotChosen = io.read()
  until whatGotChosen == "1" or "2" or "3"
  if whatGotChosen == "1" then
    print("You found a knife, it is quite large, and seems quite old, you put it in your backpack")
    getKnife = true
  elseif whatGotChosen == "2" then
    print("The picture is fuzzy, but it seems familiar...")
    lookatpic = true
  end
elseif answer == "n" then
  print("Why did you start the game then?")
end
