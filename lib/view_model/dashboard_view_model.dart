import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardViewModel = ChangeNotifierProvider((ref) => DashboardViewModel());

class DashboardViewModel extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;
  void setCurrentPage(int pageIndex) {
    _currentPage = pageIndex;
    notifyListeners();
  }
}
