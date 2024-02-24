import 'package:flutter/material.dart';

import '../../components/text/text_component.dart';
part 'messaging_view.dart';

class MessagingComponent extends StatelessWidget {
  const MessagingComponent({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _messagingView(this, context);
  }
}
