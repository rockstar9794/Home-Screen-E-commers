import 'package:flutter/material.dart';
import 'package:intro_screen/screens/home_body.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InfoProfileHeader(size: size),
        SeeAllButtom(title: 'Folders', press: (() {})),
      ],
    );
  }
}

class InfoProfileHeader extends StatelessWidget {
  const InfoProfileHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 15, left: 40),
            height: 300,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue[900],
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 140,
                  ),
                  child: Text(
                    'Furqat Baxtiyarovich',
                    style: TextStyle(
                        color: Color.fromARGB(224, 255, 255, 255),
                        fontSize: 20),
                  ),
                ),
                Divider(
                  height: 5,
                ),
                Text(
                  'Software Engineer\n       Flutter Dev',
                  style: TextStyle(color: Color.fromARGB(255, 130, 195, 252)),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 160),
                // alignment: Alignment(50, 10),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(0, 5),
                    ),
                  ],
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile-photo.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 245, left: 100),
                child: Text(
                  '50k',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 245),
                child: Text(
                  '51',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 245, right: 50),
                child: Text(
                  '100',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 275, left: 85),
                child: Text(
                  'Followers',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 175, 219, 255),
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 275),
                child: Text(
                  'Following',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 175, 219, 255),
                  ),
                ),
              ),
              Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 275, right: 70),
                child: Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 175, 219, 255),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
