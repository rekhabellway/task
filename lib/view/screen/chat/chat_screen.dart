import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/view/screen/chat/user_chat.dart';
import '../../../controller/dating_controller.dart';
import '../../../data/modal/response/chat_model.dart';
import '../../../util/dimensions.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> chatList = [];

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    chatList = Get.put(DatingController()).getChatList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff1cb0b),
        centerTitle: true,
        title: Row(
          children: [
            IconButton(
              color: const Color(0xff020223),
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            ),
            const Spacer(),
            Text(
              "Direct Message",
              style: TextStyle(
                  color: const Color(0xff020223),
                  fontSize: Dimensions.fontSizeLarge,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => UserChat(
                        model: chatList[index],
                      ));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          chatList[index].image2!,
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(
                      width: Dimensions.paddingSizeSmall,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            chatList[index].name!,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.fontSizeDefault),
                          ),
                          Text(
                            chatList[index].message!,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: Dimensions.fontSizeSmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: Dimensions.paddingSizeExtraLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: Dimensions.paddingSizeSmall,
                    ),
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Color(0xff020223)),
                            child: Text(
                              chatList[index].notification!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimensions.fontSizeSmall),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.paddingSizeDefault,),
            ],
          );
        },
      ),
    );
  }
}
