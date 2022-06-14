import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/screens/aboutus.dart';
import 'package:fyp/screens/chatbot.dart';
import 'package:fyp/screens/contact.dart';
import 'package:fyp/screens/food_waste.dart';
import 'package:fyp/screens/profile.dart';
import 'package:fyp/screens/share_what_you_can.dart';
import 'package:fyp/screens/signup.dart';
import 'package:get/get.dart';
// import 'package:kommunicate_flutter/kommunicate_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DialogFlowtter? dialogFlowtter;
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

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
              leading: Icon(Icons.home, color: Colors.green),
              title: Text(
                "About us",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUS()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page, color: Colors.green),
              title: Text(
                "Contact us",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),
                );
              },
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
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.location_pin, color: Colors.green),
            //   title: Text(
            //     "Location",
            //     style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.green),
            //   ),
            //   onTap: () {
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(
            //     //       builder: (context) =>   SuportPage()),

            //     // );
            //   },
            // ),
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
      )),
      appBar: AppBar(
          backgroundColor: Colors.black,
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
                  child: Image.asset(
                    'images/2.jpg',
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
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [Image.asset('images/3.jpg')],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Sharing is Caring',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    // Container(
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.grey, width: 2),
                    //       borderRadius: BorderRadius.circular(12)),
                    //   child:
                    Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Text(
                            'What is SWYC?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Share What you can is a place where anyone can help everyone.'),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Text(
                            'Food Waste',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Thousand of Tons of food is wasted annually for no reason.'),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Text(
                            'Excessive Material',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'We all have things lying around that are completly OK but useless for us.'),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Text(
                            'Beatae veritatis',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Expedita veritatis consequuntur nihil tempore laudantium vitae denat pacta'),
                    ),
                    // Center(
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         border:
                    //             Border.all(color: Colors.grey, width: 2),
                    //         borderRadius: BorderRadius.circular(6)),
                    //     child: Column(
                    //       children: [
                    //         Padding(
                    //           padding:
                    //               const EdgeInsets.only(left: 8, right: 8),
                    //           child: TextButton(
                    //               onPressed: () {
                    //                 Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(
                    //                         builder: (context) =>
                    //                             AboutUS()));
                    //               },
                    //               child: Text(
                    //                 'Learn more About us',
                    //                 style: TextStyle(
                    //                     color: Colors.black, fontSize: 16),
                    //               )),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 10),
                  ],
                ),
                // ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.green,
                              size: 40,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Happy Clients',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.work_outline,
                              color: Colors.green,
                              size: 40,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Projects',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.headset_mic_rounded,
                              color: Colors.green,
                              size: 40,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '24',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Hours Of Support',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.people_outline,
                              color: Colors.green,
                              size: 40,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Hard Workers',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Row(
                      children: [
                        SizedBox(width: 35),
                        Expanded(
                          child: Container(
                            // height: 100,
                            child: Image.asset(
                              'images/clinet1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 55),
                        Expanded(
                          child: Container(
                            // height: 100,
                            child: Image.asset(
                              'images/client2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 35),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        SizedBox(width: 35),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              'images/client3.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 55),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              'images/client4.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 35),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        SizedBox(width: 35),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              'images/client5.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 55),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              'images/client6.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 35),
                      ],
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
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
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Get everything we need to journey together.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 10),
                child: Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '01',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'What we do',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Ulamco laboris nisi ut aliquip ex ea commodo consequat. Et consectetur ducimus vero placeat',
                                  style: TextStyle(
                                    // fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                    top: 10, left: 20, right: 20, bottom: 10),
                child: Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '02',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'What process to get things',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Dolorem est fugiat occaecati voluptate velit esse. Dicta veritatis dolor quod et vel dire leno para dest',
                                  style: TextStyle(
                                    // fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                    top: 10, left: 20, right: 20, bottom: 10),
                child: Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '03',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Need Anything',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Molestiae officiis omnis illo asperiores. Aut doloribus vitae sunt debitis quo vel nam quis',
                                  style: TextStyle(
                                    // fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Why SWYC Foundation?',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                        'Share What you can is a place where anyone can help everyone. We are a group of individuals who wanted to help everyone and give a platform through which everyone can anyone who wants to help can help. on Share what you can you dont just share food you can share anything from food to anything. you got something that is working but old and can be helpful for someone just post a ad and the related person will contact you and thus clearing out the excessive material in your house and helpoing the people in need. Food is wasted on daily basis and that food can be actually given to people and help them go through the day.not only that ngos and trust can be benifitted by this as this is a free for all plateform and can help provide the trust with much material they want.'),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.green)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Learn More'),
                        ),
                      ),
                    ),
                    Image.asset('images/Image-1.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Donation of Food?',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                        'Thousand of Tons of food is wasted annually and completly clean and edible food is wasted for no reason. 40 to 50% off fruits and vegetables are wasted every year that can be given to people who need food and help them get over their day. We all have foods in out homes and eat it daily about 30% of the cereals are wasted annually. why dont we just give it to hungry people and help stop this waste. 20 % of dairy and meat is wasted annually by us many time it is just sitting there and waiting to become inedible why can,t we stop this. if you want to stop this just join SWYC and share whatever you can and become a world saver. become a hero just by sharing food.'),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.green)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Learn More'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('images/donation.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'PORTFOLIO',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Check out what we are giving our services to needy people'),
                    SizedBox(
                      height: 25,
                    ),
                    Image.asset('images/img1.jpg'),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset('images/comp.jpg'),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset('images/comp2.jpg'),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset('images/comp3.jpg'),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset('images/img2.jpg'),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset('images/img3.jpg'),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset('images/f1.jpg'),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'TEAM',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        'Well organized , professional team mates who developed their brand by their aggressive performance & work.'),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(102),
                        child: Image.asset("images/alikhan.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Muhammad Ali',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Flutter Developer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(102),
                        child: Image.asset("images/1.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Usman Sarwar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Full Stack Developer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(102),
                        child: Image.asset("images/rana.jpeg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Muhammad Ans',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Full Stack Developer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'FREQUENTLY ASKED',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        'QUESTIONS',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Questions we have put for your easiness and understands who we are and what we are doing for our respectable peoples'),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            SizedBox(
                              width: 05,
                            ),
                            // Icon(
                            //   Icons.question_mark,
                            //   color: Colors.green,
                            // ),
                            Text(
                              'What is Save the Children?',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        children: <Widget>[
                          ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 2),
                                child: Text(
                                  'Save the Children is an international non-profit founded by Eglantyne Jebb, over 100 years ago. We are active in over 100 countries and were the world’s first international charity for children. We give children in the U.S. and around the world a healthy start in life, the opportunity to learn and protection from harm. When a crisis occurs, we are among the first to respond to an emergency and the last to leave.',
                                  style: TextStyle(),
                                ),
                              ),
                              onTap: () {}),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            SizedBox(
                              width: 05,
                            ),
                            // Icon(
                            //   Icons.question_mark,
                            //   color: Colors.green,
                            // ),
                            Expanded(
                              child: Text(
                                'Why should I donate to Save the Children?',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        children: <Widget>[
                          ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 2),
                                child: Text(
                                  'Your gift, pooled with other support, will help us deliver critical aid to children and families around the world and the US during emergencies and within our programs.',
                                  style: TextStyle(),
                                ),
                              ),
                              onTap: () {}),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            SizedBox(
                              width: 05,
                            ),
                            // Icon(
                            //   Icons.question_mark,
                            //   color: Colors.green,
                            // ),
                            Expanded(
                              child: Text(
                                'How do you coordinate your work with other aid agencies, to avoid duplication of services?',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        children: <Widget>[
                          ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 2),
                                child: Text(
                                  'We work closely with the United Nations, the Government of countries and other aid agencies to coordinate our programs.',
                                  style: TextStyle(),
                                ),
                              ),
                              onTap: () {}),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            SizedBox(
                              width: 05,
                            ),
                            // Icon(
                            //   Icons.question_mark,
                            //   color: Colors.green,
                            // ),
                            Expanded(
                              child: Text(
                                'Tempus quam pellentesque nec nam aliquam sem et tortor consequat?',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        children: <Widget>[
                          ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 2),
                                child: Text(
                                  'Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in.',
                                  style: TextStyle(),
                                ),
                              ),
                              onTap: () {}),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            SizedBox(
                              width: 05,
                            ),
                            // Icon(
                            //   Icons.question_mark,
                            //   color: Colors.green,
                            // ),
                            Expanded(
                              child: Text(
                                'How much of my donation will go toward programs?',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        children: <Widget>[
                          ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 2),
                                child: Text(
                                  'In fiscal year 2020, 85% of all expenditures went to program services. More information about our finances and the use of funds is available on our financial page.',
                                  style: TextStyle(),
                                ),
                              ),
                              onTap: () {}),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(52),
                          topLeft: Radius.circular(52))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Put Your Queries Here',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Name',
                                      hintText: 'Enter Your Name',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',
                                      hintText: 'Enter Your Email',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Reason',
                                      hintText: 'Reason to Contact',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Message',
                                      hintText: 'Enter Your Message here...',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      primary: Colors.green,
                                      minimumSize: const Size(150, 50),
                                      maximumSize: const Size(150, 50),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Get.to(ChatBott());
        },
        child: Icon(Icons.message),
      ),
    );
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatBott()));
                      },
                    ),
                    // Divider(),
                    // TextButton.icon(
                    //   icon: FaIcon(FontAwesomeIcons.ad, color: Colors.green),
                    //   label: Text(
                    //     'My Ads',
                    //     style: TextStyle(color: Colors.grey),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.of(context).pop();
                    //   },
                    // ),
                    // Divider(),
                    // TextButton.icon(
                    //   icon: FaIcon(FontAwesomeIcons.thumbsUp,
                    //       color: Colors.green),
                    //   label: Text(
                    //     'Favourites Ads',
                    //     style: TextStyle(color: Colors.grey),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.of(context).pop();
                    //   },
                    // ),
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
