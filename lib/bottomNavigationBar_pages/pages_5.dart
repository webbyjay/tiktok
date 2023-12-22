import 'package:flutter/material.dart';
import 'package:flutter_application_14/screen/Edit_page.dart';
import 'package:flutter_application_14/tabbar/tab1.dart';
import 'package:flutter_application_14/tabbar/tab2.dart';
import 'package:flutter_application_14/tabbar/tab3.dart';
import 'package:flutter_application_14/widgit/Activity.dart';
import 'package:flutter_application_14/widgit/more.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.black,
          //   elevation: 0,
          // ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Activity()),
                          );
                        },
                        icon: const Icon(
                          Icons.notification_add,
                          size: 25,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          size: 25,
                          color: Colors.white,
                        )),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.contact_support,
                          size: 25,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.system_update_alt_outlined,
                          size: 25,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const More_Screen()),
                          );
                        },
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          size: 25,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://googleflutter.com/sample_image.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text("Jay shah"),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Edit_page()),
                            );
                          },
                          icon: const Icon(Icons.edit)),
                    ],
                  ),
                  Text("data"),
                  Text("data")
                ],
              ),
              const TabBar(
                tabs: <Widget>[
                  Tab(
                    child: Text("0 Post"),
                  ),
                  Tab(
                    child: Text("0Places"),
                  ),
                  Tab(
                    child: Text("0 Saved"),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[Tab1(), places_Live(), Saved_Pages()],
                ),
              ),
            ],
          ),
        ));
  }
}
