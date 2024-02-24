import 'package:flutter/material.dart';

import '../../components/text/text_component.dart';
part 'matches_view.dart';

class MatchesComponent extends StatelessWidget {
  const MatchesComponent({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _matchesView(this, context);
  }
}
