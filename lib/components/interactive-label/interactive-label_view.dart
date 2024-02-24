part of 'interactive-label_component.dart';

Widget _interactiveLabelView(
    InteractiveLabelComponent component, BuildContext context) {
  return TouchableOpacityComponent(
      onTap: component.onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.space_8,
          ),
          color: Colors.transparent,
          child: TextComponent(
            text: component.text,
            color: AppColors.main_400,
            fontWeight: FontWeight.w700,
          )));
}
