import 'package:mobx/mobx.dart';

class ErrorContext {
  final ObservableSet<ConstraintError> errors = ObservableSet();

  bool get isEmpty => errors.isEmpty;

  // ignore: avoid_returning_this
  ErrorContext reset() {
    errors.clear();
    return this;
  }

  void addErrorMessage(String message) => errors.add(ConstraintError(message));

  void addError(ConstraintError error) => errors.add(error);

  // void updateError(ConstraintError error, bool valid) {
  //   if (valid) {
  //     if (!errors.contains(error)) {
  //       addError(error);
  //     }
  //   } else {
  //     reset();
  //   }
  // }
  // void update(String error, bool valid) {
  //   if (valid) {
  //     errors.firstWhere((e) => e.message == error, orElse: () {
  //       addErrorMessage(error);
  //       return null;
  //     });
  //   } else {
  //     reset();
  //   }
  // }
  // void map(Map<String, bool> map) {
  //   // var reset_ = false;
  //   map.forEach((error, shouldExist) {
  //     if (shouldExist) {
  //       errors.firstWhere((e) => e.message == error, orElse: () {
  //         addErrorMessage(error);
  //         return null;
  //       });
  //     } else {
  //       var x = errors.firstWhere((e) => e.message == error, orElse: () {
  //         addErrorMessage(error);
  //         return null;
  //       });

  //       if (x != null) {}
  //     }
  //     // } else {
  //     // reset();
  //     // reset_ = true;
  //     // }
  //   });
  //   // if (valid) {
  //   //   errors.firstWhere((e) => e.message == error, orElse: () {
  //   //     addErrorMessage(error);
  //   //     return null;
  //   //   });
  //   // } else {
  //   // if (reset_) {
  //   //   reset();
  //   // }
  //   // }
  // }

  void map(Map<String, bool> map) {
    // Do we need to reset?
    for (var msg in map.keys) {
      var isError = map[msg];
      var found =
          errors.firstWhere((e) => e.message == msg, orElse: () => null);
      if (!isError && found != null) {
        reset();
        break;
      }
    }
    map.forEach((msg, isError) {
      if (isError) {
        errors.firstWhere((e) => e.message == msg, orElse: () {
          addErrorMessage(msg);
          return null;
        });
      }
    });
  }
}

class ConstraintError extends Error {
  ConstraintError(this.message);

  final String message;
}

// class XXX {
//   String error;
//   bool valid;
// }
