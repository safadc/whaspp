import 'package:flutter/material.dart';
import 'package:tabbar_demo/widgets/calling_screen.dart';
import 'package:tabbar_demo/widgets/camera_screen.dart';
import 'package:tabbar_demo/widgets/status_screen.dart';
import 'package:tabbar_demo/widgets/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.light),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
            PopupMenuButton<MenuOption>(
              onSelected: (option) {
                switch (option) {
                  case MenuOption.newGroup:
                    break;
                  case MenuOption.linkedDevice:
                    break;
                  case MenuOption.payments:
                    break;
                  case MenuOption.settings:
                    break;
                }
              },
              itemBuilder: (context) => <PopupMenuEntry<MenuOption>>[
                const PopupMenuItem(
                  child: Text('newGroup'),
                ),
                const PopupMenuItem(child: Text('linkedDevice')),
                const PopupMenuItem(child: Text('payments')),
                const PopupMenuItem(child: Text('settings')),
              ],
            )
          ],
          bottom: TabBar(tabs: [
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {},
            ),
            const Text(
              "Chat",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const Text(
              "Status",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const Text(
              "Call",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ]),
        ),
        body: TabBarView(children: [
          const CameraScreen(),
          ChatListPage(),
          const Status(),
          const CallingScreen(),
        ]),
      ),
    );
  }
}

enum MenuOption {
  newGroup,
  payments,
  linkedDevice,
  settings,
}
