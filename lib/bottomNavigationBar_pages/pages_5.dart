import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/screen/Edit_page.dart';
import 'package:flutter_application_14/tabbar/tab1.dart';
import 'package:flutter_application_14/tabbar/tab2.dart';
import 'package:flutter_application_14/tabbar/tab3.dart';
import 'package:flutter_application_14/widgit/Activity.dart';
import 'package:flutter_application_14/widgit/more.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  User? user = FirebaseAuth.instance.currentUser;

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
                    Container(
                      child: IconButton(
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
                    ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(user!.photoURL!),
                          radius: 20,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(user!.displayName!),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [Text("0"), Text("Followers")],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [Text("10"), Text("Following")],
                                ),
                              ],
                            ),
                          ],
                        ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Jay S"),
                  )
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
