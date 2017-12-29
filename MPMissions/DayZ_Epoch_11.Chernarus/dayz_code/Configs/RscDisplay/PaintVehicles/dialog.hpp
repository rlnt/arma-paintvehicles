// ===========================================================================
// @PAINT VEHICLES
// ===========================================================================
// :: Credits:
//    > Original authors and contributors:
//      @0verHeaT, @Maca134, @Zupa, @raymix
// :: Updated and upgraded for Epoch 1.0.6.1 && 1.0.6.2 by @iben
// :: https://epochmod.com/forum/topic/43949-re-release-v14-paint-vehicles-script-using-single-currency-updated-to-1061-and-upgraded/
// ===========================================================================
class PaintVehicleDialog
{
  idd = 571113;
  movingenable = 0;
  onLoad = "uiNamespace setVariable ['PaintVehicleDialog', _this select 0]";
  class Controls
  {
    class iben_bg: IBEN_BG
    {
      idc = 1800;
      x = 0.323716 * safezoneW + safezoneX;
      y = 0.264902 * safezoneH + safezoneY;
      w = 0.352567 * safezoneW;
      h = 0.446686 * safezoneH;
    };
    class iben_header: IBEN_RscText
    {
      text = "  Vehicle Coloring Tool";
      x = 0.323716 * safezoneW + safezoneX;
      y = 0.264902 * safezoneH + safezoneY;
      w = 0.352567 * safezoneW;
      h = 0.0470196 * safezoneH;
      colorBackground[] = IBENCOL_PRIMARY;
    };
    class iben_colorBGheader1: IBEN_RscText
    {
      text = "Color #1";
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.335431 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_colorBGheader2: IBEN_RscText
    {
      text = "Color #2";
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.5 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_colorBG1: IBEN_RscText
    {
      idc = 5704;
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.358941 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.117549 * safezoneH;
      colorBackground[] = IBENCOL_BG;
    };
    class iben_colorBG2: IBEN_RscText
    {
      idc = 6704;
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.52351 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.117549 * safezoneH;
      colorBackground[] = IBENCOL_BG;
    };
    class iben_TitleRed1: IBEN_RscText
    {
      text = "Red";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.358941 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderRed1: IBEN_RscSlider
    {
      idc = 5700;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.358941 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate;";
    };
    class iben_TitleGreen1: IBEN_RscText
    {
      text = "Green";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.405961 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderGreen1: IBEN_RscSlider
    {
      idc = 5701;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.405961 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate;";
    };
    class iben_TitleBlue1: IBEN_RscText
    {
      text = "Blue";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.45298 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderBlue1: IBEN_RscSlider
    {
      idc = 5702;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.45298 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate;";
    };
    class iben_TitleRed2: IBEN_RscText
    {
      text = "Red";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.52351 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_TitleGreen2: IBEN_RscText
    {
      text = "Green";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.570529 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_TitleBlue2: IBEN_RscText
    {
      text = "Blue";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.617549 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderRed2: IBEN_RscSlider
    {
      idc = 6700;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.52351 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate2;";
    };
    class iben_SliderGreen2: IBEN_RscSlider
    {
      idc = 6701;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.570529 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate2;";
    };
    class iben_SliderBlue2: IBEN_RscSlider
    {
      idc = 6702;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.617549 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate2;";
    };
    class iben_btnPaint: IBEN_RscButton
    {
      text = "Paint";
      x = 0.323716 * safezoneW + safezoneX;
      y = 0.723343 * safezoneH + safezoneY;
      w = 0.0716153 * safezoneW;
      h = 0.0352647 * safezoneH;
      onButtonClick = "call VehicleColorPaint; ((ctrlParent (_this select 0)) closeDisplay 9000);";
    };
    class iben_btnReset: IBEN_RscButton
    {
      text = "Reset";
      x = 0.40084 * safezoneW + safezoneX;
      y = 0.723343 * safezoneH + safezoneY;
      w = 0.0716153 * safezoneW;
      h = 0.0352647 * safezoneH;
      onButtonClick = "call VehicleColorReset; ((ctrlParent (_this select 0)) closeDisplay 9000);";
    };
    class iben_btnClose: IBEN_RscButton
    {
      text = "Close";
      x = 0.604668 * safezoneW + safezoneX;
      y = 0.723343 * safezoneH + safezoneY;
      w = 0.0716153 * safezoneW;
      h = 0.0352647 * safezoneH;
      onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
    };
    class iben_MsgField: IBEN_RscStructuredText
    {
      idc = 5703;
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.664569 * safezoneH + safezoneY;
      w = 0.330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
  };
};
