import 'package:flutter/material.dart';
import 'package:tabbar_demo/widgets/chat_screen.dart';

class ChatView extends StatefulWidget {
  final Chat chat;
  const ChatView({
    super.key,
    required this.chat,
  });

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.chat.contactImageUrl),
          ),
          title: Text(widget.chat.contactName),
          subtitle: Text(widget.chat.isOnline ? 'online' : 'offline'),
        ),
        titleSpacing: -20,
        leadingWidth: 39,
        actions: [
          const Icon(
            Icons.video_call_outlined,
            size: 40,
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.call,
            size: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          PopupMenuButton<ViewOption>(
              onSelected: (option) {
                switch (option) {
                  case ViewOption.viewContact:
                    break;
                  case ViewOption.search:
                    break;
                  case ViewOption.mute:
                    break;
                  case ViewOption.wallpaper:
                    break;
                }
              },
              itemBuilder: (context) => <PopupMenuEntry<ViewOption>>[
                    const PopupMenuItem(child: Text('viewContact')),
                    const PopupMenuItem(child: Text('search')),
                    const PopupMenuItem(child: Text('mute')),
                    const PopupMenuItem(child: Text('wallpaper')),
                  ])
        ],
      ),
    );
  }
}

class Message {
  final String send;
  final String receive;
  final DateTime time;

  Message({
    required this.send,
    required this.receive,
    required this.time,
  });
}

enum ViewOption {
  viewContact,
  search,
  wallpaper,
  mute,
}
