import 'dart:math';
import 'dart:ui';

class AppColors {
  AppColors._();

  static const Color main_100 = Color(0xFFF3F3FD);
  static const Color main_200 = Color(0xffe9e6ff);
  static const Color main_300 = Color(0xffd3ccff);
  static const Color main_400 = Color(0xFF9180FF);
  static const Color main_500 = Color(0xFF7965FF);
  static const Color main_600 = Color(0x00ffffff);
  static const Color main_700 = Color(0x00ffffff);
  static const Color main_800 = Color(0x00ffffff);
  static const Color main_900 = Color(0x00ffffff);

  static const Color secondary_100 = Color(0x00ffffff);
  static const Color secondary_200 = Color(0x00ffffff);
  static const Color secondary_300 = Color(0x00ffffff);
  static const Color secondary_400 = Color(0x00ffffff);
  static const Color secondary_500 = Color(0xFF000066);
  static const Color secondary_600 = Color(0x00ffffff);
  static const Color secondary_700 = Color(0x00ffffff);
  static const Color secondary_800 = Color(0x00ffffff);
  static const Color secondary_900 = Color(0x00ffffff);

  static const Color stone_100 = Color(0xFFf5f5f4);
  static const Color stone_150 = Color(0xFFefefee);
  static const Color stone_200 = Color(0xFFe7e5e4);
  static const Color stone_300 = Color(0xFFd6d3d1);
  static const Color stone_350 = Color(0xFFcecbc9);
  static const Color stone_400 = Color(0xFFa8a29e);
  static const Color stone_500 = Color(0xFF78716c);
  static const Color stone_600 = Color(0xFF57534e);
  static const Color stone_700 = Color(0xFF44403c);
  static const Color stone_800 = Color(0xFF292524);
  static const Color stone_900 = Color(0xFF1c1917);
  static const Color stone_950 = Color(0xFF0c0a09);

  static const Color green_500 = Color(0xff22c55e);
  static const Color green_400 = Color(0xff4ade80);

  static const Color neutral_100 = Color(0xFFFFFFFF);
  static const Color transparent = Color(0x00000000);

  static const pastel_01 = Color(0xFFFFE5E5);
  static const pastel_02 = Color(0xFFE0AED0);
  static const pastel_03 = Color(0xFFAC87C5);
  static const pastel_04 = Color(0xFF756AB6);
  static const pastel_05 = Color(0xFF7ED7C1);
  static const pastel_06 = Color(0xFFF0DBAF);
  static const pastel_08 = Color(0xFFDC8686);
  static const pastel_09 = Color(0xFFECE3CE);
  static const pastel_10 = Color(0xFF739072);
  static const pastel_11 = Color(0xFF4F6F52);
  static const pastel_12 = Color(0xFF3A4D39);
  static const pastel_13 = Color(0xFFECEE81);
  static const pastel_14 = Color(0xFF8DDFCB);
  static const pastel_15 = Color(0xFF82A0D8);
  static const pastel_16 = Color(0xFFEDB7ED);

  static ColorContrast generateRandomColorContrast(){
    final colorContrasts = <ColorContrast>[
      ColorContrast(stone_900, pastel_01),
      ColorContrast(stone_900, pastel_02),
      ColorContrast(neutral_100, pastel_03),
      ColorContrast(neutral_100, pastel_04),
      ColorContrast(stone_900, pastel_05),
      ColorContrast(stone_900, pastel_06),
      ColorContrast(neutral_100, pastel_08),
      ColorContrast(stone_900, pastel_09),
      ColorContrast(neutral_100, pastel_10),
      ColorContrast(neutral_100, pastel_11),
      ColorContrast(neutral_100, pastel_12),
      ColorContrast(stone_900, pastel_13),
      ColorContrast(stone_900, pastel_14),
      ColorContrast(neutral_100, pastel_15),
      ColorContrast(stone_900, pastel_16),
    ];

    final random = Random();
    final randomColorContrast = colorContrasts[random.nextInt(colorContrasts.length)];

    return randomColorContrast;
  }
}

class ColorContrast{
  final Color foregroundColor;
  final Color backgroundColor;


  ColorContrast(this.foregroundColor, this.backgroundColor);
}
