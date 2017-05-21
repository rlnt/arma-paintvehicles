class PaintVehicleDialog
{
  idd = 571113;
  movingenable = 0;
  onLoad = "uiNamespace setVariable ['PaintVehicleDialog', _this select 0]";
  class Controls
  {
    class iben_bg: iben_RscText
    {
      idc = 1800;
      x = 0.323716 * safezoneW + safezoneX;
      y = 0.264902 * safezoneH + safezoneY;
      w = 0.352567 * safezoneW;
      h = 0.446686 * safezoneH;
      colorBackground[] = {COLOR_BGDARK};
    };
    class iben_header: iben_RscText
    {
      idc = -1;
      text = "  Vehicle Coloring Tool";
      x = 0.323716 * safezoneW + safezoneX;
      y = 0.264902 * safezoneH + safezoneY;
      w = 0.352567 * safezoneW;
      h = 0.0470196 * safezoneH;
      colorBackground[] = {COLOR_PRIMARY};
    };
    class iben_colorBGheader1: iben_RscText
    {
      idc = -1;
      text = "Color #1";
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.335431 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_colorBGheader2: iben_RscText
    {
      idc = -1;
      text = "Color #2";
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.5 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_colorBG1: iben_ColorBG
    {
      idc = 5704;
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.358941 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.117549 * safezoneH;
    };
    class iben_colorBG2: iben_ColorBG
    {
      idc = 6704;
      x = 0.577124 * safezoneW + safezoneX;
      y = 0.52351 * safezoneH + safezoneY;
      w = 0.0771241 * safezoneW;
      h = 0.117549 * safezoneH;
    };
    class iben_TitleRed1: iben_RscText
    {
      idc = -1;
      text = "Red";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.358941 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderRed1: iben_RscSlider
    {
      idc = 5700;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.358941 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate;";
    };
    class iben_TitleGreen1: iben_RscText
    {
      idc = -1;
      text = "Green";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.405961 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderGreen1: iben_RscSlider
    {
      idc = 5701;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.405961 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate;";
    };
    class iben_TitleBlue1: iben_RscText
    {
      idc = -1;
      text = "Blue";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.45298 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderBlue1: iben_RscSlider
    {
      idc = 5702;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.45298 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate;";
    };
    class iben_TitleRed2: iben_RscText
    {
      idc = -1;
      text = "Red";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.52351 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_TitleGreen2: iben_RscText
    {
      idc = -1;
      text = "Green";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.570529 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_TitleBlue2: iben_RscText
    {
      idc = -1;
      text = "Blue";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.617549 * safezoneH + safezoneY;
      w = 0.0330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
    class iben_SliderRed2: iben_RscSlider
    {
      idc = 6700;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.52351 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate2;";
    };
    class iben_SliderGreen2: iben_RscSlider
    {
      idc = 6701;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.570529 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate2;";
    };
    class iben_SliderBlue2: iben_RscSlider
    {
      idc = 6702;
      x = 0.367787 * safezoneW + safezoneX;
      y = 0.617549 * safezoneH + safezoneY;
      w = 0.198319 * safezoneW;
      h = 0.0235098 * safezoneH;
      onSliderPosChanged = "call VehicleColorUpdate2;";
    };
    class iben_btnPaint: iben_RscButton
    {
      idc = -1;
      text = "Paint";
      x = 0.323716 * safezoneW + safezoneX;
      y = 0.723343 * safezoneH + safezoneY;
      w = 0.0716153 * safezoneW;
      h = 0.0352647 * safezoneH;
      onButtonClick = "call VehicleColorPaint; ((ctrlParent (_this select 0)) closeDisplay 9000);";
    };
    class iben_btnReset: iben_RscButton
    {
      idc = -1;
      text = "Reset";
      x = 0.40084 * safezoneW + safezoneX;
      y = 0.723343 * safezoneH + safezoneY;
      w = 0.0716153 * safezoneW;
      h = 0.0352647 * safezoneH;
      onButtonClick = "call VehicleColorReset; ((ctrlParent (_this select 0)) closeDisplay 9000);";
    };
    class iben_btnClose: iben_RscButton
    {
      idc = -1;
      text = "Close";
      x = 0.604668 * safezoneW + safezoneX;
      y = 0.723343 * safezoneH + safezoneY;
      w = 0.0716153 * safezoneW;
      h = 0.0352647 * safezoneH;
      onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
    };
    class iben_MsgField: iben_RscStructuredText
    {
      idc = 5703;
      text = "";
      x = 0.334734 * safezoneW + safezoneX;
      y = 0.664569 * safezoneH + safezoneY;
      w = 0.330532 * safezoneW;
      h = 0.0235098 * safezoneH;
    };
  };
};
