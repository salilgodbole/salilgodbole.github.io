import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ViewFullReport extends StatelessWidget {
  const ViewFullReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIHelper.defaultAppBar(context, title: 'Full Report', showBackButton: true),
      body: Center(
        child: DefaultLabelField('Full Report will be shown here'),
      ),
    );
  }
}
