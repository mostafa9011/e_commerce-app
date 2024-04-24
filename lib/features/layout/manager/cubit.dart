import 'package:e_commerce_app/features/layout/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../views/account/account_view.dart';
import '../views/category/category_view.dart';
import '../views/favorite/favorite_view.dart';
import '../views/home/home_view.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(ChangeCurrentBottomNavBarIndex());

  static HomeCubit get(context) => BlocProvider.of(context);

  var widgets = <Widget>[
    const HomeView(),
    const CategoryView(),
    const FavoriteView(),
    const AccountView(),
  ];

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  changeBottomNavBarIndex(int v) {
    _currentIndex = v;
    emit(ChangeCurrentBottomNavBarIndex());
  }
}
