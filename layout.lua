local CurrentPage = PageNames[props["page_index"].Value]
local pinPadChars = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "*", "0", "#"}

-- Starting coordinates of top left pin pad button.
local ColOne = 44
local RowOne = 74

-- Space between colums and rows on pin pad.
local ColSpacing = 42
local RowSpacing = 32

function PinPadPositions()
  local PosTbl = {}
  for i = 1, 4 do 
    for j = 1, 3 do 
      table.insert(PosTbl, {ColOne + ColSpacing*(j-1), RowOne + RowSpacing*(i-1)})
    end
  end
  return PosTbl
end

if CurrentPage == "PinPad" then
  -- Graphics
  table.insert(graphics,{
    Type             = "GroupBox",
    Fill             = {228,228,228},
    StrokeWidth      = 0,
    ZOrder           = -100,
    Position         = {0,0},
    Size             = {216,215}
  })
  table.insert(graphics,{
    Type             = "Header",
    Text             = "Q-SYS Pin Pad",
    HTextAlign       = "Center",
    Font             = "Roboto",
    FontSize         = 20,
    Position         = {6,8},
    Size             = {204,25}
  })

  -- Controls layout
  layout["Pin"] = {
    PrettyName       = "Pin", 
    Style            = "Text", 
    Position         = {12,43}, 
    Size             = {192,16}, 
    ZOrder           = -99,
    FontSize         = 10
  }
  layout["Backspace"] = {
    PrettyName       = "Backspace", 
    Style            = "Button", 
    Position         = {156,43}, 
    Size             = {24,16}, 
    Margin           = 2,
    Color            = {255,255,255}, 
    UnlinkOffColor   = true, 
    OffColor         = {124,124,124}
  }
  layout["Clear"] = {
    PrettyName       = "Clear", 
    Style            = "Button", 
    Position         = {180,43}, 
    Size             = {24,16}, 
    Margin           = 2,
    Color            = {255,255,255}, 
    UnlinkOffColor   = true, 
    OffColor         = {124,124,124}
  }

  for i, v in ipairs(pinPadChars) do
    layout["Numbers "..i] = {
      PrettyName     = v, 
      Style          = "Button", 
      Legend         = v, 
      Position       = PinPadPositions()[i], 
      Size           = {40,30}, 
      Color          = {255,255,255}, 
      UnlinkOffColor = true, 
      OffColor       = {124,124,124}, 
      FontSize       = 14
    }
  end

end