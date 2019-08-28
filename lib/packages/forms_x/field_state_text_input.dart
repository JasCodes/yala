// import 'package:flutter/material.dart';
// import 'package:yala/packages/mobx_forms/field_state.dart';

// class FieldStateTextInput extends FieldState<String> {
//   final FocusNode focusNode;
//   final FocusNode nextFocusNode;
//   final void Function(String) onSubmitted;
//   TextInputAction textInputAction;

//   FieldStateTextInput({
//     key,
//     name,
//     label,
//     value,
//     validator,
//     asyncValidator,
//     validationPolicy = ValidationPolicy.manual,
//     this.textInputAction = TextInputAction.done,
//     this.nextFocusNode,
//     this.onSubmitted,
//   })  : focusNode = FocusNode(),
//         super(
//           name: name,
//           label: label,
//           value: value,
//           validator: validator,
//           asyncValidator: asyncValidator,
//           validationPolicy: validationPolicy,
//         ) {
//     if (textInputAction != null && nextFocusNode != null) {
//       textInputAction = TextInputAction.next;
//     }
//   }
// }
