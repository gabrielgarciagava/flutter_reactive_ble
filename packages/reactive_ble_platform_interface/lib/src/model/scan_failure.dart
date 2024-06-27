import 'package:meta/meta.dart';

enum ScanFailureCode {
  throttled,
  unknown,
}

@immutable
class ScanFailure {
  final ScanFailureCode code;

  final String message;

  final DateTime? retryDate;

  const ScanFailure({required this.code, required this.message, this.retryDate});

  @override
  String toString() => "$runtimeType(${[
        "code: $code",
        "message: \"$message\"",
        if (retryDate != null) "retryDate: $retryDate",
      ].join(", ")})";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScanFailure && code == other.code && message == other.message && retryDate == other.retryDate);

  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + code.hashCode;
    result = 37 * result + message.hashCode;
    result = 37 * result + retryDate.hashCode;
    return result;
  }
}
