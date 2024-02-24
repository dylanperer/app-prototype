part of 'safe-area_component.dart';

Widget _safeAreaView(SafeAreaComponent component, BuildContext context) {
  final double h = MediaQuery.of(context).size.height - AppSpacing.space_64;
  final double safePadding = MediaQuery.of(context).padding.top;

  return GestureDetector(
    onTap: () => FocusScope.of(context).unfocus(),
    child: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          appBar: component.appBar,
          backgroundColor: AppColors.background,
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0, horizontal: AppSpacing.space_16),
                  child: SingleChildScrollView(
                      // keyboardDismissBehavior:
                      //     ScrollViewKeyboardDismissBehavior.onDrag,
                      physics: const BouncingScrollPhysics(),
                      child: SizedBox(
                        height: h - safePadding,
                        child: kIsWeb
                            ? Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: const EdgeInsets.only(top: 60),
                                  constraints:
                                      const BoxConstraints(maxWidth: 760),
                                  child: component.child,
                                ),
                              )
                            : component.child,
                      )))),
          bottomNavigationBar: component.bottomNavigationBar,
          bottomSheet: component.bottomSheet),
    ),
  );
}
