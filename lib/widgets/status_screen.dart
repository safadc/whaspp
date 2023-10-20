import 'package:flutter/material.dart';
import 'package:tabbar_demo/widgets/chat_screen.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://w0.peakpx.com/wallpaper/547/1017/HD-wallpaper-money-heist-ei-professor-profile-whatsapp-dp.jpg'),
          ),
          title: Text('Safad'),
          subtitle: Text('5 Minutes ago'),
          trailing: Icon(Icons.more_horiz),
        ),
        const Divider(
          thickness: 6,
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 5,
            right: 290,
          ),
          child: Text(
            'RecentStatus',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: statusData.length,
            itemBuilder: (context, index) {
              final value = statusData[index];
              return StatusList(updates: value);
            }),
      ],
    );
  }
}

class StatusList extends StatelessWidget {
  final UpdateStatus updates;
  const StatusList({super.key, required this.updates});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(updates.saveImageUrl),
        ),
      ),
      title: Text(updates.savedName),
      subtitle: Text(updates.time),
      onTap: () {},
    );
  }
}

class UpdateStatus {
  final String savedName;
  final String saveImageUrl;

  final String time;

  UpdateStatus({
    required this.savedName,
    required this.saveImageUrl,
    required this.time,
  });
}

List<UpdateStatus> statusData = [
  UpdateStatus(
      savedName: 'Ronaldo',
      saveImageUrl:
          'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTuowGGs61PH7nf9Ox-uvRNvlypThY0ci7Px3AI9fXsWsxyti9gTEwdU5B0VTxv3vQaMDaTXjDV1A8PHOs',
      time: '2 Minutes ago'),
  UpdateStatus(
      savedName: 'AsifAli',
      saveImageUrl: 'https://static.toiimg.com/photo/61203770.cms',
      time: '10 Minutes ago'),
  UpdateStatus(
      savedName: 'Dabzee',
      saveImageUrl:
          'https://p16-tm-sg.tiktokmusic.me/img/tos-alisg-i-0000/4f8c669a8324418e9941e4ec28983be0~c5_750x750.jpg',
      time: '15 Minutes ago'),
  UpdateStatus(
      savedName: 'Anarkali',
      saveImageUrl:
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSKmAY1fxDqT0qeQXJA9rPIAw5f2JmSkGlNgdX4rbWs68evbEBy',
      time: '20 Minutes ago'),
  UpdateStatus(
      savedName: 'Sithara',
      saveImageUrl:
          'https://static.toiimg.com/photo/msid-81746161/81746161.jpg',
      time: '25 Minutes ago'),
];
