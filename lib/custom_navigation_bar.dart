import 'package:boost/bottom_nav_clipper.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: BottomNavClipper(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 32),
            color: Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.emoji_events),
                Icon(Icons.mark_chat_unread),
                SizedBox(
                  width: 50,
                ),
                Icon(Icons.search),
                Icon(Icons.account_circle)
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 495,
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 10, spreadRadius: 2),
                ],
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            )),
      ],
    );
  }
}
