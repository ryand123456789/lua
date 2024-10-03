gg.alert("WELCOME TO THE: Tom P ModMenu","Continue") --essentially the introduction

if gg.isVisible(true) 
then 
    gg.setVisible(false)
end 

HOME = gg.choice({
    "Coins Generate",
    "Gems Generate",
    "Free Container in Shop Section"},
     nil, "Hello Mr P.")
if HOME == 1
then 
    prompt = gg.prompt({"Type the amount of coins you have currently: (WARNING: if your coin value is near 0 the game may break or not change your coin value)"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD)
    gg.getResults(100)
    prompt = gg.prompt({"Type the amount of coins want:"},nil,{[2]='number'})
    gg.editAll(prompt[1],gg.TYPE_DWORD)
    gg.clearResults(100)
    gg.alert("Done! Please buy something to show the currency on the top left of your screen","OK")
end
if HOME == 2
then 
    prompt = gg.prompt({"Type the amount of gems you have currently: (WARNING: if your gem value is near 0 the game may break or not change your gem value)"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD)
    gg.getResults(100)
    prompt = gg.prompt({"Type the amount of gems want:"},nil,{[2]='number'})
    gg.editAll(prompt[1],gg.TYPE_DWORD)
    gg.clearResults(100)
    gg.alert("Done! Please buy something to show the currency on the top left of your screen","OK")
end
if HOME == 3
then 
    gg.alert("Before operating please buy the Garage if you have not already.","OK")
    gg.alert("Done!","OK")
    gg.searchNumber(500,gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll('0',gg.TYPE_DWORD)
    gg.clearResults(100)
end
    --search for DWORD value (space in mem)



    
