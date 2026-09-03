import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/extension/navigator.dart';

class LoginDay13 extends StatelessWidget {
  const LoginDay13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // BAGIAN ATAS
            SizedBox(height: 70),
            Image.asset("assets/images/linked.png", width: 126, height: 37),
            SizedBox(height: 20),
            Text(
              "Ini Test Drawer",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Stay updated on your professional world.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),

            SizedBox(height: 32),

            // INPUT
            TextField(
              decoration: InputDecoration(
                labelText: "Email or Phone",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),

            // TOMBOL SIGN IN
            Center(
              child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  // ONPRESSED
                  onPressed: () {
                    context.push(AboutDialog());
                  },

                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 32),

            ///Divider ada text di tengah
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("or"),
                ),
                Expanded(child: Divider()),
              ],
            ),

            ///Divider ada text end here
            SizedBox(height: 32),

            Center(
              child: SizedBox(
                width: 350, // full lebar
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(color: Colors.grey.shade400),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // biar gambar + text ketengah
                    children: [
                      Image.asset(
                        "assets/images/google.png",
                        height: 39,
                        width: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Continue with Google",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 12),

            // sign in google
            Center(
              child: SizedBox(
                width: 350, // full lebar
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(color: Colors.grey.shade400),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/apple.png",
                        height: 39,
                        width: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Sign In with Apple",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // TES2

            // Join Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // biar ketengah
              children: [
                Text(
                  "New to LinkedIn?",
                  style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                ),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Join now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ],
            ),

            ///
            ///
            ///
          ],
        ), // <- tutup Column
      ), // <- tutup SingleChildScrollView
    );
  }
}
