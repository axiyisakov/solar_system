import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_state.dart';

class MainCubit extends Cubit<int> {
  final CupertinoTabController _controller;
  MainCubit()
      : _controller = CupertinoTabController(
          initialIndex: 0,
        ),
        super(0);
  void changePage(int index) {
    _controller.index = index;
    emit(index);
  }

  CupertinoTabController get controller => _controller;

  @override
  Future<void> close() {
    _controller.dispose();
    return super.close();
  }
}
