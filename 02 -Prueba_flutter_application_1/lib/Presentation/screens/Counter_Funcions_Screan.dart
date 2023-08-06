import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('counter Functions'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text('click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25))
              // if (clickCounter == 1)  const Text('click',style: TextStyle(fontSize: 25),),
              //if (clickCounter != 1) const Text('clicks',style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomBotton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {});
                clickCounter = 0;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomBotton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomBotton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomBotton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomBotton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      backgroundColor: Color.fromARGB(118, 21, 233, 190),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
