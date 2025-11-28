import 'package:flutter/material.dart';

import '../buttons/simple_round_button.dart';
import '../buttons/simple_round_icon_button.dart';
import '../buttons/simple_round_only_icon_button.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Button Examples"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30.0),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              // 1. Simple text button
              SimpleRoundButton(
                backgroundColor: Colors.redAccent,
                buttonText: const Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () => debugPrint("LOGIN pressed"),
              ),

              // 2. Icon + Text (left)
              SimpleRoundIconButton(
                backgroundColor: Colors.orangeAccent,
                buttonText: const Text(
                  "SEND EMAIL",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.email),
                onPressed: () => debugPrint("SEND EMAIL pressed"),
              ),

              // 3. Icon + Text (right)
              SimpleRoundIconButton(
                backgroundColor: Colors.pinkAccent,
                buttonText: const Text(
                  "LISTEN TO MUSIC",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.headset_mic),
                iconAlignment: Alignment.centerRight,
                onPressed: () => debugPrint("LISTEN TO MUSIC pressed"),
              ),

              // 4. Another icon + text
              SimpleRoundIconButton(
                backgroundColor: Colors.deepOrangeAccent,
                buttonText: const Text(
                  "SHARE ON SOCIAL",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.share),
                onPressed: () => debugPrint("SHARE pressed"),
              ),

              // 5. Only icon - centered
              SimpleRoundOnlyIconButton(
                backgroundColor: Colors.lightGreen,
                icon: const Icon(Icons.share),
                onPressed: () => debugPrint("Only icon center pressed"),
              ),

              // 6. Two half-width icon buttons
              Row(
                children: [
                  Expanded(
                    child: SimpleRoundOnlyIconButton(
                      backgroundColor: Colors.blueAccent,
                      icon: const Icon(Icons.phone),
                      onPressed: () => debugPrint("Phone pressed"),
                    ),
                  ),
                  Expanded(
                    child: SimpleRoundOnlyIconButton(
                      backgroundColor: Colors.redAccent,
                      icon: const Icon(Icons.message),
                      onPressed: () => debugPrint("Message pressed"),
                    ),
                  ),
                ],
              ),

              // 7. Icon on right with custom color
              SimpleRoundOnlyIconButton(
                backgroundColor: Colors.green,
                icon: const Icon(Icons.message),
                iconColor: Colors.redAccent,
                iconAlignment: Alignment.centerRight,
                onPressed: () => debugPrint("Right icon pressed"),
              ),

              // 8. Icon on left
              SimpleRoundOnlyIconButton(
                backgroundColor: Colors.redAccent,
                icon: const Icon(Icons.details),
                iconAlignment: Alignment.centerLeft,
                iconColor: Colors.redAccent,
                onPressed: () => debugPrint("Left icon pressed"),
              ),

              // 9. Mixed layout: 66% + 33%
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SimpleRoundIconButton(
                      backgroundColor: Colors.deepOrangeAccent,
                      buttonText: const Text(
                        "PLAY",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      icon: const Icon(Icons.play_arrow),
                      iconAlignment: Alignment.centerRight,
                      onPressed: () => debugPrint("PLAY pressed"),
                    ),
                  ),
                  Expanded(
                    child: SimpleRoundButton(
                      backgroundColor: Colors.greenAccent,
                      buttonText: const Text(
                        "OK",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => debugPrint("OK pressed"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40), // Extra bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
