import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final Color colors;
  final String text;
  
  const MessageBubble({
        super.key, 
        required this.colors, 
        required this.text
        });

  @override
  Widget build(BuildContext context) {
    return   Container(
          decoration: BoxDecoration(
              color: colors, 
              borderRadius: BorderRadius.circular(20)),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
            text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
        
  }
}
