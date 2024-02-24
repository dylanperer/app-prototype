part of 'chat-input_component.dart';

Widget _chatInputView(ChatInputComponent component, _ChatInputComponentState state, BuildContext context) {
  return Container(
      height: 125,
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
          vertical: 0, horizontal: AppSpacing.space_16),
      child: Row(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(right: AppSpacing.space_8),
              child: Row(
                children: [
                  TouchableOpacityComponent(
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(AppSpacing.space_16),
                        child: const Icon(
                            Icons.image, color: AppColors.stone_400),
                      )),
                  TouchableOpacityComponent(
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(AppSpacing.space_16),
                        child: const Icon(
                          Icons.camera_alt, color: AppColors.stone_400,),
                      )),
                ],
              ),
            ),
          ).animate(controller: state._animationController, autoPlay: false).custom(
            duration: 320.ms,
            curve: Curves.easeInOutSine,
            builder: (context, value, child) => SizedBox(width: 100*value/0.8, child: child,)),
          Expanded(
            child: InputFieldComponent(
              focusNode: state._focusNode,
              suffix: TouchableOpacityComponent(
                  child: Container(
                    padding: const EdgeInsets.all(AppSpacing.space_8),
                    color: Colors.transparent,
                    child: const Icon(Icons.send, color: AppColors.main_500,),
                  )),
              hintText: 'Aa',
            ),
          )
        ],
      ),
    );
}
