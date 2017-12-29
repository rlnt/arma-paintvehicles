// ===========================================================================
// DEFINES FOR IBEN'S SCRIPTS
// ===========================================================================

// ===========================================================================
// GENERIC CLASSES
// ===========================================================================
class IBEN_RscText
{
  access = 0;
  idc = -1;
  type = CT_STATIC;
  style = ST_LEFT;
  colorBackground[] = IBENCOL_TRANSPARENT;
  colorText[] = IBENCOL_WHITE;
  text = "";
  fixedWidth = 0;
  x = 0; y = 0; h = 0.037; w = 0.3;
  shadow = 0;
  colorShadow[] = IBENCOL_TRANSPARENT;
  font = IBENFONT_PRIMARY;
  SizeEx = IBENSIZE_EX;
  linespacing = 0;
};
// ---------------------------------------------------------------------------
class IBEN_RscStructuredText
{
  access = 0;
  idc = -1;
  type = CT_STRUCTURED_TEXT;
  style = 0;
  colorText[] = {0,0,0,1};
  class Attributes
  {
    font = IBENFONT_PRIMARY;
    color = "#FFFFFF";
    align = "left";
    valign = "middle";
    shadow = 0;
  };
  x = 0; y = 0; h = 0.035; w = 0.1;
  text = "";
  size = IBENSIZE_EX;
  shadow = 0;
};
// ---------------------------------------------------------------------------
class IBEN_RscSlider
{
  access = 0;
  type = CT_SLIDER;
  style = 1024;
  w = 0.3;
  color[] = {1,1,1,0.8};
  colorActive[] = IBENCOL_WHITE;
  shadow = 0;
  h = 0.025;
};
// ---------------------------------------------------------------------------
class IBEN_RscButton
{
  access = 0;
  idc = -1;
  type = CT_BUTTON;
  style = 2;
  text = "";
  colorText[] = IBENCOL_WHITE;
  colorDisabled[] = {0.4,0.4,0.4,1};
  colorBackground[] = IBENCOL_PRIMARY;
  colorBackgroundDisabled[] = IBENCOL_PRIMARY;
  colorBackgroundActive[] = IBENCOL_PRIMARY;
  colorFocused[] = IBENCOL_PRIMARY;
  colorShadow[] = IBENCOL_TRANSPARENT;
  colorBorder[] = IBENCOL_TRANSPARENT;
  soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
  soundPush[] = {"\ca\ui\data\sound\new1",0,0};
  soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
  soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
  x = 0; y = 0; w = 0.095589; h = 0.039216; shadow = 0;
  font = IBENFONT_PRIMARY;
  sizeEx = IBENSIZE_EX;
  offsetX = 0.003; offsetY = 0.003;
  offsetPressedX = 0.002; offsetPressedY = 0.002;
  borderSize = 0;
};
// ---------------------------------------------------------------------------

// ===========================================================================
// CUSTOM & DERIVED CLASSES
// ===========================================================================

// ---------------------------------------------------------------------------
// BACKGROUND LAYERS
// ---------------------------------------------------------------------------
class IBEN_BG {
  access = 0;
  idc = -1;
  type = CT_STATIC;
  style = 0;
  text = "";
  font = IBENFONT_PRIMARY;
  sizeEx = 0.0;
  shadow = 0;
  x = 0.1; y = 0.1; w = 0.1; h = 0.1;
  colorText[] = IBENCOL_TRANSPARENT;
  colorbackground[] = IBENCOL_BG;
};
