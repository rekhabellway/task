import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/util/dimensions.dart';
import '../../../controller/dating_controller.dart';
import '../../../data/modal/response/chat_model.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
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
        title: Row(
          children: [
            Text(
              "Comment",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.fontSizeExtraLarge,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff020223)),
                child: Text("25",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.fontSizeSmall),
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:16.0, left: 8,right: 8),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          itemCount: chatList.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
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
                SizedBox(width: Dimensions.paddingSizeSmall,),
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

                      SizedBox(height: Dimensions.paddingSizeExtraLarge,),
                    ],
                  ),
                ),

                SizedBox(width: Dimensions.paddingSizeSmall,),
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
            );
          },
        ),
      ),
    );
  }
}
