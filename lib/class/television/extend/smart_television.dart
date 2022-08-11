//升級智慧連網電視
import '../television.dart';

class SmartTelevision extends Television {
  final String wifiSSD;

  SmartTelevision(
      {required this.wifiSSD, required super.model, required super.initCh});

  @override
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _upgradeApps();
  }

  void _bootNetworkInterface() {
    print('Connecting to wifi: $wifiSSD');
  }

  void _upgradeApps() {
    print('Checking apps upgrade...');
  }
}

void main() {
  //老電視
  final Television oldTV = Television(initCh: 0, model: 'CRV-001');
  oldTV.turnOn();

  //智慧連網電視
  final SmartTelevision smartTV =
      SmartTelevision(wifiSSD: 'MyWiFi', model: 'Smart-001', initCh: 0);
  //繼承了父類的實作(property, variables, methods)
  smartTV.turnOn();
  smartTV.model;
  smartTV.initCh;
  smartTV.changeCh(10);

  //繼承了父類的型態
  // final Television smartTV2 =
  //     SmartTelevision(wifiSSD: 'MyWiFi', model: 'Smart-001', initCh: 0);
  // smartTV2.turnOn();
  // smartTV2.wifiSSD;
}
