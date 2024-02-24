part of 'touchable-opacity_component.dart';

Widget _touchableOpacityView(TouchableOpacityComponent component, _TouchableOpacityComponentState state, BuildContext context) {
  return RepaintBoundary(
      child: GestureDetector(
              onTap: (){
                state._onTap();
              },
              onTapDown: (details) => state._onTapDown(),
              onTapUp: (x) => state._animationController.reverse(),
              onTapCancel: state._animationController.reverse,
              child: component.child)
          .animate(controller: state._animationController, autoPlay: false)
          .fade(end: 0.5, duration: 175.ms, curve: Curves.linear),
    );
}
