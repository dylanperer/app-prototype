part of 'radio-button-group_component.dart';

Widget _radioButtonGroupView(RadioButtonGroupComponent component,
    _RadioButtonGroupComponentState state, BuildContext context) {
  return Column(
    children: state._appRadios
        .map(
          (c) => Column(
            children: [
              CheckboxComponent(
                isDefaultChecked: c.isActive,
                textPrefix: TextComponent(
                  text: c.label,
                  fontWeight: FontWeight.w600,
                ),
                alignment: MainAxisAlignment.spaceBetween,
                variant_1: true,
                onChange: c.onChange,
              ),
              const Gap(AppSpacing.space_16),
            ],
          ),
        )
        .toList(),
  );
}
