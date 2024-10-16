gg.alert("Stickman and Gun Mod Menu","Continue") --essentially the introduction

if gg.isVisible(true) 
then 
    gg.setVisible(false)
end 

HOME = gg.choice({
    "Coins Generate", --HOME==1
    "Gems Generate",--HOME==2
    "Infinite Ammo",--HOME==3
    "PLACEHOLDER",--HOME==4
    "PLACEHOLDER",--HOME==1
    "PLACEHOLDER"--HOME==5
},
     nil, "Hello Mr P. Select what option you want")
if HOME == 1
then 
    prompt = gg.prompt({"Type the amount of coins you have currently: (WARNING: if your coin value is low the game may break or not change your coin value)"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD)
    gg.getResults(100)
    prompt = gg.prompt({"Type the amount of coins want:"},nil,{[2]='number'})
    prompt = "EDIT DECRYPTOR VALUE"
    gg.editAll(prompt[1],gg.TYPE_DWORD)
    gg.clearResults(100)
    gg.alert("Done! Please buy something to show the currency on the top left of your screen","OK")
end
if HOME == 2
then 
    prompt = gg.prompt({"Type the amount of gems you have currently: (WARNING: if your gem value is low the game may break or not change your gem value)"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD)
    gg.getResults(100)
    prompt = gg.prompt({"Type the amount of gems you want:"},nil,{[2]='number'})
    prompt = "EDIT DECRYPTOR VALUE"
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



    



    
