import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class DashboardCard extends StatelessWidget {
  DashboardCard({@required this.title, @required this.image, this.routeName});

  final String image;
  final String title;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, routeName);
        },
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white ,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                image,
                height: 128,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
