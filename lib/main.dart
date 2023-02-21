import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cource(),
    );
  }
}

class Cource extends StatefulWidget {
  const Cource({Key? key}) : super(key: key);

  @override
  State<Cource> createState() => _CourceState();
}

class _CourceState extends State<Cource> {
  List l = [
    Colors.blue[900],
    Colors.red[300],
    Colors.green[300],
  ];
  // 'English','malayalam','Hindi','English','malayalam','Hindi',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school_outlined,
              color: Colors.orange,
            ),
            label: 'Course',
            // backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel,
              color: Colors.grey,
            ),
            label: 'My Course',
            // backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: 'Wishlist',
            // backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Cart',
            // backgroundColor: Colors.black
          )
        ],
      ),
      appBar: AppBar(
        // elevation: 2,
        backgroundColor: Colors.white,
        leading: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('image/logo11.jpg'))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Cources',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'All Courses',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: l.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.red,
                                  decoration: BoxDecoration(
                                 image: DecorationImage(
                                     image: NetworkImage(
                                         'coursedetails.thumbnail'),
                                     fit: BoxFit.cover),
                                 borderRadius: BorderRadius.only(
                                     topRight: Radius.circular(15),
                                     topLeft: Radius.circular(15)),
                                 // color: Colors.red,
                               ),
                                  height: 120,
                                  width: 180,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    'coursedetails.title',
                                    maxLines: 2,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                child: Text(
                                  'coursedetails.price',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                              ),
                              alignment: Alignment.bottomRight,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,width: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },)
            ],
          ),
        ),
      ),
    );
  }
}
