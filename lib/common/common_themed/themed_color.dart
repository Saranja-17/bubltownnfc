import 'dart:ui';

class BrandTheme {
  static double borderRadius = 8;

  static String brandFont = "LatoBlack";
  static String loginFont = "Roboto"; // for social media login button
  static String creditCardFont = "CreditCard";

  static Color shadowColor = const Color(0xFFB7B7B7).withOpacity(.16);

  static Color keyLight = HexColor('#FFFFFF'); // White
  static Color keyDark = HexColor('#2E2E2E');

  //fav colors
  static Color favBrandColorDiscovery = HexColor('#FB2D9D');
  static Color favBrandColorShoping = HexColor('#AA00AA');
  static Color favBrandDarkDiscovery = const Color(0xff3874AD);
  static Color favBrandDarkShoping = HexColor('#550055');
  static Color favBrandBgDiscovery = HexColor('#3874AD');
  static Color favBrandBgShoping = HexColor('#FF00FF');

  //brand colors
  static Color carbonGray = HexColor('#625D5D');
  Color brandColor = favBrandColorDiscovery;
  Color brandDark = favBrandDarkDiscovery;
  static Color brandLight = HexColor('#e3bceb');
  static Color brandLight2 = HexColor('#bceaeb');
  Color brandBg = favBrandBgDiscovery;
  static Color vendorBrand = const Color(0xff00AAAA);
  static Color lightYellow = HexColor('#AFD8AB');

  // discovery color
  // static Color discoveryModeColor = Color(0xff007AC2);24295E

  static Color shadowDark = HexColor('#D6D6D6');
  static Color shadowLight = HexColor('#F7F7F7');
  static Color shadwoAsh = HexColor('#708090');
  // static Color shadowColor = Color(0xFFB7B7B7).withOpacity(.16);

  static Color darkFontColor = HexColor('#2B002B');
  static Color dangerColor = HexColor('#F32013'); // Red
  static Color warningColor = HexColor('#EFB821'); // Yellow
  static Color infoColour = HexColor('#5bc0de'); //light blue
  static Color borderColor = HexColor('#a1a7b8');

  //social media color
  static Color facebook = HexColor('#3b5998');
  static Color facebookNew = HexColor('#5890FF');
  static Color twitter = HexColor('#1da1f2');
  static Color youtube = HexColor('#ff0000');
  static Color whatsApp = HexColor('#25d366');
  static Color linkedin = HexColor('#0a66c2');
  static Color instagram = HexColor('#ffdc7d');

  // chat buble color for sender
  static Color sendBublColor = HexColor('#f7dff7');
  // Font Weight
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.w600;
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
