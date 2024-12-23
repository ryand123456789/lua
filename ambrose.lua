gg.alert("Stickman and Gun Mod Menu","Continue") --essentially the introduction

if gg.isVisible(true) 
then 
    gg.setVisible(false)
end 

HOME = gg.choice({
    "Coins Generate", --HOME==1
    "Gems Generate",--HOME==2
    "Invincibility",--HOME==3
    "Infinite Ammo ",--HOME==4
    "Narrow Down Results",--HOME==5
    "Infinite Ammo Finalize"--HOME==6
    "Edit Skill Points" --HOME==7
    "Finalize" --HOME==8
    "Cheat Score Points" --HOME==9
},
     nil, "Hello Mr P. Select what option you want")
if HOME == 1
then 
    prompt = gg.prompt({"Type the amount of coins you have currently: (WARNING: if your coin value is low the game may break or not change your coin value)"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD,true)
    gg.getResults(100)
    prompt = gg.prompt({"Type the amount of coins want:"},nil,{[1]='number'})
    prompt = "EDIT DECRYPTOR VALUE"
    gg.editAll(prompt[1],gg.TYPE_DWORD)
    gg.clearResults(100)
    gg.alert("Done! Please buy something to show the currency on the top left of your screen","OK")
end
if HOME == 2
then 
    prompt = gg.prompt({"Type the amount of gems you have currently: (WARNING: if your gem value is low the game may break or not change your gem value)"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD,true)
    gg.getResults(100)
    prompt = gg.prompt({"Type the amount of gems you want:"},nil,{[1]='number'})
    prompt = "EDIT DECRYPTOR VALUE"
    gg.editAll(prompt[1],gg.TYPE_DWORD)
    gg.clearResults(100)
    gg.alert("Done! Please buy something to show the currency on the top left of your screen","OK")
end
if HOME == 3
then 
    prompt = gg.prompt({"Type the amount of HP you have currently have: (WARNING: if your HP value is low the game may break) It is recommended your HP value be a complex number like 987 or 391"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD,true)
    mouse = gg.getResults(100)
    prompt = "EDIT DECRYPTOR VALUE" --If needed

    for i, mouse in ipairs(t) do --May need to configure
            mouse.freeze = true
    end

    gg.clearResults(100)
    gg.alert("Done!" ,"OK")
end
if HOME == 4
then
    prompt = gg.prompt({"First step: Enter your current ammo amount: When done, shoort your gun; open the script again and select Narrow Down Results, and enter your new ammo amount. When done with all, press Infinite Ammo Finalize."},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD,true)
    --search for DWORD value (space in mem)
    gg.alert("Done! Either narrow down your results or go for finalization" ,"OK")
end
if HOME == 5
then
    prompt = gg.prompt({"Narrow down your results. This works for any refineable module. Enter the number you beckon."},nil,{[1]='number'})
    gg.refineNumber(prompt[1],gg.TYPE_DWORD,true)
    gg.alert("Done!" ,"OK")
end
if HOME == 6
then
    gg.editAll(999999)
    gg.alert("Done!" ,"OK")
end
if HOME == 7
then
    prompt = gg.prompt({"To change your Skill Points Value, Enter the number of skill points you have currently. You will need to earn another skill point, then refine the search using Narrow Down Results since Skill points is such a broad value. Finally, finalize the change once you've narrowed it down"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD,true)
    gg.alert("Search begun!" ,"OK")
end
if HOME == 8
then
    prompt = gg.prompt({"Finalize your results, enter the number you want to change your results to"},nil,{[1]='number'})
    gg.editAll(9999)
    gg.alert("Done!" ,"OK")
end
if HOME == 9
then
    prompt = gg.prompt({"Type the score you have currently: (WARNING: if your score is low the game may break or not change your score value)"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD,true)
    gg.getResults(100)
    prompt = gg.prompt({"Type the amount of score you want:"},nil,{[2]='number'})
    prompt = "EDIT DECRYPTOR VALUE"
    gg.editAll(prompt[1],gg.TYPE_DWORD)
    gg.clearResults(100)
    gg.alert("Done!","OK")
end