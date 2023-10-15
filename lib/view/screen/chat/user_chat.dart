import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:get/get.dart';
import 'package:task/view/screen/savepost/save_post.dart';
import '../../../data/modal/response/chat_model.dart';
import '../../../util/dimensions.dart';
import '../../../util/images.dart';

class UserChat extends StatefulWidget {
  final ChatModel model;
  const UserChat({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  _UserChatState createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  Duration duration = const Duration();
  Duration position = const Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              color: const Color(0xff020223),
              onPressed: () {
                Get.to(()=>const SavePost());
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            ),
            const Spacer(),
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  widget.model.image2!,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                )),
            const Spacer(),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.model.name!,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                 "11:27 PM",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: Dimensions.fontSizeSmall,
                     ),
                ),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BubbleNormalImage(
                  id: 'id001',
                  image: _image(),
                  tail: true,
                  delivered: true,
                ),
                BubbleNormalAudio(
                  color: const Color(0xfff1cb0b),
                  duration: duration.inSeconds.toDouble(),
                  position: position.inSeconds.toDouble(),
                  isPlaying: isPlaying,
                  isLoading: isLoading,
                  isPause: isPause,
                  onSeekChanged: _changeSeek,
                  onPlayPauseButtonClick: _playAudio,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'Hey! How are You',
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                  isSender: true,
                  color: const Color(0xfff1cb0b),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  text:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum',
                  isSender: false,
                  color: const Color(0xfff1cb0b),
                  tail: false,
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                ),
                BubbleNormal(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                  color: const Color(0xfff1cb0b),
                  tail: false,
                  sent: true,
                  seen: true,
                  delivered: true,
                ),
                BubbleSpecialOne(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  isSender: false,
                  color: const Color(0xfff1cb0b),
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                ),
                DateChip(
                  date: DateTime(now.year, now.month, now.day - 1),
                ),
                BubbleSpecialOne(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  color: const Color(0xfff1cb0b),
                  seen: true,
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  isSender: false,
                  tail: false,
                  color: const Color(0xfff1cb0b),
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  tail: false,
                  color: const Color(0xfff1cb0b),
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                  sent: true,
                ),
                BubbleSpecialTwo(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  isSender: false,
                  color: const Color(0xfff1cb0b),
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                ),
                DateChip(
                  date: now,
                ),
                BubbleSpecialTwo(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  isSender: true,
                  color: const Color(0xfff1cb0b),
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                  sent: true,
                ),
                BubbleSpecialTwo(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  isSender: false,
                  tail: false,
                  color: const Color(0xfff1cb0b),
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialTwo(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                  tail: false,
                  color: const Color(0xfff1cb0b),
                  delivered: true,
                ),
                BubbleSpecialThree(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  color: const Color(0xfff1cb0b),
                  tail: false,
                  textStyle: TextStyle(
                      color: Colors.black, fontSize: Dimensions.fontSizeSmall),
                ),
                BubbleSpecialThree(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  color: const Color(0xfff1cb0b),
                  tail: true,
                  textStyle: TextStyle(
                      color: Colors.black, fontSize: Dimensions.fontSizeSmall),
                ),
                BubbleSpecialThree(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                  color: const Color(0xfff1cb0b),
                  tail: false,
                  isSender: false,
                ),
                BubbleSpecialThree(
                  text: 'Lorem Ipsum is simply dummy text of the printing',
                  textStyle: TextStyle(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Colors.black,
                  ),
                  color: const Color(0xfff1cb0b),
                  tail: true,
                  isSender: false,
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          MessageBar(
            onSend: (_) => print(_),
            actions: [
              InkWell(
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _image() {
    return Container(
        constraints: const BoxConstraints(
          minHeight: 20.0,
          minWidth: 20.0,
        ),
        child: Image.asset(Images.test));
  }

  void _changeSeek(double value) {
    setState(() {});
  }

  void _playAudio() async {
    'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3';
    if (isPause) {
      setState(() {
        isPlaying = true;
        isPause = false;
      });
    } else if (isPlaying) {
      setState(() {
        isPlaying = false;
        isPause = true;
      });
    } else {
      setState(() {
        isLoading = true;
      });

      setState(() {
        isPlaying = true;
      });
    }
  }
}
