import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SearchForStaduimBar extends StatefulWidget {
  const SearchForStaduimBar({
    super.key,
  });

  @override
  State<SearchForStaduimBar> createState() => _SearchForStaduimBarState();
}

class _SearchForStaduimBarState extends State<SearchForStaduimBar> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: controller,
      leading: controller.text.isEmpty
          ? null
          : InkWell(
              onTap: () {
                setState(() {
                  controller.clear();
                });
              },
              child: const Icon(Icons.close, color: AppColors.red, size: 24),
            ),
      padding: WidgetStateProperty.all(const EdgeInsets.only(left: 8)),
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: WidgetStateProperty.all(AppColors.lightGrey),
      hintText: 'Search for Staduim',
      hintStyle: WidgetStateProperty.all(TextStyles.font12Gray400),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      trailing: Iterable.castFrom([const Padding(padding: EdgeInsets.all(12), child: Icon(Icons.search, color: AppColors.main, size: 32))]),
    );
  }
}
