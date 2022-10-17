import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSerch(size: size),
          Divider(),
          SeeAllButtom(title: 'Recomended', press: (() {})),
          RecomendProducts(),
          SeeAllButtom(title: 'All Product', press: () {}),
          AllProducts(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class AllProducts extends StatelessWidget {
  const AllProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AllProductsCard(
            image: 'assets/images/gamingchair.jpg',
            press: () {},
          ),
          AllProductsCard(
            image: 'assets/images/hplaptop2.jpg',
            press: () {},
          ),
          AllProductsCard(
            image: 'assets/images/hplaptop1.jpg',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class AllProductsCard extends StatelessWidget {
  const AllProductsCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          top: 20 / 2,
          bottom: 20 / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

class RecomendProducts extends StatelessWidget {
  const RecomendProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendAccesories(
            image: 'assets/images/product4.jpg',
            title: 'Keyboard',
            country: 'Uzbekistan',
            price: 180,
            press: () {},
          ),
          RecomendAccesories(
            image: 'assets/images/product2.jpg',
            title: 'Airdots',
            country: 'Uzbekistan',
            price: 50,
            press: () {},
          ),
          RecomendAccesories(
            image: 'assets/images/product3.jpg',
            title: 'Phone Holder',
            country: 'Uzbekistan',
            price: 1.5,
            press: () {},
          ),
          RecomendAccesories(
            image: 'assets/images/product1.jpg',
            title: 'Headphone',
            country: 'Uzbekistan',
            price: 80,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendAccesories extends StatelessWidget {
  const RecomendAccesories({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final double price;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: 15.0,
        top: 10.0 / 2,
        bottom: 10.0 * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          SizedBox(
            height: 140,
            width: 170,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(20.0 / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 50,
                    color: Colors.blue.withOpacity(0.15),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.blue.withOpacity(0.5),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.green),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeeAllButtom extends StatelessWidget {
  const SeeAllButtom({
    required this.title,
    required this.press,
    Key? key,
  }) : super(key: key);
  final String title;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          TitleWithCostum(
            headline: title,
          ),
          const Spacer(),
          TextButton(
              onPressed: press,
              child: Text(
                'See All',
                style: TextStyle(color: Colors.grey),
              ))
        ],
      ),
    );
  }
}

class TitleWithCostum extends StatelessWidget {
  const TitleWithCostum({
    Key? key,
    required this.headline,
  }) : super(key: key);
  final String headline;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 1 / 4),
            child: Text(
              headline,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              child: Container(
            // margin: EdgeInsets.only(right:  / 4),
            height: 7,
            // color: Colors.blue.withOpacity(0.2),
          ))
        ],
      ),
    );
  }
}

class HeaderWithSerch extends StatelessWidget {
  const HeaderWithSerch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: Stack(
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Hey Furqat!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                    Text(
                      'Good Afternoon',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 340,
            child: const Icon(
              Icons.notifications_none,
              size: 32,
            ),
          ),
          // Divider(),
          Positioned(
            bottom: 10,
            left: 0,
            right: 15,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 227, 227),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 40,
                    color: Color.fromARGB(255, 138, 138, 138).withOpacity(0.30),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.blue.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
