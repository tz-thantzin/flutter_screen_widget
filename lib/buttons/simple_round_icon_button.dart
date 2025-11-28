import 'package:flutter/material.dart';

class SimpleRoundIconButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Icon icon;
  final Color? iconColor;
  final double iconSize;
  final Alignment iconAlignment;
  final Function? onPressed;

  SimpleRoundIconButton({
    this.backgroundColor = Colors.redAccent,
    this.buttonText = const Text("REQUIRED TEXT"),
    this.icon = const Icon(Icons.email),
    this.iconColor,
    this.iconSize = 28.0,
    this.iconAlignment = Alignment.centerLeft,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  overlayColor: WidgetStateProperty.all(this.backgroundColor),
                  backgroundColor:
                      WidgetStateProperty.all(this.backgroundColor),
                ),
                child: Row(
                  children: <Widget>[
                    // Left Icon Button
                    iconAlignment == Alignment.centerLeft
                        ? Transform.translate(
                            offset: Offset(-10.0, 0.0),
                            child: Container(
                              padding: const EdgeInsets.all(5.0),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                  ),
                                  padding: EdgeInsets.all(8),
                                ),
                                child: Icon(
                                  icon.icon,
                                  size: iconSize,
                                  color: iconColor ?? backgroundColor,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        : Container(),
                    // Button Text
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: buttonText,
                    ),
                    // Right Icon Button
                    iconAlignment == Alignment.centerRight
                        ? Transform.translate(
                            offset: Offset(10.0, 0.0),
                            child: Container(
                              padding: const EdgeInsets.all(5.0),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                  ),
                                  padding: EdgeInsets.all(8),
                                ),
                                child: Icon(
                                  icon.icon,
                                  size: iconSize,
                                  color: iconColor ?? backgroundColor,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                  ],
                ),
                onPressed: () => onPressed?.call(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
