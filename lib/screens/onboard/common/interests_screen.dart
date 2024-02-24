import 'package:app/Services/app_uid_service.dart';
import 'package:app/components/chip-group/chip-group_component.dart';
import 'package:app/components/chip/chip_component.dart';
import 'package:app/components/text/text_component.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../Services/app_service_register.dart';
import '../../../components/input-field/input_field_component.dart';
import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class InterestsScreen extends StatefulWidget {
  final OnBoardingSettings onBoardSettings;
  final AppUidService uidService = injector<AppUidService>();

  InterestsScreen({super.key, required this.onBoardSettings});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  List<ChipComponent> _interests = [];
  final TextEditingController _texInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    for (var c in widget.onBoardSettings.interests) {
      String uid = widget.uidService.timeUid();
      _interests.add(ChipComponent(text: c, id: uid, onDelete: ()=> onRemoveInterest(uid)));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _texInputController.dispose();
  }

  void onAddInterest(String value){
    String uid = widget.uidService.timeUid();
    _interests.add(ChipComponent(text: value, id: uid, onDelete: ()=> onRemoveInterest(uid)));
    widget.onBoardSettings.interests.add(value);
    setState(() {
      _interests = _interests;
    });
    _texInputController.clear();
  }

  void onRemoveInterest(String id){
    ChipComponent? interestToRemove = _interests.firstWhere((c) => c.id == id);

    _interests.remove(interestToRemove);
    widget.onBoardSettings.interests.remove(interestToRemove.text);
    setState(() {
      _interests = _interests;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.space_72, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              TextComponent(
                text: "Share your interests.",
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              TextComponent(
                text: 'You can always add more later.',
              )
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  InputFieldComponent(
                    controller: _texInputController,
                    hintText: 'hiking',
                    prefixIcon: const Icon(Icons.interests_rounded),
                    onSubmitted: onAddInterest,
                  ),
                  const Gap(AppSpacing.space_16),
                  ChipGroupComponent(interests: _interests,),
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
}
