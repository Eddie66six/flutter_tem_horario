import 'package:mobx/mobx.dart';

part 'search_controller.g.dart';

class SearchController = _SearchBase with _$SearchController;

abstract class _SearchBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
