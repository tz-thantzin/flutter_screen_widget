import 'package:flutter/material.dart';

class LoginScreen3 extends StatefulWidget {
  const LoginScreen3({super.key});

  @override
  State<LoginScreen3> createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {
  final PageController _controller = PageController(initialPage: 1);

  void gotoLogin() {
    _controller.animateToPage(
      0,
      duration: const Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  void gotoSignup() {
    _controller.animateToPage(
      2,
      duration: const Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // ==================== HOME PAGE ====================
  Widget homePage() {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.redAccent,
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.dstATop),
          image: AssetImage('assets/images/mountains.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 250.0),
            child: Icon(Icons.headset_mic, color: Colors.white, size: 40.0),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Awesome",
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
                Text("App",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    onPressed: gotoSignup,
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    onPressed: gotoLogin,
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ==================== LOGIN PAGE ====================
  Widget loginPage() {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black12, BlendMode.dstATop),
          image: AssetImage('assets/images/mountains.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(100.0),
            child: Icon(Icons.headset_mic, color: Colors.redAccent, size: 50.0),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("EMAIL",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 15.0)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.redAccent, width: 0.5))),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'samarthagarwal@live.com',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const Divider(height: 24.0),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("PASSWORD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 15.0)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.redAccent, width: 0.5))),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '*********',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const Divider(height: 24.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              onPressed: () {},
              child: const Text("Forgot Password?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.redAccent)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
              ),
              onPressed: () {},
              child: const Text("LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("OR CONNECT WITH",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
                Expanded(child: Divider()),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(IconData(0xea90, fontFamily: 'icomoon'),
                        size: 18),
                    label: const Text("FACEBOOK",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B5998),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(IconData(0xea88, fontFamily: 'icomoon'),
                        size: 18),
                    label: const Text("GOOGLE",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFdb3236),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ==================== SIGNUP PAGE ====================
  Widget signupPage() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.dstATop),
            image: AssetImage('assets/images/mountains.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(100.0),
              child:
                  Icon(Icons.headset_mic, color: Colors.redAccent, size: 50.0),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("EMAIL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 15.0)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.redAccent, width: 0.5))),
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'samarthagarwal@live.com',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Divider(height: 24.0),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("PASSWORD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 15.0)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.redAccent, width: 0.5))),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '*********',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Divider(height: 24.0),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("CONFIRM PASSWORD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 15.0)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.redAccent, width: 0.5))),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '*********',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Divider(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {},
                child: const Text("Already have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.redAccent)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                ),
                onPressed: () {},
                child: const Text("SIGN UP",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: PageView(
        controller: _controller,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          loginPage(),
          homePage(),
          signupPage(),
        ],
      ),
    );
  }
}
