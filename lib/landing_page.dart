import 'package:flutter/material.dart';
import 'package:yinedeniyorum/screens/home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Spacer(),
              Text(
                'Hoşgeldiniz 🤗',
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Image(
                image: AssetImage('assets/acılıs_gorsel.png'),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
