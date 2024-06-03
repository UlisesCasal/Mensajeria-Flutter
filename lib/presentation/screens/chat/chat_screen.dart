import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/chat/her_message_bubble.dart';
import 'package:myapp/presentation/widgets/chat/message_bubble.dart';
import 'package:myapp/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.imagenmia.com/newstyles/male/realistic-vintage-1.jpg"),
          ),
        ),
        title: const Text('Hola :)'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {

                return (index % 2 == 0)
                ? HerMessageBubble()
                : MyMessageBubble();
              },
            )),
            MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
