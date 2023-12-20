import 'package:flutter/material.dart';
import 'package:flutter_application_14/widgit/content_screen.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> videos = [
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702636555448?alt=media&token=e7b03a67-3eab-4378-91f4-0eb7adb0cd4c'
    //     'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702633535275?alt=media&token=ecbd9239-e3af-49aa-9157-26c0d832ef5c',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702633096722?alt=media&token=6b28c713-c902-4ffc-ba97-3bbd419e26a1'
    //     'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702618627651?alt=media&token=8458c6c3-100e-41f8-9db6-6e69934b965d'
    //     'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702620902189?alt=media&token=86e62c58-6fa2-43c2-946d-a849b1f1e98f',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702620902189?alt=media&token=86e62c58-6fa2-43c2-946d-a849b1f1e98f',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702529767491?alt=media&token=15d48504-8290-4078-a99a-ceeefde1ca20',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702529438384?alt=media&token=905dbb01-4735-4b4b-b1e5-270c0728c744',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702529767491?alt=media&token=15d48504-8290-4078-a99a-ceeefde1ca20',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702535630354?alt=media&token=87d7a6f7-3396-49e4-b613-2a3032d61095',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702539103415?alt=media&token=d5ad2eca-bf5e-4f9e-b17c-5f16cd8bf010',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702618627651?alt=media&token=8458c6c3-100e-41f8-9db6-6e69934b965d',
    // 'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702620902189?alt=media&token=86e62c58-6fa2-43c2-946d-a849b1f1e98f',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
    'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
    'https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://storage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4',
    'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4',

    // 'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FBigBuckBunny.mp4?alt=media&token=4984db96-e6ce-4847-ab71-e2dbf849134e',
    // 'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FElephantsDream.mp4?alt=media&token=e6de2d21-df2b-4305-9677-ea8169eb6454',
    // 'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2Fbee.mp4?alt=media&token=33b3f3eb-e9fc-4332-8b32-1993683e9901',
    // 'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FForBiggerEscapes.mp4?alt=media&token=a05e1574-fd08-4fd5-ac1b-1730f6756fb3',
    // 'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FForBiggerMeltdowns.mp4?alt=media&token=8adcac8d-31c6-491e-a2a1-aded3358ea90'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //We need swiper for every content
            // Swiper(
            //     itemBuilder: (BuildContext context, int index) {
            //       return ContentScreen(
            //         src: videos[index],
            //       );
            //     },
            //     itemCount: videos.length,
            //     scrollDirection: Axis.vertical,
            //     physics: ClampingScrollPhysics()),
            PageView.builder(
                itemCount: videos.length,
                controller: PageController(initialPage: 0, viewportFraction: 1),
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: videos[index],
                  );
                }),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Container(
                    height: 90,
                    width: 170,
                    // Add padding around the search bar

                    // Use a Material design search bar
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        focusColor: Colors.black,
                        hintText: 'Search for other Spolight cites',
                        // Add a clear button to the search bar
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () => _searchController.clear(),
                        ),
                        // Add a search icon or button to the search bar
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            // Perform the search here
                          },
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.access_alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(08),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         'Tiktok Reels',
            //         style: TextStyle(
            //           fontSize: 22,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       Icon(Icons.camera_alt),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
