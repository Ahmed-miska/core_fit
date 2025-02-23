import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final Function()? onClear;
  final Function()? onSearch;
  const CustomSearchBar({super.key, required this.controller, this.onClear, this.onSearch});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  void initState() {
    widget.controller.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: widget.controller,
      leading: widget.controller.text.isEmpty
          ? null
          : InkWell(
              onTap: widget.onClear,
              child: const Icon(Icons.close, color: AppColors.red, size: 24),
            ),
      padding: WidgetStateProperty.all(const EdgeInsets.only(left: 8)),
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: WidgetStateProperty.all(AppColors.lightGrey),
      hintText: 'search for stores',
      hintStyle: WidgetStateProperty.all(TextStyles.font12Gray400),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      trailing: Iterable.castFrom([
        InkWell(
          onTap: widget.onSearch,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.main,
            ),
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(Icons.search, color: AppColors.white, size: 32),
            ),
          ),
        )
      ]),
    );
  }
}
