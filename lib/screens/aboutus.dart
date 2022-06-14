import 'package:flutter/material.dart';
import 'package:fyp/screens/chatbot.dart';
import 'package:get/get.dart';

class AboutUS extends StatefulWidget {
  AboutUS({Key? key}) : super(key: key);

  @override
  State<AboutUS> createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double sceeenWidght = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('About Us'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        Stack(children: [
          Container(
            height: screenHeight / 2.1,
            width: sceeenWidght,
            child: Image.asset(
              'images/slide.jpg',
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Expedita veritatis consequuntur nihil tempore laudantium vitae denat pacta'),
              ),
              Padding(
                  padding: EdgeInsets.all(8),
                  child: RichText(
                    text: TextSpan(
                      text: 'Share What You Can ',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      children: const <TextSpan>[
                        TextSpan(
                            text:
                                'is a place where anyone can help everyone. We are a group of individuals who wanted to help everyone and give a platform through which everyone can anyone who wants to help can help. on Share what you can you dont just share food you can share anything from food to anything. you got something that is working but old and can be helpful for someone just post a ad and the related person will contact you and thus clearing out the excessive material in your house and helpoing the people in need. Food is wasted on daily basis and that food can be actually given to people and help them go through the day.not only that ngos and trust can be benifitted by this as this is a free for all plateform and can help provide the trust with much material they want.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 14)),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'OUR MISSION',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Get everything we need to journey together.'),
              SizedBox(
                height: 25,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '01',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Reduce food waste',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Reduce food Waste by sharing the food that is leftover/excessive and help the people get good and clean food to the people.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '02',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Help the needy',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'our main goal is to help everyone and give a platorm where everyone can share anything and help the people in need.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '03',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Clear our excessive thing',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'every home has excessive material that is usable but is getting wasted due to no more in use. so rather than throwing those things away just share them.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'DEVELOPRS TEAM',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                    'Well organized , professional team mates who developed their brand by their aggressive performance & work.'),
              ),
              SizedBox(
                height: 20,
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
            ],
          ),
        ),
      ]))),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Get.to(ChatBott());
        },
        child: Icon(Icons.message),
      ),
    );
  }
}
