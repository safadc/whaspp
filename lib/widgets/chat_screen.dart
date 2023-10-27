import 'package:flutter/material.dart';
import 'package:tabbar_demo/view/chat_view.dart';

// ignore: must_be_immutable
class ChatListPage extends StatelessWidget {
  ChatListPage({super.key});
  List<Chat> chatList = [
    Chat(
        contactName: 'Mammookka❤️',
        contactImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfef99_a8jMSudOq91192b6fjdaOmvsr_q6Q&usqp=CAU',
        lastMessage: 'Hey, how are you?',
        time: '10:30 AM',
        isOnline: true,
        count: 3),
    Chat(
        contactName: 'Dulquer',
        contactImageUrl:
            'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQJ6aF5Bc97V_jiGvelRpnmaNP0gLfkMZbZ2MSvKC705_0oOlfn',
        lastMessage: 'Evidann Mwone',
        time: '9:00 AM',
        isOnline: false,
        count: 4),
    Chat(
        contactName: 'SushinShyam 𝄞♫',
        contactImageUrl:
            'https://w0.peakpx.com/wallpaper/323/431/HD-wallpaper-avatar-whatsapp-dp-creative-design-graphics-design-hero-hey-profile-pic-smartphone-whatsapp-dp.jpg',
        lastMessage: 'heyyy',
        isOnline: true,
        time: '8:00'),
    Chat(
      contactName: "Dabzee",
      contactImageUrl:
          "https://p16-tm-sg.tiktokmusic.me/img/tos-alisg-i-0000/4f8c669a8324418e9941e4ec28983be0~c5_750x750.jpg",
      lastMessage: "Helloooooo",
      time: "2:00 AM",
      isOnline: false,
    ),
    Chat(
      contactName: "Cristiano Ronaldo",
      contactImageUrl:
          "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTuowGGs61PH7nf9Ox-uvRNvlypThY0ci7Px3AI9fXsWsxyti9gTEwdU5B0VTxv3vQaMDaTXjDV1A8PHOs",
      lastMessage: "What's Up???",
      time: "11:55 pm",
      isOnline: true,
    ),
    Chat(
      contactName: "Sreenath Bhasi🚬",
      contactImageUrl:
          "https://images.news18.com/ibnlive/uploads/2023/04/wp-image-1319-16827778943x2.jpg",
      lastMessage: "Suganoooo",
      time: "8:45 AM",
      isOnline: true,
      count: 3,
    ),
    Chat(
      contactName: "SunnyWayne",
      contactImageUrl:
          "https://static.toiimg.com/thumb/msid-20647492,imgsize-173165,width-400,resizemode-4/20647492.jpg",
      lastMessage: "😏😏😏😏😏",
      time: "7:30 AM",
      isOnline: false,
    ),
    Chat(
      contactName: "Virat Kohli",
      contactImageUrl:
          "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSdaUSzDUqOI-nHLbhni9EGxSC4vO0bevuI-WGs-rALivfQT9cns4xbHiZmPqeVMly1n_8KOhTtlKezKH4",
      lastMessage: "Helloooooo",
      time: "12:00 AM",
      isOnline: true,
    ),
    Chat(
      contactName: "Soubin Shahir",
      contactImageUrl: "https://images.indianexpress.com/2021/12/subi1.jpg",
      lastMessage: "😊😊😊 ",
      time: "7:45 AM",
      isOnline: true,
    ),
    Chat(
      contactName: "AsifAli",
      contactImageUrl: "https://static.toiimg.com/photo/61203770.cms",
      lastMessage: "Eaay ",
      time: "6:00 AM",
      count: 7,
      isOnline: false,
    ),
    Chat(
      contactName: "Shane Nigam",
      contactImageUrl:
          "https://www.hindustantimes.com/ht-img/img/2023/04/05/550x309/shane_nigam_1680668099288_1680668099462_1680668099462.jpg",
      lastMessage: "RDX kandooo ",
      time: "5:45 AM",
      isOnline: true,
    ),
  ];
  Map<int, Chat> chatMap = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final chat = chatList[index];
          return ChatListItem(
            contactImageUrl: chat.contactImageUrl,
            contactName: chat.contactName,
            lastMessage: chat.lastMessage,
            time: chat.time,
            count: chat.count,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatView(
                            chat: chat,
                          )));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat),
        onPressed: () {},
      ),
    );
  }
}

class ChatListItem extends StatelessWidget {
  final String contactImageUrl;
  final String contactName;
  final String lastMessage;
  final String time;
  final int? count;
  final VoidCallback onTap;

  const ChatListItem({
    super.key,
    required this.contactImageUrl,
    required this.contactName,
    required this.lastMessage,
    required this.time,
    this.count,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(contactImageUrl),
      ),
      title: Text(contactName),
      subtitle: Text(lastMessage),
      trailing: count != null && count! > 0
          ? Column(
              children: [
                Text(time),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.green,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Text(
                      count.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          : Text(time),
      onTap: onTap,
    );
  }
}

class Chat {
  final String contactName;
  final String contactImageUrl;
  final String lastMessage;

  final String time;
  final int? count;
  final bool isOnline;

  Chat(
      {required this.contactName,
      required this.contactImageUrl,
      required this.lastMessage,
      required this.time,
      required this.isOnline,
      this.count});
}
