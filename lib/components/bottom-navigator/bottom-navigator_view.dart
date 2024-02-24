part of 'bottom-navigator_component.dart';

Widget _bottomNavigatorView(BottomNavigatorComponent component, _BottomNavigatorComponentState state, BuildContext context) {
  return SafeAreaComponent(
       appBar: const TopNavigatorComponent(),
        bottomNavigationBar: state._showBottomNav ? Container(
          color: AppColors.transparent,
          constraints: const BoxConstraints.expand(height: 125),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space_16, vertical: AppSpacing.space_36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavButtonComponent(
                  icon: Icons.home_filled,
                  text: 'Discover',
                  onTap: () => state._onTap(Screen.discover),
                  isActive: state._currentScreen == Screen.discover,
                  fitSize: 1.3,
                ),
                NavButtonComponent(
                  icon: Icons.favorite,
                  text: 'Favorite',
                  onTap: () => state._onTap(Screen.favorite),
                  isActive: state._currentScreen == Screen.favorite,
                  fitSize: 1.4,
                ),
                NavButtonComponent(
                  icon: Icons.chat_bubble,
                  text: 'Messages',
                  onTap: () => state._onTap(Screen.messaging),
                  isActive: state._currentScreen == Screen.messaging,
                  fitSize: 1.1,
                ),
                NavButtonComponent(
                  icon: Icons.person_2_rounded,
                  text: 'Profile',
                  onTap: () => state._onTap(Screen.profile),
                  isActive: state._currentScreen == Screen.profile,
                  fitSize: 1.7,
                ),
              ],
            ),
          ),
        ):null,
        bottomSheet: state._currentScreen == Screen.messaging
            ? ChatInputComponent(
                onFocus: state._onInputFocus,
              )
            : null,
        child: component.navigationShell);
}
