import 'package:flutter_app/screens/call_screen.dart';
import 'package:flutter_app/screens/club_screen.dart';
import 'package:flutter_app/screens/explore_clubs.dart';
import 'package:flutter_app/screens/fav_clubs.dart';
import 'package:flutter_app/screens/follow_screen.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/loading_screen.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/msg_screen.dart';
import 'package:flutter_app/screens/notify_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/screens/register_screen.dart';
import 'package:flutter_app/screens/settings_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',  
  routes: [
    
    GoRoute(
      path: '/' ,
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home' ,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/msg' ,
      builder: (context, state) => const MsgScreen(),
    ),
    GoRoute(
      path: '/call' ,
      builder: (context, state) => const CallScreen(),
    ),
    GoRoute(
      path: '/not' ,
      builder: (context, state) => const NotifyScreen(),
    ),
    GoRoute(
      path: '/profile' ,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/explore' ,
      builder: (context, state) => const ExploreScreen(),
    ),
    GoRoute(
      path: '/settings' ,
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/club' ,
      builder: (context, state) => const ClubScreen(),
    ),
    GoRoute(
      path: '/login' ,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register' ,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/favClubs' ,
      builder: (context, state) => const favClubsScreen(),
    ),
    GoRoute(
      path: '/follow' ,
      builder: (context, state) => const FollowScreen(),
    ),
  ],
);
