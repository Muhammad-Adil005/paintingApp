import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/color_provider.dart';

class EraserButton extends StatelessWidget {
  const EraserButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Provider.of<ColorProvider>(context, listen: false).toggleEraser();
            },
            child: const Text('Eraser'),
          ),
        ],
      ),
    );
  }
}
