import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:task/util/dimensions.dart';
import 'package:task/view/screen/qr_code/qr_code_screen.dart';
import '../../../util/images.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            const SizedBox(
              width: Dimensions.paddingSizeSmall,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'search',
                  hintStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => const QRScreen());
              },
              icon: const Icon(
                Icons.settings_overscan_sharp,
                color: Colors.black,
                size: 30,
              ),
            )
          ]),
      body: ListView(padding: const EdgeInsets.only(top: 4), children: [
        Image.asset(
          Images.img5,
          fit: BoxFit.cover,
          height: 200,
          width: Get.width,
        ),
        StaggeredGridView.countBuilder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(Images.img3, fit: BoxFit.cover),
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ]),
    );
  }
}
