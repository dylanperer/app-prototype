part of 'nav-button_component.dart';

Widget _navButtonView(NavButtonComponent component, BuildContext context) {
  return TouchableOpacityComponent(
        onTap: () => component.onTap(),
        child: Container(
          decoration: BoxDecoration(
              color: component.isActive ? AppColors.main_500 : AppColors.transparent,
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSpacing.max))),
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_16, horizontal: AppSpacing.space_16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (component.isActive) const Gap(AppSpacing.space_8),
              SizedBox(
                child: TextComponent(
                  fontWeight: FontWeight.w600,
                  text: component.text,
                  color: Colors.white,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ).animate(target: component.isActive ? 1 : 0).custom(
                    duration: 320.ms,
                    curve: Curves.easeInOutSine,
                    builder: (context, value, child) {
                      return SizedBox(
                          width: ((value * 100) / component.fitSize), child: child);
                    },
                  ),
              Icon(
                component.icon,
                color: component.isActive ? AppColors.stone_100 : AppColors.main_500,
              ),
            ],
          ),
        ));
}
