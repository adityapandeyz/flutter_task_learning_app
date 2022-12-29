import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_learning_app/utils/colors.dart';
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
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 3
                            : 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: (2 / 1),
                      ),
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        return GestureDetector(
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 30,
                                  child: SvgPicture.asset(
                                    'assets/svg_icons/forum_black_24dp 1.svg',
                                    color: Colors.grey,
                                  ),
                                ),
                                Text('Programs'),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Programs for you',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  'View all',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 3
                        : 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: (2 / 1),
              ),
              itemBuilder: (
                context,
                index,
              ) {
                return GestureDetector(
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/svg_icons/forum_black_24dp 1.svg',
                            color: Colors.grey,
                          ),
                        ),
                        Text('Programs'),
                      ],
                    ),
                  ),
                );
              },
            )
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
