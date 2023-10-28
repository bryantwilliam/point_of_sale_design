import 'package:flutter/material.dart';

class CurrentOrderWidget extends StatelessWidget {
  const CurrentOrderWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    double padding = height * 0.038;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      color: Colors.grey[50],
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: padding),
            child: CurrentOrderTopBarWidget(
              height: height * 0.05,
            ),
          ),
          Container(
            height: height * 0.4,
            color: Colors.red,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}

class CurrentOrderTopBarWidget extends StatelessWidget {
  const CurrentOrderTopBarWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Current Order",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900],
                      fontSize: height * 0.6,
                    ),
              ),
            ),
          ),
          SizedBox(
            height: height,
            width: height * 2.1,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[50],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Clear All',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.3,
                ),
              ),
            ),
          ),
          SizedBox(
            width: height * 0.4,
          ),
          SizedBox(
            height: height,
            width: height,
            child: FittedBox(
              child: IconButton(
                padding: EdgeInsets.zero,
                iconSize: height * 0.65,
                onPressed: () {},
                icon: const Icon(Icons.settings),
                style: IconButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(13),
                    ),
                  ),
                  fixedSize: Size(
                    height,
                    height,
                  ),
                  backgroundColor: Colors.blueGrey[50],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
