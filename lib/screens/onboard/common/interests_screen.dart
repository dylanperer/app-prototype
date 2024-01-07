import 'package:app/Services/app_uid_service.dart';
import 'package:app/components/app_chip_group.dart';
import 'package:app/components/app_info_text.dart';
import 'package:app/components/app_input_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uuid/uuid.dart';

import '../../../Services/app_service_register.dart';
import '../../../components/app_chip.dart';
import '../../../components/app_text.dart';
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
  List<AppChip> _interests = [];
  final TextEditingController _texInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    for (var c in widget.onBoardSettings.interests) {
      String uid = widget.uidService.timeUid();
      _interests.add(AppChip(text: c, id: uid, onDelete: ()=> onRemoveInterest(uid)));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _texInputController.dispose();
  }

  void onAddInterest(String value){
    String uid = widget.uidService.timeUid();
    _interests.add(AppChip(text: value, id: uid, onDelete: ()=> onRemoveInterest(uid)));
    widget.onBoardSettings.interests.add(value);
    setState(() {
      _interests = _interests;
    });
    _texInputController.clear();
  }

  void onRemoveInterest(String id){
    AppChip? interestToRemove = _interests.firstWhere((c) => c.id == id);

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
              AppText(
                text: "Share your interests.",
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              AppInfo(
                text: 'You can always add more later.',
              )
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  AppInputField(
                    controller: _texInputController,
                    hintText: 'hiking',
                    prefixIcon: const Icon(Icons.interests_rounded),
                    onSubmitted: onAddInterest,
                  ),
                  const Gap(AppSpacing.space_16),
                  AppChipGroup(interests: _interests,),
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
