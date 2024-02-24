part of 'rounded-button_component.dart';

Widget _roundedButtonView(
    RoundedButtonComponent component, BuildContext context) {
  return TouchableOpacityComponent(
      onTap: component.onTap,
      child: Container(
          decoration: BoxDecoration(
              color: component.color ?? AppColors.main_500,
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSpacing.space_80))),
          width: AppSpacing.space_80,
          height: AppSpacing.space_80,
          child: Icon(
            component.icon ?? Icons.chevron_right_rounded,
            size: AppSpacing.space_64,
            color: AppColors.neutral_100,
          )));
}
