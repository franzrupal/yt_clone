import 'package:flutter/material.dart';

class AddOverlay extends StatefulWidget {
  const AddOverlay({key});

  @override
  State<AddOverlay> createState() => _AddOverlayState();
}

class _AddOverlayState extends State<AddOverlay> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'New Task',
              ),
            ),

            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
