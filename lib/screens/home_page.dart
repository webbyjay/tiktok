import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/screens/add_videos.dart';

import 'content_screen.dart';

class HomePage extends StatelessWidget {
  final List<String> videos = [
    //   'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FBigBuckBunny.mp4?alt=media&token=4984db96-e6ce-4847-ab71-e2dbf849134e',
    //   'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FElephantsDream.mp4?alt=media&token=e6de2d21-df2b-4305-9677-ea8169eb6454',
    //   'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2Fbee.mp4?alt=media&token=33b3f3eb-e9fc-4332-8b32-1993683e9901',
    //   'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FForBiggerEscapes.mp4?alt=media&token=a05e1574-fd08-4fd5-ac1b-1730f6756fb3',
    //   'https://firebasestorage.googleapis.com/v0/b/rell-16b91.appspot.com/o/video%2FForBiggerMeltdowns.mp4?alt=media&token=8adcac8d-31c6-491e-a2a1-aded3358ea90'
    //       'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702636555448?alt=media&token=e7b03a67-3eab-4378-91f4-0eb7adb0cd4c'
    //       'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702633535275?alt=media&token=ecbd9239-e3af-49aa-9157-26c0d832ef5c',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702633096722?alt=media&token=6b28c713-c902-4ffc-ba97-3bbd419e26a1'
    //       'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702618627651?alt=media&token=8458c6c3-100e-41f8-9db6-6e69934b965d'
    //       'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702620902189?alt=media&token=86e62c58-6fa2-43c2-946d-a849b1f1e98f',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702620902189?alt=media&token=86e62c58-6fa2-43c2-946d-a849b1f1e98f',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702529767491?alt=media&token=15d48504-8290-4078-a99a-ceeefde1ca20',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702529438384?alt=media&token=905dbb01-4735-4b4b-b1e5-270c0728c744',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702529767491?alt=media&token=15d48504-8290-4078-a99a-ceeefde1ca20',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702535630354?alt=media&token=87d7a6f7-3396-49e4-b613-2a3032d61095',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702539103415?alt=media&token=d5ad2eca-bf5e-4f9e-b17c-5f16cd8bf010',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702618627651?alt=media&token=8458c6c3-100e-41f8-9db6-6e69934b965d',
    //   'https://firebasestorage.googleapis.com/v0/b/tiktok-rell.appspot.com/o/images%2F1702620902189?alt=media&token=86e62c58-6fa2-43c2-946d-a849b1f1e98f',
    'https://firebasestorage.googleapis.com/v0/b/dymme-89602.appspot.com/o/Mindful%20Gratitude%20_%20%E0%A4%AC%E0%A4%A8%E0%A4%BF%E0%A4%8F%20%E0%A5%9B%E0%A5%8D%E0%A4%AF%E0%A4%BE%E0%A4%A6%E0%A4%BE%20%E0%A4%96%E0%A5%81%E0%A4%B6%2C%20%E0%A4%AB%E0%A4%BF%E0%A4%9F%20%E0%A4%94%E0%A4%B0%20%E0%A4%AC%E0%A5%87%E0%A4%B9%E0%A4%A4%E0%A4%B0%2C%20%E0%A4%AE%E0%A4%BE%E0%A4%87%E0%A4%82%E0%A4%A1%E0%A4%AB%E0%A5%81%E0%A4%B2%20%E0%A4%97%E0%A5%8D%E0%A4%B0%E0%A5%88%E0%A4%9F%E0%A4%BF%E0%A4%9F%E0%A5%8D%E0%A4%AF%E0%A5%82%E0%A4%A1%20%E0%A4%A4%E0%A4%95%E0%A4%A8%E0%A5%80%E0%A4%95%20%E0%A4%95%E0%A5%87%20%E0%A4%B8%E0%A4%BE%E0%A4%A5.mp4?alt=media&token=daa2f554-3151-4a52-bc23-5f69c645a5a3'
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
        child: Container(
          child: Stack(
            children: [
              PageView.builder(
                  itemCount: videos.length,
                  controller:
                      PageController(initialPage: 0, viewportFraction: 1),
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ContentScreen(
                      src: videos[index],
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tiktok Reels',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Add_videos()),
                          );
                        },
                        icon: Icon(Icons.camera_alt))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
