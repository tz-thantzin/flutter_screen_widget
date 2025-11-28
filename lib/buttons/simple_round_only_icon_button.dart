import 'package:flutter/material.dart';

class SimpleRoundOnlyIconButton extends StatelessWidget {
  final Color backgroundColor;
  final Icon? icon;
  final Color? iconColor;
  final double iconSize;
  final Alignment iconAlignment;
  final Function? onPressed;

  SimpleRoundOnlyIconButton({
    this.backgroundColor = Colors.redAccent,
    this.icon,
    this.iconColor,
    this.iconSize = 28.0,
    this.iconAlignment = Alignment.center,
    this.onPressed,
  });

  MainAxisAlignment getMainAxisAlignment() {
    if (this.iconAlignment == Alignment.center) {
      return MainAxisAlignment.center;
    } else if (this.iconAlignment == Alignment.centerLeft) {
      return MainAxisAlignment.start;
    } else if (this.iconAlignment == Alignment.centerRight) {
      return MainAxisAlignment.end;
    }
    return MainAxisAlignment.center;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
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
                    mainAxisAlignment: getMainAxisAlignment(),
                    children: <Widget>[
                      iconAlignment == Alignment.center
                          ? Transform.translate(
                              offset: Offset(0.0, 0.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 5.0,
                                  right: 5.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: backgroundColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                    ),
                                    padding: EdgeInsets.all(0),
                                  ),
                                  child: Icon(
                                    icon!.icon,
                                    size: iconSize,
                                    color: iconColor ?? Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          : Container(),

                      // ----- LEFT ICON -----
                      iconAlignment == Alignment.centerLeft
                          ? Transform.translate(
                              offset: Offset(-10.0, 0.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 5.0,
                                  right: 5.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                    ),
                                    padding: EdgeInsets.all(0),
                                  ),
                                  child: Icon(
                                    icon!.icon,
                                    size: iconSize,
                                    color: iconColor ?? Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          : Container(),

                      // spacer when left or right
                      iconAlignment == Alignment.centerRight ||
                              iconAlignment == Alignment.centerLeft
                          ? Expanded(child: Container())
                          : Container(),

                      // ----- RIGHT ICON (Old FlatButton Replaced) -----
                      iconAlignment == Alignment.centerRight
                          ? Transform.translate(
                              offset: Offset(10.0, 0.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 5.0,
                                  right: 5.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                    ),
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Icon(
                                    icon!.icon,
                                    size: iconSize,
                                    color: iconColor,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                  onPressed: () => onPressed?.call(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
