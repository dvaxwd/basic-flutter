import 'package:basic_flutter/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrollingDemoScreen(),
    );
  }
}

List<Menu> menu=[
  Menu('Spaghetti', 25, 3.5, 'assets/images/spaghetti.jpg'),
  Menu('Chicken Curry', 25, 3.5, 'assets/images/แกงกะหรี่ไก่.jpg'),
  Menu('Greenn Sweet Chicken Curry', 25, 3.5, 'assets/images/แกงเขียวหวาน.jpg'),
  Menu('Tomyumkung', 25, 3.5, 'assets/images/ต้มยำกุ้ง.jpg'),
  Menu('Burahn', 25, 3.5, 'assets/images/บุหรัน ดั้นเมฆ.jpg'),
  Menu('Lab Mhoo', 25, 3.5, 'assets/images/ลาบหมู.jpg'),
  Menu('Papaya Salad', 25, 3.5, 'assets/images/ส้มตำ.jpg'),
  Menu('Green Salad', 25, 3.5, 'asset/images/สลัดผัก.jpg'),
];

class ScrollingDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_1280.jpg',
                    ),
                    height: 40,
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        'Tanatan Jannto',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.add_shopping_cart_outlined,
                    size: 40,
                    weight: 100,
                  ),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Balance',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '2000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Icon(
                  Icons.add_box_sharp,
                  size: 40,
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular foods',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                    )
                  ])),
          SizedBox(
            height: 120,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 200,
                  height: 200,
                  child: Image(
                      image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2018/09/26/13/22/food-3704606_1280.jpg',
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: 200,
                  height: 200,
                  child: Image(
                      image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2019/08/22/12/13/food-4423356_640.jpg',
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: 200,
                  height: 200,
                  child: Image(
                      image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2018/04/09/15/06/soup-3304302_640.jpg',
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: 200,
                  height: 200,
                  child: Image(
                      image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2020/06/05/16/48/food-5263755_640.jpg',
                  )),
                ),
              ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Food Menu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListView.builder(
                itemCount: menu.length,
                itemBuilder: (BuildContext context, int index ){
                  Menu food = menu[index];
                  return ListTile(
                    leading: Image.asset(food.image),
                    title: Text(food.name),
                    subtitle: Text('\$${food.price}${food.rating}'),
                  );
                }),
            ),
          ),
        ],
      ),
    );
  }
}
