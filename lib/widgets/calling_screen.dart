import 'package:flutter/material.dart';

class CallingScreen extends StatefulWidget {
  const CallingScreen({super.key});

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  List<Calling> callingList = [
    Calling(
        contactImageUrl:
            'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSKmAY1fxDqT0qeQXJA9rPIAw5f2JmSkGlNgdX4rbWs68evbEBy',
        contactName: 'Anarkali',
        time: '2 minutes ago',
        inComing: true,
        isVideoCall: true),
    Calling(
        contactImageUrl: 'https://static.toiimg.com/photo/61203770.cms',
        contactName: 'AsifAli',
        time: '5 minutes ago',
        inComing: true,
        isVideoCall: true),
    Calling(
        contactImageUrl:
            'https://static.toiimg.com/photo/msid-81746161/81746161.jpg',
        contactName: 'Sithara',
        time: '20 minutes ago',
        inComing: false,
        isVideoCall: false),
    Calling(
        contactImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfef99_a8jMSudOq91192b6fjdaOmvsr_q6Q&usqp=CAU',
        contactName: 'Mammookka❤️',
        time: '15 minute ago',
        inComing: false,
        isVideoCall: true),
    Calling(
        contactImageUrl:
            'https://w0.peakpx.com/wallpaper/323/431/HD-wallpaper-avatar-whatsapp-dp-creative-design-graphics-design-hero-hey-profile-pic-smartphone-whatsapp-dp.jpg',
        contactName: 'SushinShyam 𝄞♫',
        time: '18 minute ago',
        inComing: true,
        isVideoCall: false),
    Calling(
        contactImageUrl:
            'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTuowGGs61PH7nf9Ox-uvRNvlypThY0ci7Px3AI9fXsWsxyti9gTEwdU5B0VTxv3vQaMDaTXjDV1A8PHOs',
        contactName: 'Cristiano Ronaldo',
        time: '23 minutes ago',
        inComing: false,
        isVideoCall: true),
    Calling(
        contactImageUrl:
            'https://images.news18.com/ibnlive/uploads/2023/04/wp-image-1319-16827778943x2.jpg',
        contactName: 'Sreenath Bhasi🚬',
        time: '8 minutes ago',
        inComing: false,
        isVideoCall: true),
    Calling(
        contactImageUrl:
            'https://static.toiimg.com/thumb/msid-20647492,imgsize-173165,width-400,resizemode-4/20647492.jpg',
        contactName: 'SunnyWayne',
        time: '10 minutes ago',
        inComing: true,
        isVideoCall: true),
    Calling(
        contactImageUrl: 'https://images.indianexpress.com/2021/12/subi1.jpg',
        contactName: 'Soubin Shahir',
        time: '25 minutes ago',
        inComing: true,
        isVideoCall: false)
  ];
  Map<int, Calling> callMap = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callingList.length,
        itemBuilder: (BuildContext context, int index) {
          final call = callingList[index];
          return CallList(
              contactImageUrl: call.contactImageUrl,
              contactName: call.contactName,
              time: call.time,
              inComing: call.inComing,
              isVideoCall: call.isVideoCall);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
            onPressed: () {}, icon: Icon(Icons.phone_callback_rounded)),
      ),
    );
  }
}

class CallList extends StatelessWidget {
  final String contactImageUrl;
  final String contactName;
  final String time;
  final bool inComing;
  final bool isVideoCall;
  const CallList(
      {super.key,
      required this.inComing,
      required this.contactImageUrl,
      required this.contactName,
      required this.time,
      required this.isVideoCall});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(contactImageUrl),
      ),
      title: Text(contactName),
      subtitle: Row(
        children: [
          Icon(
            inComing ? Icons.call_received : Icons.call_missed_outgoing_rounded,
            color: inComing ? Colors.red : Colors.green,
          ),
          Text(time),
        ],
      ),
      trailing: Icon(
        isVideoCall ? Icons.videocam_outlined : Icons.call,
        color: isVideoCall ? Colors.green : Colors.green,
      ),
    );
  }
}

class Calling {
  final String contactImageUrl;
  final String contactName;
  final String time;
  final bool inComing;
  final bool isVideoCall;

  Calling(
      {required this.contactImageUrl,
      required this.contactName,
      required this.time,
      required this.inComing,
      required this.isVideoCall});
}
