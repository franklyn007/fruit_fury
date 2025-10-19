/*
 * @ Author: Flutter Journey 🎯 <flutterjourney.org@gmail.com>
 * @ Created: 2024-12-09 13:15:47
 * @ Message: You look very hardworking 👨‍💻. Keep focusing on your goals. 🌤️
 */

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:fruit_cutting_game/core/configs/constants/app_router.dart';
import 'package:fruit_cutting_game/main_router_game.dart';
=======
import 'package:fruit_fury/core/configs/constants/app_router.dart';
import 'package:fruit_fury/main_router_game.dart';
>>>>>>> 6136fed (Update web_title_switcher_web.dart, Update fruit_component.dart, Update game_victory.dart and Update game_over.dart)
import 'simple_button.dart';

// Custom Pause Button for the game
// Extends SimpleButton and uses the game reference for interaction with the MainRouterGame
class PauseButtonCustom extends SimpleButton with HasGameReference<MainRouterGame> {
  // Constructor for PauseButtonCustom
  // Accepts an optional VoidCallback 'onPressed' which is triggered when the button is pressed
  PauseButtonCustom({VoidCallback? onPressed})
      : super(
          // Defines the button shape using a path with two vertical lines
          Path()
            ..moveTo(14, 10) // First line: starts at (14, 10)
            ..lineTo(14, 30) // Extends to (14, 30)
            ..moveTo(26, 10) // Second line: starts at (26, 10)
            ..lineTo(26, 30), // Extends to (26, 30)
          position: Vector2(60, 10), // Button position on the screen
        ) {
    // If no custom action is passed, navigate to the game pause screen using router
    super.action = onPressed ?? () => game.router.pushNamed(AppRouter.gamePause);
  }
}
