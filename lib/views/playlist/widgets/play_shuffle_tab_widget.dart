import "package:flutter/material.dart";
import 'package:music_app_ui/core/constants/colors.dart';
import 'package:music_app_ui/core/constants/constants.dart';

class PlayShuffleTab extends StatefulWidget {
  const PlayShuffleTab({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayShuffleTab> createState() => _PlayShuffleTabState();
}

class _PlayShuffleTabState extends State<PlayShuffleTab> {
  bool isPlay = true;
  @override
  Widget build(BuildContext context) {
    Size screenDimension = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          isPlay = !isPlay;
        });
      },
      child: Container(
        height: 50,
        width: screenDimension.width,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: isPlay ? 0 : screenDimension.width * 0.45,
              child: Container(
                height: 50,
                width: screenDimension.width * 0.45,
                decoration: BoxDecoration(
                  color: kTopColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Play",
                          style: TextStyle(
                            color: isPlay ? kWhite : kTopColor,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      k10Width,
                      Icon(
                        Icons.play_circle,
                        color: isPlay ? kWhite : kTopColor,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Shuffle",
                          style: TextStyle(
                            color: isPlay ? kTopColor : kWhite,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      k10Width,
                      Icon(
                        Icons.shuffle,
                        color: isPlay ? kTopColor : kWhite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
