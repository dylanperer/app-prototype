part of 'info-text_component.dart';

Widget _infoTextView(InfoTextComponent component, BuildContext context) {
  return Stack(children: [
    const Positioned(
        top: -2,
        child: Icon(
          Icons.info_outline_rounded,
          color: AppColors.stone_350,
        )),
    Padding(
      padding: const EdgeInsets.only(left: 28),
      child: TextComponent(
        text: component.text,
        textAlign: TextAlign.left,
        size: AppSpacing.space_15,
        color: AppColors.stone_600,
      ),
    )
  ]);
}
