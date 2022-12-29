import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_learning_app/utils/colors.dart';
import 'package:flutter_task_learning_app/widgets/course_square.dart';
import 'package:flutter_task_learning_app/widgets/rectangle_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 100,
        backgroundColor: headColor,
        leading: SizedBox(
          width: 18,
          child: SvgPicture.asset(
            'assets/svg_icons/menu.svg',
            color: Colors.grey,
          ),
        ),
        actions: [
          SizedBox(
            width: 24,
            child: SvgPicture.asset(
              'assets/svg_icons/forum_black_24dp 1.svg',
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 24,
            child: SvgPicture.asset(
              'assets/svg_icons/Icon.svg',
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 18,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: headColor,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Priya!',
                      style: GoogleFonts.lora(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'What do you wanna learn today?',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      childAspectRatio: 8.0 / 9.0,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: const <Widget>[
                        RectangleButton(
                          svgLink: 'assets/svg_icons/programs.svg',
                          title: 'Programs',
                        ),
                        RectangleButton(
                          svgLink: 'assets/svg_icons/get_help.svg',
                          title: 'Get Help',
                        ),
                        RectangleButton(
                          svgLink: 'assets/svg_icons/learn.svg',
                          title: 'Learn',
                        ),
                        RectangleButton(
                          svgLink: 'assets/svg_icons/dd_tracker.svg',
                          title: 'DD Tracker',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Programs for you',
                    style: GoogleFonts.lora(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View all',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                        child: SvgPicture.asset(
                          'assets/svg_icons/arrow_forward.svg',
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              childAspectRatio: 8.0 / 9.0,
              padding: const EdgeInsets.all(18),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: const <Widget>[
                CourseSquare(
                  imgLink:
                      'https://cdn.dribbble.com/users/1099127/screenshots/6466583/mommom.jpg',
                  title: 'A complete guide for your new born baby',
                  category: 'Lifestyle',
                  lessonCount: 16,
                ),
                CourseSquare(
                  imgLink:
                      'https://cdn.dribbble.com/users/1099127/screenshots/6466583/mommom.jpg',
                  title: 'Understanding of human behaviour',
                  category: 'Working Parents',
                  lessonCount: 12,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}
