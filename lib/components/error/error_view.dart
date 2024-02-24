part of 'error_component.dart';

Widget _errorView(ErrorComponent component, _ErrorComponentState state,
    BuildContext context) {
  return RepaintBoundary(
      child: Container(
    child: TextComponent(
      text: component.error ?? "-",
      color: component.error != null ? AppColors.red_400 : Colors.transparent,
    )
        .animate(controller: state._textAnimationController)
        .moveX(duration: 50.ms, begin: 0, end: 5, curve: Curves.linear)
        .then()
        .moveX(duration: 50.ms, begin: 5, end: 0, curve: Curves.linear)
        .then()
        .moveX(duration: 50.ms, begin: 0, end: -5, curve: Curves.linear)
        .then()
        .moveX(duration: 50.ms, begin: -5, end: 0, curve: Curves.linear),
  ));
}
