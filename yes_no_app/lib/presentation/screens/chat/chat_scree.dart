import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_buble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2020/07/hipertextual-conoce-fortuna-que-tenia-tony-stark-iron-man-universo-marvel-2020542291.jpg?fit=1920%2C1200&quality=50&strip=all&ssl=1'),
          ),
        ),
        title: const Text(' mi mao da'),
        centerTitle: false,
      ),
      body: _ChatVew(),
    );
  }
}

class _ChatVew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MyMessagebuble();
                },
              ),
            ),
            Text('MUNDO')
          ],
        ),
      ),
    );
  }
}
