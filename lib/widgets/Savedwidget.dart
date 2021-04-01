import 'package:flutter/material.dart';

class Savedwidget extends StatelessWidget {
  final String location;
  final int cases;
  final String zone;
  final bool isBookmarked;
  final Function savedFunc;
  Savedwidget({
    this.location,
    this.cases,
    this.zone,
    this.isBookmarked,
    this.savedFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Card(
        elevation: 3,
        color: zone == "Safe"
            ? Color(0xffBCD49D)
            : zone == "Medium Risk"
                ? Color(0xffdec649)
                : Color(0xffd26666),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    location.toUpperCase() +
                        '\n' +
                        "${cases.toString()} cases" +
                        '\n' +
                        "${zone} Zone",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: isBookmarked
                    ? Icon(
                        Icons.bookmark,
                      )
                    : Icon(
                        Icons.bookmark_border,
                      ),
                onPressed: savedFunc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
