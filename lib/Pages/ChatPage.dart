import 'package:flutter/material.dart';
import 'package:whatsapp_clone_socket_io_nodjs/Screen/SelectContact.dart';
import 'package:whatsapp_clone_socket_io_nodjs/model/ChatModel.dart';
import 'package:whatsapp_clone_socket_io_nodjs/widget/CustomCard.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key, this.chatmodels, this.sourchat}) : super(key: key);
  final List<ChatModel>? chatmodels;
  final ChatModel? sourchat;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.chatmodels!.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: widget.chatmodels![index],
          sourchat: widget.sourchat,
        ),
      ),
    );
  }
}
