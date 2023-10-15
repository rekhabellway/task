import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/dating_controller.dart';
import '../../../data/modal/response/chat_model.dart';
import '../../../util/dimensions.dart';
import '../../../util/images.dart';

class OtherUserScreen extends StatefulWidget {
  const OtherUserScreen({Key? key}) : super(key: key);

  @override
  State<OtherUserScreen> createState() => _OtherUserScreenState();
}

class _OtherUserScreenState extends State<OtherUserScreen> {
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
        automaticallyImplyLeading: false,
        title: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          Images.test,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Cristina lord",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "24June",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.fontSizeLarge,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Following",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Followers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Post",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.black)),
                child: Center(
                  child: Text(
                    "Following",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.fontSizeLarge),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.black)),
                child: Center(
                  child: Text(
                    "Message",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.fontSizeLarge),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.dashboard_sharp,
                color: Color(0xfff1cb0b),
                size: 40,
              ),
              Icon(
                Icons.video_collection,
                color: Colors.black,
                size: 40,
              )
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 140,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0),
              itemCount: chatList.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      chatList[index].image2!,
                      colorBlendMode: BlendMode.darken,
                      color: Colors.black.withOpacity(0.2),
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
