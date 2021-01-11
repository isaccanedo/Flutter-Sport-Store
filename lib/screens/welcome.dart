import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_store/utils/constant.dart';
import 'package:sport_store/widgets/button.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(context),
    );
  }

  static String imgUrl =
      'https://images.unsplash.com/photo-1576511746411-510144757185?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=90';

  body(BuildContext context) {
    return Container(
      height: Get.mediaQuery.size.height,
      width: Get.mediaQuery.size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
      padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Welcome!',
            style: GoogleFonts.montserrat(
                color: white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Text(
              'Nothing is Impossible',
              style: GoogleFonts.montserrat(
                color: lightGrey,
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ReusableButton(
            onPressed: () {},
            child: Text(
              'SHOP MEN',
              style: GoogleFonts.montserrat(
                  fontSize: 18, color: white, fontWeight: FontWeight.normal),
            ),
            height: 50,
            minWidth: 165,
            borderRadius: 15,
            color: teal,
          ),
          SizedBox(height: 20),
          ReusableButton(
            onPressed: () {},
            child: Text(
              'SHOP WOMEN',
              style: GoogleFonts.montserrat(
                  fontSize: 18, color: lightGrey, fontWeight: FontWeight.w200),
            ),
            height: 50,
            minWidth: 160,
            borderRadius: 15,
            borderSide: BorderSide(
              color: lightGrey,
              width: 1,
            ),
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SKIP',
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: lightGrey,
                    fontWeight: FontWeight.normal),
              ),
              Icon(
                Icons.arrow_forward,
                color: lightGrey,
              )
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ReusableButton(
                    onPressed: () {},
                    child: Text(
                      'LOGIN',
                      style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: lightGrey,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  VerticalDivider(
                    color: lightGrey,
                    indent: 255,
                    endIndent: 10,
                    // thickness: ,
                  ),
                  ReusableButton(
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: lightGrey,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
