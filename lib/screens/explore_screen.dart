import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = 'explore-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_RYmOmk.json',
                  repeat: true
              ),
            ),
            SizedBox(height: 35),
            Text('Explore the\n     Space',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 32
                )
             ),
            SizedBox(height: 27),
            ElevatedButton(
              onPressed: () {
                _navigateToNextScreen(context);
              },
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 24
                )
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 25, right: 25),
              )
            )
          ],
        ),
      ),
    );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
