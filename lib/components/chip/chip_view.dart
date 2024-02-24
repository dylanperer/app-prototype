part of 'chip_component.dart';

Widget _chipView(ChipComponent component, BuildContext context) {
  return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_6, horizontal: AppSpacing.space_8),
          decoration: BoxDecoration(
              color: AppColors.main_500,
              border: Border.all(width: 1.2, color: AppColors.main_400),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSpacing.max))),
          child: Row(
            children: [
              TextComponent(
                text: component.text,
                size: AppSpacing.space_16,
                fontWeight: FontWeight.w700,
                color: AppColors.neutral_100,
              ),
              if (component.onDelete != null)
                Padding(
                    padding: const EdgeInsets.only(left: AppSpacing.space_4),
                    child: TouchableOpacityComponent(
                      child: const Icon(
                        Icons.cancel,
                        size: AppSpacing.space_20,
                        color: AppColors.neutral_100,
                      ),
                      onTap: () => component.onDelete!(),
                    ))
            ],
          ),
        ),
      ],
    );
}
