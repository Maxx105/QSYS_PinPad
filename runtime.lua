local Numbers   = Controls.Numbers
local Backspace = Controls.Backspace
local Clear     = Controls.Clear
local Pin       = Controls.Pin
Digits = {"1","2","3","4","5","6","7","8","9","*","0","#"}

function DoClear()
  Pin.String = ""
end

function DoBackspace()
  Pin.String = string.sub(Pin.String, 1, -2)
end

for i, v in ipairs(Digits) do
  Numbers[i].EventHandler = function()
    Pin.String = Pin.String..v
  end
end
Clear.EventHandler = DoClear
Backspace.EventHandler = DoBackspace