import 'package:basera/core/resources/color_manager.dart';
import 'package:basera/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DateFilterButton extends StatefulWidget {
  const DateFilterButton({
    super.key,
    // required this.onDateSelected,
  });

  // final ValueChanged<DateTime> onDateSelected;

  @override
  State<DateFilterButton> createState() => _DateFilterButtonState();
}

class _DateFilterButtonState extends State<DateFilterButton> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final bool isToday =
        selectedDate.year == DateTime.now().year &&
        selectedDate.month == DateTime.now().month &&
        selectedDate.day == DateTime.now().day;

    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          setState(() {
            selectedDate = pickedDate;
          });

          // widget.onDateSelected(pickedDate);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: ColorManager.darkBlue,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorManager.white.withValues(alpha: .08)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              isToday ? "Today" : DateFormat("dd MMM").format(selectedDate),
              style: StylesManager.lableLine(),
            ),
            SizedBox(width: 6.w),
            const Icon(
              Icons.calendar_today_outlined,
              size: 18,
              color: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}
