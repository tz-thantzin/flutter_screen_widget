import 'package:flutter/material.dart';

class LoginScreen6 extends StatefulWidget {
  final VoidCallback onLoginClick;
  final VoidCallback navigatePage;

  const LoginScreen6({
    super.key,
    required this.onLoginClick,
    required this.navigatePage,
  });

  @override
  State<LoginScreen6> createState() => _LoginScreen6State();
}

class _LoginScreen6State extends State<LoginScreen6> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Full Background Image
            Container(
              height: height,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/background_image_one_signin.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome Text
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 8, top: 155),
                  child: const Text(
                    "Welcome\nBack",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                ),

                // Email Field
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: height * 0.24,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: TextField(
                    controller: emailController,
                    style:
                        const TextStyle(color: Color.fromRGBO(41, 41, 41, 1)),
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(121, 121, 121, 1)),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Password Field
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style:
                        const TextStyle(color: Color.fromRGBO(41, 41, 41, 1)),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(121, 121, 121, 1)),
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                // "Sign in" + Circular Arrow Button
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 40),
                      child: FloatingActionButton(
                        backgroundColor: const Color.fromRGBO(78, 82, 91, 1),
                        elevation: 6,
                        onPressed: widget.onLoginClick,
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.014),

                // Sign Up Link
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: TextButton(
                    onPressed: widget.navigatePage,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(50, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),

                // Extra space at bottom to allow scrolling
                SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom + 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
