import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cardView() {
  return Container(
    margin: EdgeInsets.all(20.w),
    width: 325.w,
    height: 200.w,
    child: Card(
      color: Colors.green[50],
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name: ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vehicle Number: ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vehicle Name: ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    // Add edit functionality
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget nearbyStationsView() {
  return Column(
    children: [
      Container(
        width: 325.w,
        height: 160.h,
        child: PageView(
          children: [
            Container(
              width: 325.w,
              height: 162.h,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.h),
                ),
              ),
            ),
            Container(
              width: 325.w,
              height: 162.h,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.h),
                ),
              ),
            ),
            Container(
              width: 325.w,
              height: 162.h,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.h),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
