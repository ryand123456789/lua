gg.alert("Tom P ModMenu","Continue") --essentially the introduction

if gg.isVisible(true) then gg.setVisibility(false) end 

HOME = gg.choice({
    "Coins Generate",
    "Gems Generate"}, nil, "Hello Mr P.")
if HOME == 1
then 
    prompt = gg.prompt({"Type the amount of coins you have currently:"},nil,{[1]='number'})
    gg.searchNumber(prompt[1],gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll('2000000000',gg.TYPE_DWORD)
    gg.clearResults(100)
end
    --search for DWORD value (space in mem)



    
