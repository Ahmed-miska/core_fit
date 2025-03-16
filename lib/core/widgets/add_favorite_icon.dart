import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';

class AddFavoriteIcon extends StatefulWidget {
  final bool isFavorite;
  final bool? isBorder;
  final Function()? onTap;

  const AddFavoriteIcon({
    super.key,
    required this.isFavorite,
    this.isBorder, this.onTap, 
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
      onPressed: () async {
        if (widget.onTap != null) {
          widget.onTap!();
        }
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      padding: EdgeInsets.zero,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.white),
        shape: WidgetStateProperty.all(const CircleBorder()),
        side: WidgetStateProperty.all(widget.isBorder == null ? BorderSide.none : const BorderSide(color: AppColors.grey, width: .5)),
      ),
      icon: Icon(Icons.favorite, color: isFavorite ? AppColors.main : AppColors.grey),
    );
  }
}
