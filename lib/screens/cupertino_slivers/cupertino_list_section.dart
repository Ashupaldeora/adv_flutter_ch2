import 'package:flutter/cupertino.dart';

import 'components/multi_selection_list_section.dart';
import 'components/single_selection_list_section.dart';

class CupertinoListSectionExample extends StatelessWidget {
  const CupertinoListSectionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: "Back",
        middle: Text("Cupertino List Enhanced"),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 68,
          ),
          CupertinoButton(
              onPressed: () => Navigator.of(context).pushNamed('/settings'),
              child: SingleSelectionListSelection()),
          MultiSelectionListSection(),
        ],
      ),
    );
  }
}
