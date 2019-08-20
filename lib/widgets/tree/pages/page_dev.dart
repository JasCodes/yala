import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/widgets/components/views/form_wizard/view_form_wizard.dart';

class ViewDev extends HookWidget {
  ViewDev({Key key}) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    return ComponentFormWizard(
      children: [
        ViewFormWizardItem(
          index: 0,
          title: 'Select Client',
          isValidated: false,
          child: Center(
            child: Text('Select Client'),
          ),
        ),
        ViewFormWizardItem(
          index: 1,
          title: 'Invoice Details',
          isValidated: false,
          child: Center(
            child: Text('Invoice Details'),
          ),
        ),
        ViewFormWizardItem(
          index: 2,
          title: 'Send Invoice',
          isValidated: false,
          child: Center(
            child: Text('Select Invoice'),
          ),
        ),
      ],
    );
  }
}

// return ComponentFormWizard(
//       children: [
//         ComponentFormWizardItem(
//           index: 0,
//           title: 'Select Client',
//           builder: (context, validated) {
//             return Center(
//               child: Text('Select Client'),
//             );
//           },
//         ),
//         ComponentFormWizardItem(
//           index: 1,
//           title: 'Invoice Details',
//           builder: (context, validated) {
//             return Center(
//               child: Text('Invoice Details'),
//             );
//           },
//         ),
//         ComponentFormWizardItem(
//           index: 2,
//           title: 'Send Invoice',
//           builder: (context, validated) {
//             return Center(
//               child: Text('Send Invoice'),
//             );
//           },
//         ),
//       ],
//     );
