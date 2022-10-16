import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);

    Future.delayed(const Duration(seconds: 3)).then(
      (_) => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: ((context) => const Home()),
          ),
        )
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child:
                  Image.asset('assets/images/logo-especializati-branca2.png'),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation(Colors.orange),
            ),
            const SizedBox(height: 10),
            const Text(
              'Carregando...',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
