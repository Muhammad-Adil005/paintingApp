import 'package:flutter/material.dart';

import '../widgets/color_pallet.dart';
import '../widgets/eraser_button.dart';
import '../widgets/paint_area_widget.dart';
import '../widgets/size_buttons.dart';

class PaintingScreen extends StatelessWidget {
  final String imagePath;
  const PaintingScreen({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Painting Game'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    const PaintAreaWidget(),
                    IgnorePointer(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imagePath),
                      ],
                    )),
                  ],
                ),
              ),
              ColorPallet(),
              const EraserButton(),
              const SizeButtons(),
            ],
          ),
        ],
      ),
    );
  }
}
