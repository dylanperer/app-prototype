part of 'bio_screen.dart';

Widget _bioView(BioScreen screen, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.space_72, horizontal: 0),
    child: Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            TextComponent(
              text: 'Introduce yourself.',
              textAlign: TextAlign.center,
              size: AppSpacing.space_19,
              fontWeight: FontWeight.w800,
            ),
            Gap(AppSpacing.space_4),
            InfoTextComponent(
              text:
                  "Let everyone know why you're here and what you're looking for.",
            )
          ],
        ),
        Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                TextAreaComponent(),
                ErrorComponent(error: screen.error)
              ],
            )),
        const SizedBox(
          width: AppSpacing.space_80,
          height: AppSpacing.space_80,
        )
      ],
    ),
  );
}
