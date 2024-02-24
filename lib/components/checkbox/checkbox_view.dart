part of 'checkbox_component.dart';

Widget _checkboxView(CheckboxComponent component, _CheckboxComponentState state, BuildContext context) {
  return TouchableOpacityComponent(
      onTap: state.onTap,
      child: Container(
        padding: component.variant_1 != null
            ? const EdgeInsets.symmetric(
                vertical: AppSpacing.space_18, horizontal: AppSpacing.space_16)
            : null,
        decoration: component.variant_1 != null
            ? BoxDecoration(
                color: state._isChecked ? AppColors.main_100 : AppColors.transparent,
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSpacing.max)))
            : null,
        child: Row(
          mainAxisAlignment: component.alignment ?? MainAxisAlignment.end,
          children: [
            if (component.textPrefix != null) component.textPrefix!,
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    constraints: BoxConstraints.tight(const Size(24, 24)),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.stone_350, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)))),
                RepaintBoundary(
                  child: Container(
                          constraints: BoxConstraints.tight(const Size(16, 16)),
                          decoration: const BoxDecoration(
                              color: AppColors.main_500,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))))
                      .animate(target: state._isChecked ? 1 : 0)
                      .fade(duration: 300.ms, curve: Curves.easeInOut),
                ),
              ],
            ),
            if (component.textPostfix != null) const Gap(AppSpacing.space_8),
            if (component.textPostfix != null)
              TextComponent(
                text: component.textPostfix,
              ),
          ],
        ),
      ));
}
