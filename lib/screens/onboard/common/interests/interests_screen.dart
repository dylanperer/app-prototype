import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../Services/app_service_register.dart';
import '../../../../Services/app_uid_service.dart';
import '../../../../components/chip-group/chip-group_component.dart';
import '../../../../components/chip/chip_component.dart';
import '../../../../components/input-field/input_field_component.dart';
import '../../../../components/text/text_component.dart';
import '../../../../theme/app_spacing.dart';
import '../onboarding/onboarding_screen.dart';

part 'interests_view.dart';

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
      _interests.add(ChipComponent(
          text: c, id: uid, onDelete: () => onRemoveInterest(uid)));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _texInputController.dispose();
  }

  void onAddInterest(String value) {
    String uid = widget.uidService.timeUid();
    _interests.add(ChipComponent(
        text: value, id: uid, onDelete: () => onRemoveInterest(uid)));
    widget.onBoardSettings.interests.add(value);
    setState(() {
      _interests = _interests;
    });
    _texInputController.clear();
  }

  void onRemoveInterest(String id) {
    ChipComponent? interestToRemove = _interests.firstWhere((c) => c.id == id);

    _interests.remove(interestToRemove);
    widget.onBoardSettings.interests.remove(interestToRemove.text);
    setState(() {
      _interests = _interests;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _interestsView(widget, this, context);
  }
}
