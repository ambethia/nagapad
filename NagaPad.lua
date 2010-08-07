local usebar = BOTTOMLEFT_ACTIONBAR_PAGE; -- 6

local actionbar = CreateFrame("Frame", "NagaPadActionBar", UIParent, "SecureHandlerStateTemplate");
actionbar:SetAttribute("actionpage", usebar);
actionbar:SetPoint("CENTER"); 

local NUM_ROWS = 4;
local NUM_COLS = 3;

for row = 1, NUM_ROWS do
  for col = 1, NUM_COLS do
    local id = ((NUM_COLS * row) + col) - NUM_COLS;
    local button = CreateFrame("CheckButton", "NagaPadActionBarButton"..id, actionbar, "ActionBarButtonTemplate"); 
    button:SetPoint("TOPLEFT", actionbar, "TOPLEFT", button:GetWidth()*(col-1), (button:GetHeight()*(row-1)*-1));
    button:SetID(id);
    button:SetAttribute("useparent-actionpage", true);
    button:UnregisterEvent("UPDATE_BINDINGS"); -- This hides the hotkey text for now, good enough.
  end
end
