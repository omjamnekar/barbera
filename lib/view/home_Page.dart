import 'package:barbera/theme/color.dart';
import 'package:barbera/theme/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  List<String> _services = [
    "Haircut",
    "Beard",
    "Facial",
    "Hair Color",
    "Hair Spa",
    "Hair Styling",
    "Hair Treatment",
    "Shave",
    "Threading",
    "Waxing"
  ];
  List<String> _servicesImages = [
    "assets/images/services/haircut.jpg",
    "assets/images/services/beard.jpg",
    "assets/images/services/facial.jpg",
    "assets/images/services/haircolor.jpg",
    "assets/images/services/hairspa.jpg",
    "assets/images/services/hairstyling.jpg",
    "assets/images/services/hairtreatment.jpg",
    "assets/images/services/shave.jpg",
    "assets/images/services/threading.jpg",
    "assets/images/services/waxing.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeFrame(context).width / 0.9,
      padding: EdgeInsets.symmetric(horizontal: PaddingFrame.p10 + 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: MarginFrame.m60),
            width: SizeFrame(context).width / 1.3,
            child: Text(
              'It\'s time to fix that messy hair!',
              style: GoogleFonts.ptSans(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                height: 1, // Decrease the line height
              ),
            ),
          ),
          Gap(30),
          Container(
            width: SizeFrame(context).width,
            padding: EdgeInsets.all(PaddingFrame.p20),
            decoration: BoxDecoration(
              color: ColorFrame().getBlackShade(context).withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'No Appointments Yet!',
                  style: GoogleFonts.ptSans(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: ColorFrame().getWhiteShade(context),
                  ),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        Gap(10),
                        Text(
                          'Book an appointment',
                          style: GoogleFonts.ptSans(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: ColorFrame().getWhiteShade(context),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: ColorFrame().getWhiteShade(context),
                          backgroundColor: ColorFrame().getWhiteShade(context)),
                      child: Text(
                        'Book Now',
                        style: GoogleFonts.ptSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: ColorFrame().getBlackShade(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(20),
          Container(
            width: SizeFrame(context).width,
            padding: EdgeInsets.all(PaddingFrame.p20),
            decoration: BoxDecoration(
              color: ColorFrame().getBlackShade(context).withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/haircut.jpg',
                ),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.darken),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Summer Offer',
                      style: GoogleFonts.ptSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: ColorFrame().getWhiteShade(context),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(PaddingFrame.p10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorFrame().getWhiteShade(context),
                        ),
                      ),
                      child: Text(
                        'Summer50',
                        style: GoogleFonts.ptSans(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: ColorFrame().getWhiteShade(context),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '40% off',
                  style: GoogleFonts.ptSans(
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                    color: ColorFrame().getWhiteShade(context),
                  ),
                ),
                Text(
                  'get your first haircut with amazing offers',
                  style: GoogleFonts.ptSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    color: ColorFrame().getWhiteShade(context),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MarginFrame.m30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Services',
                      style: GoogleFonts.ptSans(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: ColorFrame()
                            .getBlackShade(context)
                            .withOpacity(0.5),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View All',
                      style: GoogleFonts.ptSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: ColorFrame()
                            .getBlackShade(context)
                            .withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                Gap(20),
                Container(
                  height: SizeFrame(context).height / 4,
                  child: ListView.builder(
                    itemCount: _services.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(right: PaddingFrame.p10),
                        margin: EdgeInsets.only(bottom: MarginFrame.m10),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CircleAvatar(
                                radius: 40,
                                child: Image.asset(
                                  height: 80,
                                  _servicesImages[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Gap(10),
                            Text(
                              _services[index],
                              style: GoogleFonts.ptSans(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: ColorFrame()
                                    .getBlackShade(context)
                                    .withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
