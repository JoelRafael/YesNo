import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_bubble.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
     

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MessageBubble(colors: colors.secondary, text: message.text),
        const SizedBox(
          height: 5,
        ),
         _ImageBubble(image: message.imagUrl!,),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String? image;

   const _ImageBubble({this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          image!,
          width: size.width * 0.70,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Container(
              width: size.width * 07,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Mi amor esta enviando una imagen'),
            );
          },
        ));
  }
}
