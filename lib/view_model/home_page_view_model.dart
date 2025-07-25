import 'package:monthly_budget_manager/state/home_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_view_model.g.dart';

@Riverpod(keepAlive: true)
class HomePageViewModel extends _$HomePageViewModel {
  
  @override
  HomePageState build() {
    return HomePageState();
  }
}