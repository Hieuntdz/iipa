import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../model/past_purchase.dart';

class IAPRepo extends ChangeNotifier {
  bool hasActiveSubscription = false;
  bool hasUpgrade = false;
  List<PastPurchase> purchases = [];

  void updatePurchases() {
    purchases = [];
    hasActiveSubscription = false;
    hasUpgrade = false;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
