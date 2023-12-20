import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final List<String> imageUrls = [
    'https://thumbs.dreamstime.com/b/big-ben-london-clock-tower-uk-thames-river-85419623.jpg',
    'https://images.unsplash.com/photo-1486299267070-83823f5448dd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdGVkJTIwa2luZ2RvbXxlbnwwfHwwfHx8MA%3D%3D',
    'https://t4.ftcdn.net/jpg/01/08/47/29/360_F_108472954_A3Y42CvYf3GLzKKb5CJjVxuoal8TLE9M.jpg',
    // Add more image URLs as needed
  ];
  final List<String> imageUrl = [
    'https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.6666666666666667xw:1xh;center,top&resize=1200:*',
    'https://assets.zeezest.com/blogs/PROD_Punjabi-Food_pro_1664782056577.jpg',
    'https://qph.cf2.quoracdn.net/main-qimg-ccf9c62d50d0bc427e65fb0d6b16cbbe-lq',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOeQ1V9ewZMSu9IYKaBY-B6FDg8djaWz_fIA&usqp=CAU'
    // Add more image URLs as needed
  ];
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // Add padding around the search bar
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
              // Use a Material design search bar
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search for other Spolight cites',
                  // Add a clear button to the search bar
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Global Spotight",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 200.0, // Adjust the width as needed
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "City Showdown: NYC vs Chicago",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 200.0, // Adjust the width as needed
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Global | Oh You fancy, Huh?",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "A roundup of the fanciest/most unique cocktails out there.",
                style: TextStyle(fontSize: 12),
              ),
            ),
            Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 200.0, // Adjust the width as needed
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Global | kygos World Tour ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Fowwlw kygo on this 2023 world tour",
                style: TextStyle(fontSize: 12),
              ),
            ),
            Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 200.0, // Adjust the width as needed
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Global | kygos World Tour ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageUrl.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 200.0, // Adjust the width as needed
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                )),
          ],
        ),
      ),
    );
  }
}
