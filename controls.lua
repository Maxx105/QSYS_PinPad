-- Buttons 
table.insert(ctrls, {
  Name             = "Numbers",
  ControlType      = "Button",
  ButtonType       = "Trigger",
  Count            = 12,
  UserPin          = true,
  PinStyle         = "Both"
})
table.insert(ctrls, {
  Name             = "Clear",
  ControlType      = "Button",
  ButtonType       = "Trigger",
  Count            = 1,
  UserPin          = true,
  PinStyle         = "Both",
  Icon             = "X"
})
table.insert(ctrls, {
  Name             = "Backspace",
  ControlType      = "Button",
  ButtonType       = "Trigger",
  Count            = 1,
  UserPin          = true,
  PinStyle         = "Both",
  Icon             = "Arrow Left"
})

-- Text
table.insert(ctrls, {
  Name             = "Pin",
  ControlType      = "Text",
  Count            = 1,
  UserPin          = true,
  PinStyle         = "Both"
})