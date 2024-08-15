import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();

  String get searchQuery => searchController.text;

  void updateSearchQuery(String query) {
    searchController.text = query;
    notifyListeners();
  }

  void clearSearchQuery() {
    searchController.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
