import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.omnycontent.com/d/clips/d83f52e4-2455-47f4-982e-ab790120b954/e7c97bc5-4f47-40e4-aeea-ab850131a5c2/328c54f8-8ab1-4b62-94bd-adde004b278b/image.jpg?t=1636691798&size=Small'),
          ),
        ),
        title: const Text('Mi amor ❤'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return (index % 2 == 0)
              ? const HerMessageBubble()
              :const MyMessageBubble();
            })),
          const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
