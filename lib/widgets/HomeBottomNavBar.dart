import 'package:flutter/material.dart';
import 'package:teda1/pages/AddNewProduct.dart';
import 'package:teda1/pages/ProfilePage.dart';
import 'package:teda1/widgets/BottomCartSheet.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class HomeBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF475269),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddNewProduct(),
              ),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {
              showSlidingBottomSheet(context, builder: (context) {
                return SlidingSheetDialog(
                  elevation: 8,
                  cornerRadius: 16,
                  builder: (context, state) {
                    return BottomCartSheet();
                  },
                );
              });
            },
            child: Icon(
              Icons.bookmark_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>ProfilePage(),
              ),
            ),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
