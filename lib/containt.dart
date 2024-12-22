import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:devnest/timer.dart';

class Containt extends StatelessWidget {
  final String currentTaskName;
  final String currentTaskdes;
  final String processStatus;
  final String selectedimg;
  final Color textColor;
  final int activeContainer;
  final VoidCallback handleNextTask;
  final bool isFirstComplte;
  final bool isSecComplte;
  final bool isTrairdComplte;
  final VoidCallback handleAllTasks;

  const Containt({
    super.key,
    required this.currentTaskName,
    required this.currentTaskdes,
    required this.processStatus,
    required this.selectedimg,
    required this.textColor,
    required this.activeContainer,
    required this.handleNextTask,
    required this.isFirstComplte,
    required this.isSecComplte,
    required this.isTrairdComplte,
    required this.handleAllTasks,
  });

  @override
  Widget build(BuildContext context) {
    var showcont = false;
    if (processStatus == "none" || processStatus == "finish") {
      if (activeContainer == 0 && !isFirstComplte) {
        showcont = true;
        // Logic for activeContainer 0 when isFirstComplete is false
      } else if (activeContainer == 1 && !isSecComplte) {
        showcont = true;
        // Logic for activeContainer 1 when isSecComplete is false
      } else if (activeContainer == 2 && !isTrairdComplte) {
        showcont = true;
        // Logic for activeContainer 2 when isThirdComplete is false
      } else {
        showcont = false;
        // Logic for when none of the above conditions are met
      }
    } else {
      showcont = true;
      // Logic for when processStatus is not "none" or "finish"
    }

    print(showcont);

    return Stack(
      fit: StackFit.expand,
      children: [
        // Background image
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            "assets/images/dribbble_narrow_lane.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: Container(
            color: const Color.fromARGB(100, 21, 28, 38),
          ),
        ),

        // Task title
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Outer Visibility: Controls visibility of the whole task information
              Visibility(
                visible: showcont && processStatus != "processing",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentTaskName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      currentTaskdes,
                      style: TextStyle(
                        color: const Color(0xff808b9e),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
              // Inner Visibility: Controls visibility of the image when processing
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Other Widgets...
                    Visibility(
                      visible: processStatus == "processing",
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          selectedimg,
                          width: 300,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: processStatus == "processing",
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Hang tight, we’re updating things for you!",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )),
                    ),
                    Visibility(
                      visible: !showcont && activeContainer != 2,
                      child: CountdownWidget(),
                    ),
                    Visibility(
                      visible: !showcont,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            activeContainer == 0 || activeContainer == 1
                                ? "Section Complete! Forwarding for the Next Step."
                                : "Setup Complete and Linux Configured",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Visibility(
                      visible: !showcont,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          activeContainer == 0 || activeContainer == 1
                              ? ""
                              : "Explore the World of Linux Development and Ignite \n Your Inspiration to Start Building Now!",
                          style: TextStyle(
                              color: const Color.fromARGB(162, 255, 255, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        // Action buttons
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Container(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // TextButton(
                //   style: ButtonStyle(
                //     padding: WidgetStateProperty.all(
                //       EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                //     ),
                //     shape: WidgetStateProperty.all(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         side: BorderSide(
                //           color: Colors.white,
                //           width: 2,
                //         ),
                //       ),
                //     ),
                //   ),
                //   onPressed: handleNextTask,
                //   child: Text(
                //     "Skip",
                //     style: TextStyle(color: Colors.white, fontSize: 18),
                //   ),
                // ),
                // SizedBox(width: 16),
                Visibility(
                  visible: showcont && processStatus != "processing",
                  child: TextButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    onPressed: handleNextTask,
                    child: Text(
                      "Install",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Visibility(
                  visible: showcont && processStatus != "processing",
                  child: TextButton(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        textColor,
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: handleAllTasks,
                    child: Text(
                      "Install All",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 10, 16, 27),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
