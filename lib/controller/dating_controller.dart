
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../data/modal/dummy_data/dummy_data.dart';
import '../data/modal/response/chat_model.dart';
import '../data/modal/response/story_model.dart';

class DatingController extends GetxController implements GetxService {
  DatingController();
  List<StoryModel> img = [];

  XFile? imageFile;
  List<StoryModel> getStoryList() {
    return storyList;
  }

  void addImage(XFile image) {
    imageFile = image;
  }

  void getFromGallery() async {
    imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    update();
  }

  void getFromCamera() async {
    imageFile = await ImagePicker().pickImage(source: ImageSource.camera);
    update();
  }


  List<ChatModel> getChatList() {
    return chatList;
  }
}
