import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

part 'SampleMobx.g.dart';

class SampleStore = _SampleStore with _$SampleStore;

abstract class _SampleStore extends MobxBase with Store {
  /// Example Counter in Store
  @observable
  int counter = 0;

  /// The Action button in Store
  @action
  addUp() {
    this.counter++;
  }

  @override
  void dispose() {}
}
