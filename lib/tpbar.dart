import 'package:flutter/material.dart';
import 'package:devnest/list_ty.dart';

class Conter extends StatefulWidget {
  final int activeContainer;
  final ValueChanged<int> onContainerChange;

  const Conter({
    super.key,
    required this.activeContainer,
    required this.onContainerChange,
  });

  @override
  _ConterState createState() => _ConterState();
}

class _ConterState extends State<Conter> {
  String processStatus = "none";
  // Get the title text based on the active container
  String getTitleText() {
    switch (widget.activeContainer) {
      case 1:
        return "Extension Config.";
      case 2:
        return "Genome Customization.";
      default:
        return "System Setup & Config.";
    }
  }

  // Callback to handle processStatus changes from ListTy
  void handleProcessStatusChange(String status) {
    setState(() {
      processStatus = status;
    });
  }

  void updateContainerChange(int index) {
    setState(() {
      processStatus = "none"; // Reset processStatus
      widget.onContainerChange(index); // Notify parent about the change
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getTitleText(),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 138, 153, 177),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Linux Dev Setup",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 230, 237, 248),
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                _buildContainer(0, Color(0xffA8BBD6), "System", "1/3"),
                SizedBox(width: 25),
                _buildContainer(1, Color(0xff686FBB), "Extension", "2/3"),
                SizedBox(width: 25),
                _buildContainer(2, Color(0xff517A8E), "Customize", "3/3"),
              ],
            ),
          ],
        ),
        SizedBox(height: 32),
        ListTy(
          updateContainerChange: updateContainerChange,
          activeContainer: widget.activeContainer,
          onProcessStatusChange: handleProcessStatusChange,
        ),
      ],
    );
  }

  Widget _buildContainer(int index, Color color, String text, String text2) {
    bool isActive = index == widget.activeContainer;

    return GestureDetector(
      // onTap: () {
      //   setState(() {
      //     widget.onContainerChange(index); // Notify parent about the change
      //     processStatus = "none"; // Reset processStatus to "none"
      //   });
      //   // widget.onContainerChange(index); // Notify parent about the change
      //   // processStatus="none";
      // },
      child: AnimatedContainer(
        width: 180,
        height: 85,
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: color.withAlpha(isActive ? 255 : 50),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: isActive ? Color(0xffffffff) : Colors.transparent,
            width: isActive ? 5 : 0,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  color: isActive
                      ? Colors.white
                      : const Color.fromARGB(100, 255, 255, 255),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: Text(
                text2,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: isActive
                      ? Colors.white
                      : const Color.fromARGB(113, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
