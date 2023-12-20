import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Edit_page extends StatefulWidget {
  const Edit_page({super.key});

  @override
  State<Edit_page> createState() => _Edit_pageState();
}

class _Edit_pageState extends State<Edit_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Edit Profile")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://w7.pngwing.com/pngs/703/24/png-transparent-woman-in-orange-tank-dress-alia-bhatt-badrinath-ki-dulhania-1080p-alia-bhatt-celebrities-black-hair-girl-thumbnail.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                        height: 250,
                        color: Colors.white,
                        child: Center(
                            child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                              const Text(
                                'Edit your profile photo',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              const DottedLine(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.center,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 1.0,
                                dashColor: Colors.grey,
                                // dashGradient: [Colors.red, Colors.blue],
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                // dashGapGradient: [Colors.red, Colors.blue],
                                dashGapRadius: 0.0,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final ImagePicker picker = ImagePicker();
// Pick an image.
                                  final XFile? image = await picker.pickImage(
                                      source: ImageSource.gallery);
                                },
                                child: const Text(
                                  "Take a Photo",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const DottedLine(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.center,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 1.0,
                                dashColor: Colors.grey,
                                // dashGradient: [Colors.red, Colors.blue],
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                // dashGapGradient: [Colors.red, Colors.blue],
                                dashGapRadius: 0.0,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final ImagePicker picker = ImagePicker();
// Pick an image.
                                  final XFile? image = await picker.pickVideo(
                                      source: ImageSource.camera);
                                },
                                child: const Text(
                                  "Choose from Camera Roll",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const DottedLine(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.center,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 1.0,
                                dashColor: Colors.grey,
                                // dashGradient: [Colors.red, Colors.blue],
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                // dashGapGradient: [Colors.red, Colors.blue],
                                dashGapRadius: 0.0,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final ImagePicker picker = ImagePicker();
// Pick an image.
                                  final XFile? image = await picker.pickVideo(
                                      source: ImageSource.camera);
                                },
                                child: const Text(
                                  "Remove Current Photo",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const DottedLine(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.center,
                                lineLength: double.infinity,
                                lineThickness: 5.0,
                                dashLength: 1.0,
                                dashColor: Colors.grey,
                                // dashGradient: [Colors.red, Colors.blue],
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                //\ dashGapGradient: [Colors.red, Colors.blue],
                                dashGapRadius: 0.0,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ])));
                  });
            },
            child: const Text(
              "Edit picture",
              style: TextStyle(
                  color: Color.fromARGB(225, 241, 131, 6), fontSize: 20),
            ),
          )),
          const Text("About you"),
          Row(
            children: [Text("Name")],
          )
        ],
      ),
    );
  }
}
