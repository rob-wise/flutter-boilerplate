// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  int pressCount = 0;


  /// Adds [] to cart. This is the only way to modify the cart from outside.
  void add(int numToAdd) {
    print("Someone added in the counter model");
    pressCount += numToAdd;
    notifyListeners();
  }
}