import 'package:flutter/material.dart';

class FoodWaste extends StatefulWidget {
  FoodWaste({Key? key}) : super(key: key);

  @override
  State<FoodWaste> createState() => _FoodWasteState();
}

class _FoodWasteState extends State<FoodWaste> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double sceeenWidght = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Food Waste'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 350,
                    width: sceeenWidght,
                    child: Image.asset(
                      'images/om.jpg',
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 125,
                    left: 25,
                    right: 0,
                    child: RichText(
                      text: TextSpan(
                        text: 'GOT SOMETHING\n ',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        children: const <TextSpan>[
                          TextSpan(
                            text: '       TO SHARE\n',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          TextSpan(
                            text: 'AND SHARE WHAT\n',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          TextSpan(
                            text: '        YOU CAN',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Food Waste',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Image.asset('images/food-waste-world-block-2.png')],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  'Thousand of Tons of food is wasted annually and completly clean and edible food is wasted for no reason. 40 to 50% off fruits and vegetables are wasted every year that can be given to people who need food and help them get over their day. We all have foods in out homes and eat it daily about 30% of the cereals are wasted annually. why dont we just give it to hungry people and help stop this waste. 20 % of dairy and meat is wasted annually by us many time it is just sitting there and waiting to become inedible why can,t we stop this. if you want to stop this just join SWYC and share whatever you can and become a world saver. become a hero just by sharing food.'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Food Waste In Pakistan',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Image.asset('images/foodwastepakistan.jpg')],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  'According to fact and figures Pakistans main issue is hunger and even with this major issue pakistan is one of the biggest waster. about 0% of total food in pakistan is wasted annually. if we could save all the food we would be able to solve this issue so why dont we all we have to do is share the leftover food and save money and food and people. main issue with pakistan is people are insecure about the food they eat and only tend to eat fresh food while little old food is thrown away. food that is completly edible. and safe to eat is just wasted for no apparent reason. We at SWYC want to save all the 36 million tons of food and help solve this food problem once and for all.'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Clear Out Excessive Material',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      height: 390,
                      width: double.infinity,
                      child: Image.asset('images/everydayitems.jpg'))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  'We all have things lying around that are completly OK but useless for us. these thing cannot be sold cause they are either old or little bit rough around the edges. they are just lying there waiting to be wasted. these thing can vary from old televisions to old beds that are in the store room and have no place in the house. so just by uploading the thing you can share these thing with the people in need and they can use it.you can share old books that other wise will be recycled and go to waste those same books can help other students that cannot afford them.  what are you waiting for start sharing now.cloths are great example old cloths that are going to be thrown away and get wasted share them give it to people who actually need it.'),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                    height: 230,
                    width: sceeenWidght,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42)),
                      child: Image.asset(
                        'images/om.jpg',
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                    child: Image.asset('images/joinus-removebg-preview.png'))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
