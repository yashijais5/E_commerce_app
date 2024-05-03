// import 'package:e_com2/screens/cart_screen/cart_screen.dart';
// import 'package:e_com2/screens/favourite_screen/favourite_screen.dart';
// import 'package:e_com2/screens/home/home.dart';
// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// class CustomBottomBar extends StatefulWidget {
//   const CustomBottomBar({final Key? key})
//       : super(key: key);

//   @override
//    _CustomBottomBarState createState() => _CustomBottomBarState();
// }
// class _CustomBottomBarState extends State<CustomBottomBar> {
//   late PersistentTabController _controller;
//   bool _hideNavBar = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = PersistentTabController(initialIndex: 0);
//   }

//   List<Widget> _buildScreens() => [
//         const Home(),
//         const CartScreen(),
//         const FavouriteScreen(),
//         const FavouriteScreen(),
//       ];

//   List<PersistentBottomNavBarItem> _navBarsItems() => [
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.home),
//           title: "Home",
//           activeColorPrimary: Colors.white,
//           inactiveColorPrimary: Colors.white,
//           inactiveColorSecondary: Colors.purple,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.shopping_cart),
//           title: "Cart",
//           activeColorPrimary: Colors.white,
//           inactiveColorPrimary: Colors.white,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.favorite),
//           title: "Favourite",
//           activeColorPrimary: Colors.white,
//           inactiveColorPrimary: Colors.white,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.person),
//           title: "Profile",
//           activeColorPrimary: Colors.white,
//           inactiveColorPrimary: Colors.white,
//         ),
//       ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         resizeToAvoidBottomInset: true,
//         navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
//             ? 0.0
//             : kBottomNavigationBarHeight,
//         bottomScreenMargin: 0,
//         backgroundColor: Theme.of(context).primaryColor,
//         hideNavigationBar: _hideNavBar,
//         decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
//         itemAnimationProperties: const ItemAnimationProperties(
//           duration: Duration(milliseconds: 400),
//           curve: Curves.ease,
//         ),
//         screenTransitionAnimation: const ScreenTransitionAnimation(
//           animateTabTransition: true,
//         ),
//         navBarStyle: NavBarStyle.style1,
//       ),
//     );
//   }
// }
