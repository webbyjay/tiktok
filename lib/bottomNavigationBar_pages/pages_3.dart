import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            child: const Text('Upload Photo and Video'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.normal),
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Share a video!',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            DottedLine(
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
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () async {
                                final ImagePicker picker = ImagePicker();
// Pick an image.
                                final XFile? image = await picker.pickImage(
                                    source: ImageSource.gallery);
                              },
                              child: Text(
                                "Upload from Camaera Roll",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            DottedLine(
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
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () async {
                                final ImagePicker picker = ImagePicker();
// Pick an image.
                                final XFile? image = await picker.pickVideo(
                                    source: ImageSource.camera);
                              },
                              child: Text(
                                "Record Now",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DottedLine(
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
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }));
  }
}
