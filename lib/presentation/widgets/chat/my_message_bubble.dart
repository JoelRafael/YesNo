import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, 
              
              borderRadius: BorderRadius.circular(20)
              ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
               
              Text(
                 message.text,
                 //textAlign: TextAlign.left,
                 style: const TextStyle(color: Colors.white,),
                 
               ),
                
                const Text(
                "12:47",
                textAlign: TextAlign.end, 
                style:  TextStyle(color: Colors.white),)
            ],),
            
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
