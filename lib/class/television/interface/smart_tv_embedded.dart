import '../television.dart';

//植入網路智慧模組
abstract class SmartTvEmbedded {
  void bootNetworkInterface();

  void upgradeApps();
}

// abstract class HDR4K {
//   void enableHDR4K();
// }

//藉由植入模組升級的智慧電視
class CheapSmartTelevision extends Television implements SmartTvEmbedded {
  final String wifiSSD;

  CheapSmartTelevision(
      {required this.wifiSSD, required super.model, required super.initCh});

  @override
  void turnOn() {
    super.turnOn();
    bootNetworkInterface();
    upgradeApps();
  }

  @override
  void bootNetworkInterface() {
    print('Connecting to wifi: $wifiSSD');
  }

  @override
  void upgradeApps() {
    print('Checking apps upgrade...');
  }
}

void main() {
  //老電視
  final Television oldTV = Television(initCh: 0, model: 'CRV-001');
  oldTV.turnOn();
  oldTV.changeCh(10);

  //升級的智慧電視
  final CheapSmartTelevision smartTV =
      CheapSmartTelevision(model: 'Smart-002', initCh: 0, wifiSSD: 'MyWIFI');
  smartTV.turnOn();
  smartTV.changeCh(10);

  //也繼承了interface的型態
  // final SmartTvEmbedded smartTVEmbedded =
  // CheapSmartTelevision(model: 'Smart-002', initCh: 0, wifiSSD: 'MyWIFI');
  // smartTVEmbedded.turnOn();
  // smartTVEmbedded.changeCh(10);
  // smartTVEmbedded.bootNetworkInterface();
  // smartTVEmbedded.upgradeApps();
}
