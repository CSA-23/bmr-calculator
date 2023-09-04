import 'package:flutter/material.dart';

class BmrWidget extends StatefulWidget {
  const BmrWidget({Key? key}) : super(key: key);

  @override
  State<BmrWidget> createState() => _BmrWidgetState();
}

class _BmrWidgetState extends State<BmrWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 0.5)),
              child: Row(
                children: [
                  Text(
                    "BMR CALCULATOR",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
