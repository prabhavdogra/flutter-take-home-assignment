import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(
      home: OnboardingScreen(),
    ));

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: <Widget>[
                const Center(
                  child: Image(
                    image: AssetImage('assets/dog.png'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 300,
                    ),
                    Container(
                      height: 140,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color.fromARGB(0, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      color: Colors.white,
                      child: Text(
                        'Welcome to Fond',
                        style: GoogleFonts.encodeSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(46),
                          backgroundColor: const Color(0xff4552CB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.encodeSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(
                      height: 1,
                      indent: 44,
                      endIndent: 44,
                      color: Color(0xFF989898),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(46),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Color(0xFF4552CB),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Log In',
                          style: GoogleFonts.encodeSans(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF4552CB),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    RichText(
                        text: TextSpan(
                            style: GoogleFonts.encodeSans(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            children: [
                          const TextSpan(
                            text: 'By signing up, you agree to FOND\'s\n',
                          ),
                          TextSpan(
                            text: 'Terms of use',
                            style: GoogleFonts.encodeSans(
                              fontWeight: FontWeight.w500,
                              textStyle: const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          const TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                            text: 'privacy policy',
                            style: GoogleFonts.encodeSans(
                              fontWeight: FontWeight.w500,
                              textStyle: const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ])),
                    const SizedBox(height: 68),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
