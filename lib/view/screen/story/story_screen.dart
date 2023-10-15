import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/data/modal/response/story_model.dart';
import 'package:task/util/dimensions.dart';
import '../../../controller/dating_controller.dart';
import '../user/user_screen.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  List<StoryModel> storyList = [];
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    storyList = Get.put(DatingController()).getStoryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                    )),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, top:4, bottom: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xffdec305),
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(70),
                          right: Radius.circular(70)),
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Text(
                    "1>0",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: Dimensions.fontSizeDefault,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send_and_archive_outlined,
                      color: Colors.black,
                    ))
              ],
            )),
        body: ListView(children: [
          GetBuilder<DatingController>(builder: (datingController) {
            return SizedBox(
              height: 100,
              child: ListView(
                  scrollDirection: Axis.horizontal, children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          storyList[0].image!,
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                        top: 30,
                        left: 25,
                        child: Container(
                          height: 25,
                          width: 25,
                          padding: const EdgeInsets.all(3),
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffdec305)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ))
                  ]),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: storyList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(()=>  UserScreen(model: storyList[index],));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            margin: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfff1cb0b)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  storyList[index].image!,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ]),
            );
          }),
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              itemCount: storyList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        storyList[index].image!,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: Dimensions.paddingSizeDefault),
                      const Row(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                          ),
                          SizedBox(width: Dimensions.paddingSizeSmall),

                          Icon(
                            Icons.messenger_outline_sharp,
                          ),
                          SizedBox(width: Dimensions.paddingSizeSmall),

                          Icon(
                            Icons.share,
                          ),
                          Spacer(),
                          Icon(
                            Icons.copy,
                          ),
                        ],
                      ),
                      const SizedBox(height: Dimensions.paddingSizeDefault),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  storyList[index].image!,
                                  height: 25,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(width: Dimensions.paddingSizeExtraSmall),
                          Text(
                            "Add a comment...",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: Dimensions.fontSizeSmall),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.favorite, color: Colors.red,
                          ),

                          const SizedBox(width: Dimensions.paddingSizeSmall),
                          const Icon(
                            Icons.add_circle_rounded, color: Colors.black,
                          ),
                        ],
                      ),

                      const Text("june 18", style: TextStyle(color: Colors.grey),)

                      ,const SizedBox(height: Dimensions.paddingSizeSmall),   ],
                  ),
                );
              })
        ]));
  }
}
