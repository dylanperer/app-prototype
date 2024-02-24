part of 'top-navigator_component.dart';

Widget _topNavigatorView(
    TopNavigatorComponent component, BuildContext context) {
  return AppBar(
      flexibleSpace: Container(
    padding:
        const EdgeInsets.symmetric(horizontal: AppSpacing.space_8, vertical: 0),
    constraints: const BoxConstraints.expand(),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: TouchableOpacityComponent(
              child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.only(
              right: AppSpacing.space_16,
              bottom: AppSpacing.space_16,
            ),
            child: const Icon(
              Icons.arrow_circle_left_rounded,
              color: AppColors.stone_600,
              size: AppSpacing.space_48,
            ),
          )),
        ),
      ],
    ),
  ));
}
