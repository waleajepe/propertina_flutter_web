import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_estate/utils/colors.dart';
import 'package:real_estate/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding:
              EdgeInsets.only(left: width * 0.1, right: width * 0.1, top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Propertina',
                      style: AppStyles.boldText.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 16.0)),
                  const Spacer(),
                  Text('For Rent', style: AppStyles.boldText),
                  const SizedBox(width: 20.0),
                  Text('For Sell', style: AppStyles.boldText),
                  const SizedBox(width: 20.0),
                  Text('Blogs', style: AppStyles.boldText),
                  const SizedBox(width: 20.0),
                  Text('Contact Us', style: AppStyles.boldText),
                  const Spacer(),
                  Text('Login', style: AppStyles.boldText),
                  const SizedBox(width: 8.0),
                  Flexible(
                    child: Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: AppColor.appBlack,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Center(
                          child: Text('Register',
                              style: AppStyles.boldText
                                  .copyWith(color: AppColor.appWhite))),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 14.0),
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/cover_image.jpg'),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Discover property more easily',
                      style: AppStyles.titleText
                          .copyWith(color: AppColor.appWhite),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Properto help people find their home for better life',
                      style: AppStyles.smallText
                          .copyWith(color: AppColor.appWhite),
                    ),
                    const SizedBox(height: 24.0),
                    Container(
                      height: 50,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                          color: AppColor.appWhite,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: TextField(
                          style: AppStyles.smallText
                              .copyWith(color: AppColor.appGrey),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search propery name or location',
                            hintStyle: AppStyles.smallText
                                .copyWith(color: AppColor.appGrey),
                            suffixIcon: Container(
                              height: height * 0.04,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColor.appBlack),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.search,
                                    color: AppColor.appWhite,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text(
                                    'Search',
                                    style: AppStyles.smallText
                                        .copyWith(color: AppColor.appWhite),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              Text(
                'Featured Property',
                style: AppStyles.headerText.copyWith(color: AppColor.appBlack),
              ),
              const SizedBox(height: 18.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 450,
                    width: width * 0.38,
                    child: OverlayCard(
                      image: 'assets/images/featured_image1.jpg',
                      height: height,
                      width: width,
                      subTitleStyle: AppStyles.cardTitleBig
                          .copyWith(color: AppColor.appBlack),
                      titleStyle: AppStyles.cardTitleBig
                          .copyWith(color: AppColor.appBlack),
                      title: 'Paragon Apartment',
                      subtitle: 'Allen Avenu, Ikeja',
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 220,
                        width: width * 0.38,
                        child: OverlayCard(
                          image: 'assets/images/featured_image2.jpg',
                          height: height,
                          width: width,
                          subTitleStyle: AppStyles.cardSubTitleSmall
                              .copyWith(color: AppColor.appBlack),
                          titleStyle: AppStyles.cardTitleSmall
                              .copyWith(color: AppColor.appBlack),
                          title: 'Mountain View',
                          subtitle: 'Sangotedo Lagos',
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 220,
                        width: width * 0.38,
                        child: OverlayCard(
                          image: 'assets/images/featured_image4.jpg',
                          height: height,
                          width: width,
                          titleStyle: AppStyles.cardTitleSmall
                              .copyWith(color: AppColor.appBlack),
                          subTitleStyle: AppStyles.cardSubTitleSmall
                              .copyWith(color: AppColor.appBlack),
                          title: 'Johnson Doe Estate',
                          subtitle: 'Lekki, Lagos',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              Text(
                'Learn about Property',
                style: AppStyles.headerText.copyWith(color: AppColor.appBlack),
              ),
              const SizedBox(height: 18.0),
              SizedBox(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //height: 600,
                      width: width * 0.38,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 350,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/kitchen.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(height: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'How to add color to your kitchen: From color cabinets to fresh flowers',
                                style: AppStyles.cardTitleBig,
                              ),
                              const SizedBox(height: 12.0),
                              Text(
                                'Introduction: Achieving a colorful kitchen doesn\'t have to be expensive or difficult. There are variety of ways to add colors ...',
                                style: AppStyles.smallText,
                                textAlign: TextAlign.justify,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Container(
                      // height: 600,
                      width: width * 0.38,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 350,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/apartment.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(height: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '6 things to consider to choose the right furniture for your home like a pro',
                                style: AppStyles.cardTitleBig,
                              ),
                              const SizedBox(height: 12.0),
                              Text(
                                'Introduction: Considering the right furniture for your home is like building self awareness. Here is how to find the right furniture ...',
                                style: AppStyles.smallText,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                width: width,
                height: 500,
                decoration: const BoxDecoration(color: Color(0xfff6f6f6)),
                child: Column(
                  children: [
                    const SizedBox(height: 40.0),
                    Text(
                      'What people said about us',
                      style: AppStyles.headerText.copyWith(fontSize: 26.0),
                    ),
                    const SizedBox(height: 60.0),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Icon(
                              CupertinoIcons.back,
                              color: AppColor.appGrey,
                            ),
                            backgroundColor: AppColor.appWhite,
                          ),
                          const SizedBox(width: 12.0),
                          Container(
                            height: 250.0,
                            width: width * 0.65,
                            decoration: BoxDecoration(color: AppColor.appWhite),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 170.0,
                                    width: 170.0,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/profileLow.jpg'),
                                    ),
                                  ),
                                  const SizedBox(width: 50.0),
                                  Container(
                                    width: 340.0,
                                    child: Text(
                                      'This Platform is awesome. I got an apartment for my family in Lekki with a very easy process. Trusted and Guaranteed.',
                                      style: AppStyles.cardTitleBig.copyWith(
                                          color: AppColor.appGrey,
                                          fontSize: 20.0,
                                          height: 1.5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          CircleAvatar(
                            child: Icon(
                              CupertinoIcons.forward,
                              color: AppColor.appGrey,
                            ),
                            backgroundColor: AppColor.appWhite,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50.0),
              Container(
                height: 300.0,
                decoration: BoxDecoration(color: AppColor.appBlack),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Propertina',
                            style: AppStyles.boldText.copyWith(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                                color: AppColor.appWhite),
                          ),
                          const SizedBox(height: 20.0),
                          Text(
                            '18 Jenkins Avenue',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Lagos, Nigeria',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Praiseajepe@gmail.com',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 100.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FaIcon(FontAwesomeIcons.twitter,
                                  color: AppColor.appGrey2, size: 20.0),
                              const SizedBox(width: 18.0),
                              FaIcon(FontAwesomeIcons.instagram,
                                  color: AppColor.appGrey2, size: 20.0),
                              const SizedBox(width: 18.0),
                              FaIcon(FontAwesomeIcons.whatsapp,
                                  color: AppColor.appGrey2, size: 20.0)
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: AppStyles.boldText.copyWith(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                                color: AppColor.appWhite),
                          ),
                          const SizedBox(height: 20.0),
                          Text(
                            'Privacy Policy',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'About Us',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Trending Property',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 100.0),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customer Service',
                            style: AppStyles.boldText.copyWith(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                                color: AppColor.appWhite),
                          ),
                          const SizedBox(height: 20.0),
                          Text(
                            'How it Works',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Career',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'FAQs',
                            style: AppStyles.smallText.copyWith(
                                color: AppColor.appWhite, fontSize: 12.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OverlayCard extends StatelessWidget {
  const OverlayCard(
      {Key? key,
      required this.height,
      required this.width,
      required this.subTitleStyle,
      required this.titleStyle,
      required this.title,
      required this.image,
      required this.subtitle})
      : super(key: key);

  final double height;
  final double width;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 12.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20.0),
                height: 80.0,
                width: width * 0.28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: AppColor.appWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleStyle,
                      ),
                      const SizedBox(height: 2.0),
                      Row(
                        children: [
                          Icon(
                            Icons.pin_drop_rounded,
                            color: AppColor.appRed,
                            size: 20.0,
                          ),
                          Text(
                            subtitle,
                            style: AppStyles.cardSubTitleBig,
                          ),
                          const Spacer(),
                          const Icon(Icons.favorite_border_outlined, size: 28.0)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
