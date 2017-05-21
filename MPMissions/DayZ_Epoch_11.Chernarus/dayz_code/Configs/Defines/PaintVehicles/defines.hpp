// ===========================================================================
// CUSTOM COLOR SCHEME DEFINES
// ===========================================================================
#define COLOR_PRIMARY 0.439,0.408,0.369,1
#define COLOR_BGDARK 0.102,0.102,0.102,0.7
#define COLOR_BGLIGHT 0.102,0.102,0.102,0.7
// ===========================================================================
class iben_RscText
{
  access = 0;
  type = 0;
  idc = -1;
  colorBackground[] = {0,0,0,0};
  colorText[] = {1,1,1,1};
  text = "";
  fixedWidth = 0;
  x = 0;
  y = 0;
  h = 0.037;
  w = 0.3;
  style = 0;
  shadow = 0;
  font = "Zeppelin32";
  SizeEx = 0.03921;
};
class iben_ColorBG
{
  access = 0;
  type = 0;
  idc = -1;
  colorBackground[] = {COLOR_BGLIGHT};
  colorText[] = {0,0,0,0};
  text = "";
  fixedWidth = 0;
  x = 0;
  y = 0;
  h = 0.037;
  w = 0.3;
  style = 0;
  shadow = 0;
  font = "Zeppelin32";
  SizeEx = 0.03921;
};
class iben_RscStructuredText
{
  access = 0;
  type = 13;
  idc = -1;
  style = 0;
  colorText[] = {1,1,1,1};
  class Attributes
  {
    font = "Zeppelin32";
    color = "#FFE9A3";
    align = "center";
    shadow = 0;
  };
  x = 0;
  y = 0;
  h = 0.035;
  w = 0.1;
  text = "";
  size = 0.03921;
  shadow = 0;
};
class iben_RscSlider
{
  access = 0;
  type = 3;
  style = 1024;
  w = 0.3;
  color[] = {1,1,1,0.8};
  colorActive[] = {1,1,1,1};
  shadow = 0;
  h = 0.025;
};
class iben_RscButton
{
  access = 0;
  type = 1;
  text = "";
  colorText[] = {1,1,1,1};
  colorDisabled[] = {0.4,0.4,0.4,1};
  colorBackground[] = {COLOR_PRIMARY};
  colorBackgroundDisabled[] = {COLOR_PRIMARY};
  colorBackgroundActive[] = {COLOR_PRIMARY};
  colorFocused[] = {COLOR_PRIMARY};
  colorShadow[] = {0,0,0,0};
  colorBorder[] = {0,0,0,0};
  soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
  soundPush[] = {"\ca\ui\data\sound\new1",0,0};
  soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
  soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
  style = 2;
  x = 0;
  y = 0;
  w = 0.095589;
  h = 0.039216;
  shadow = 0;
  font = "Zeppelin32";
  sizeEx = 0.03921;
  offsetX = 0.003;
  offsetY = 0.003;
  offsetPressedX = 0.002;
  offsetPressedY = 0.002;
  borderSize = 0;
};
