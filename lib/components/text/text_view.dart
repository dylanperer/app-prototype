part of 'text_component.dart';

Widget _textView(TextComponent component, BuildContext context) {
  return Text(component.text ?? '',
      textAlign: component.textAlign,
      overflow: component.textOverflow,
      style: TextStyle(
          color: component.color ?? AppColors.stone_600,
          fontSize: component.size ?? AppSpacing.space_16_5,
          fontWeight: component.fontWeight ?? FontWeight.w400));
}
