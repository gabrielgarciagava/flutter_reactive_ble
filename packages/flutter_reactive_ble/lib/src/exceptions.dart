import 'package:reactive_ble_platform_interface/reactive_ble_platform_interface.dart';

class ScanException implements Exception {
  ScanException(this.failure);

  final ScanFailure failure;
}
