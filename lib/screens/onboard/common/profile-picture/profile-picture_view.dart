part of 'profile-picture_screen.dart';

Widget _profilePictureView(ProfilePictureScreen screen,
    _ProfilePictureScreenState state, BuildContext context) {
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
              text: 'Choose your best photo.',
              textAlign: TextAlign.center,
              size: AppSpacing.space_19,
              fontWeight: FontWeight.w800,
            ),
            Gap(AppSpacing.space_4),
            InfoTextComponent(
              text: "You can add more photos in the profile section",
            )
          ],
        ),
        Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                TouchableOpacityComponent(
                    onTap: state._onProfilePicturePlaceholderTap,
                    child: state._profilePicture != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(AppSpacing.max),
                            child: Image.file(
                              state._profilePicture!,
                              width: 200,
                              height: 200,
                              fit: BoxFit.fill,
                            )
                                .animate(
                                    controller: state._animationController,
                                    autoPlay: false)
                                .fadeIn(
                                    duration: 600.ms, curve: Curves.easeInSine),
                          )
                        : SvgPicture.asset(
                            state._showFemaleAvatar
                                ? 'assets/svg/female_avatar.svg'
                                : 'assets/svg/male_avatar.svg',
                            height: 200,
                            width: 200,
                          )),
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
