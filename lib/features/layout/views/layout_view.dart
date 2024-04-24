import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/cubit.dart';
import '../manager/states.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            body: cubit.widgets[cubit.currentIndex],
            bottomNavigationBar: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: cubit.changeBottomNavBarIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: cubit.currentIndex == 0
                        ? Image.asset("assets/icons/selected_home.png")
                        : Image.asset("assets/icons/home_icn.png"),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: cubit.currentIndex == 1
                        ? Image.asset("assets/icons/selected_category.png")
                        : Image.asset("assets/icons/category_icn.png"),
                    label: "Category",
                  ),
                  BottomNavigationBarItem(
                    icon: cubit.currentIndex == 2
                        ? Image.asset("assets/icons/selected_favorite.png")
                        : Image.asset("assets/icons/favorite_icn.png"),
                    label: "Favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: cubit.currentIndex == 3
                        ? Image.asset("assets/icons/selected_person.png")
                        : Image.asset("assets/icons/person_icn.png"),
                    label: "Account",
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
