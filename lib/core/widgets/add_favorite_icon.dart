import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';

class AddFavoriteIcon extends StatefulWidget {
  final bool isFavorite;
  const AddFavoriteIcon({
    super.key, required this.isFavorite,
  });

  @override
  State<AddFavoriteIcon> createState() => _AddFavoriteIconState();
}

class _AddFavoriteIconState extends State<AddFavoriteIcon> {
  bool isFavorite = false;
  @override
  void initState() {
    isFavorite = widget.isFavorite;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      padding: EdgeInsets.zero,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.white),
        shape: WidgetStateProperty.all(const CircleBorder()),
      ),
      icon: Icon(Icons.favorite, color: isFavorite ? AppColors.main : AppColors.grey),
    );
  }
}
