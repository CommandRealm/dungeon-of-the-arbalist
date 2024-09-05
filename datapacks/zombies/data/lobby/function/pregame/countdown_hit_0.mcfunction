##Function for the countdown ending properly. Calls the game start functions.
function lobby:pregame/countdown_end
title @a title [{"text":" ","type":"text"}]
title @a subtitle [{"text":" ","type":"text"}]
function game:start
return 1