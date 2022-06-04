import 'package:ateam_flutter/style/text_styles.dart';
import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ToggleSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController( vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            // if (_animationController!.isCompleted) {
            //   _animationController!.reverse();
            // } else {
            //   _animationController!.forward();
            // }
            // widget.value == false
            //     ? widget.onChanged(true)
            //     : widget.onChanged(false);
          },
          child: Container(
            width: 55.0,
            height: 28.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: _circleAnimation!.value == Alignment.centerLeft
                  ? Colors.grey.shade200
                  : Colors.grey.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 0, right: 1.0, left: 1.0),
              child: Container(
                alignment:
                    widget.value ? Alignment.centerRight : Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (_circleAnimation!.value == Alignment.centerRight)
                     Text("ON", style: sliderToggleONStyle),
                    Card(
                      child: Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    if (_circleAnimation!.value == Alignment.centerLeft)
                     Flexible(child: Text("OFF", style:sliderToggleOFFStyle)),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
