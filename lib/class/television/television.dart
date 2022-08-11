//傳統電視
class Television {
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
