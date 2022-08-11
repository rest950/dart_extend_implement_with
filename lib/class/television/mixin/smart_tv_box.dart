mixin SmartTVBox {
  late final String wifiSSD;

  void bootNetworkInterface(String wifiSSD) {
    this.wifiSSD = wifiSSD;
    print('Connecting to wifi: $wifiSSD');
  }

  void upgradeApps() {
    print('Checking apps upgrade...');
  }
}

// mixin HDR4KConverter {
//   void enableHDR4K() {
//     print('Enable 4KHRD...');
//   }
// }

//傳統電視
class Television with SmartTVBox {
  final String model;
  final int initCh;
  late int currentCh;

  Television({required this.model, required this.initCh}) {
    currentCh = initCh;
  }

  //開機
  void turnOn() {
    print('TV Model: $model');
    _displayScreen();
    _trackingIrSensor();
    print('Init CH: $initCh');

    //mixin functions
    bootNetworkInterface('MyWiFi');
    upgradeApps();
    // enableHDR4K();
  }

  void changeCh(int newCh) {
    currentCh = newCh;
    print('Current CH: $currentCh');
  }

  //顯示螢幕
  void _displayScreen() {
    print('Power on! Display Screen');
  }

  //追蹤遙控器訊號
  void _trackingIrSensor() {
    print('Tracking Ir Signal...');
  }
}

void main() {
  //老電視
  final Television oldTV = Television(initCh: 0, model: 'CRV-001');
  oldTV.turnOn();
  oldTV.changeCh(10);

  //老電視加智慧電視盒
  // final Television oldTvWithBox =
  //     Television(model: 'TV-withBox-001', initCh: 1);
  // oldTvWithBox.turnOn();

  // final SmartTVBox oldTvWithBox2 = Television(initCh: 0, model: 'CRV-001');
  // final HDR4KConverter oldTvWithBox3 = Television(initCh: 0, model: 'CRV-001');
}
