import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/screens/aboutus.dart';
import 'package:fyp/screens/food_waste.dart';
import 'package:fyp/screens/profile.dart';
import 'package:fyp/screens/share_what_you_can.dart';
import 'package:fyp/screens/signup.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double sceeenWidght = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(
            child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'images/logosimple.jpeg',
                          height: 130,
                          width: 130,
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.green),
                title: Text(
                  "Person",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                onTap: () {
                  _showMyDialog();
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => InviteFriend()));
                },
              ),
              ListTile(
                leading: Icon(Icons.location_pin, color: Colors.green),
                title: Text(
                  "Location",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) =>   SuportPage()),

                  // );
                },
              ),
              ListTile(
                leading: Icon(Icons.share_sharp, color: Colors.green),
                title: Text(
                  "Start Sharing Now!",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SWYC()),
                  );
                },
              ),
            ],
          ),
        )
        ),
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Home Page'),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
              ],
            )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: screenHeight / 2.1,
                    width: sceeenWidght,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: 10,
                    right: 10,
                    child: Center(
                      child: Text(
                        'Share What You Can',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Image.asset('images/slogan.jpeg')],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            'What is SWYC?',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Share What you can is a place where anyone can help everyone. We are a group of individuals who wanted to help everyone and give a platform through which everyone can anyone who wants to help can help. on Share what you can you dont'
                              ' just share food you can share anything from food to anything. you got something that is working but old and can be helpful for someone just post a ad and the related person will contact you and thus clearing out the excessive material'
                              ' in your house and helpoing the people in need. Food is wasted on daily basis and that food can be actually given to people and help them go through the day.not only that ngos and trust can be benifitted by this as this is a free'
                              'for all plateform and can help provide the trust with much material they want.'),
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(6)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AboutUS()));
                                      },
                                      child: Text(
                                        'Learn more About us',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset('images/food-waste-world-block-2.png')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            'FOOD WASTE',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Thousand of Tons of food is wasted annually and completly clean and editble food is wasted for no reason. 40 to 50% off fruits and vegetables are wasted every year that can be given to people who need food and help them get over their'
                              'day. We all have foods in out homes and eat it daily about 30% of the cereals are wasted annually. why dont we just give it to hungry people and help stop this waste. 20 % of dairy and meat is wasted annually by us many time it'
                              'is just sitting there and waiting to become inedible why can,t we stop this. if you want to stop this just join SWYC and share whatever you can and become a world saver. become a hero just by sharing food.'),
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(6)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    FoodWaste()));
                                      },
                                      child: Text(
                                        'Learn More About Food Waste',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.indigo.shade900,
                  ),
                  Positioned(
                      top: 10,
                      left: 50,
                      right: 50,
                      child: Container(
                        height: 130,
                        width: double.infinity,
                        child: Image.asset(
                          "images/download (2).jpg",
                          fit: BoxFit.fill,
                        ),
                      ))
                ]),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 30, right: 30, bottom: 10),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'How Can I Help You',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Login to Your SWYC Account\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Give product details\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Upload Images\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Post\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Signup()));
                                        },
                                        child: Text(
                                          'Start Helping Now',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 30, right: 30, bottom: 10),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'How Can I Get Things',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Login to Your SWYC Account\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Search for the product\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Contact the owner\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'recieve it\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Signup()));
                                        },
                                        child: Text(
                                          'Join Us Now',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 30, right: 30, bottom: 10),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Need Anything',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Login to Your SWYC Account\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Go to Upload ad\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'add Ad title and description\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Post Ad\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'If someone has it he/she will contact You\n',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Signup()));
                                        },
                                        child: Text(
                                          'Join Us Now',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Welcome',
            style: TextStyle(color: Colors.grey),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      icon: Icon(
                        Icons.person_add,
                        color: Colors.green,
                      ),
                      label: Text(
                        'Profile',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon: FaIcon(FontAwesomeIcons.chartArea,
                          color: Colors.green),
                      label: Text(
                        'My Chats',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon: FaIcon(FontAwesomeIcons.ad, color: Colors.green),
                      label: Text(
                        'My Ads',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Divider(),
                    TextButton.icon(
                      icon: FaIcon(FontAwesomeIcons.thumbsUp,
                          color: Colors.green),
                      label: Text(
                        'Favourites Ads',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton.icon(
                      icon: Icon(Icons.logout, color: Colors.green),
                      label: Text(
                        'Logout',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Approve'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }
}
