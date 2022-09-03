import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
       
        isDense: true,
        filled: true,
        fillColor: kWhite.withOpacity(0.5),
        hintText: "Search your favourite song",
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.grey.shade400,
            ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey.shade400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
