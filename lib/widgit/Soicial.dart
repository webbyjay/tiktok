import 'package:flutter/material.dart';

class Soicial_Screen extends StatefulWidget {
  const Soicial_Screen({super.key});

  @override
  State<Soicial_Screen> createState() => _Soicial_ScreenState();
}

class _Soicial_ScreenState extends State<Soicial_Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.web)),
              Text("Add a website"),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              Text("Add Instagram"),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.music_note)),
              Text("Add TikTok"),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              Text("Add Another Link"),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        )
      ],
    );
  }
}
