/*
 * @ Author: Flutter Journey 🎯 <flutterjourney.org@gmail.com>
 * @ Created: 2024-12-09 13:15:47
 * @ Message: You look very hardworking 👨‍💻. Keep focusing on your goals. 🌤️
 */

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:fruit_cutting_game/core/configs/theme/app_colors.dart';
import 'package:fruit_cutting_game/main_router_game.dart';
=======
import 'package:fruit_fury/core/configs/theme/app_colors.dart';
import 'package:fruit_fury/main_router_game.dart';
>>>>>>> 6136fed (Update web_title_switcher_web.dart, Update fruit_component.dart, Update game_victory.dart and Update game_over.dart)

class TutorialFruitsListComponent extends PositionComponent with HasGameReference<MainRouterGame> {
  final List<TutorialFruitComponent> fruits;
  final bool isLeft;

  TutorialFruitsListComponent({
    required this.fruits,
    required this.isLeft,
  });

  @override
  Future<void> onLoad() async {
    super.onLoad();

    for (var fruit in fruits) {
      add(fruit);
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    for (var i = 0; i < fruits.length; i++) {
      double xPosition = isLeft ? 30 : game.size.x - 30;

      fruits[i].position = Vector2(xPosition, i * game.size.y / 6 + 20);
    }
  }
}

class TutorialFruitComponent extends PositionComponent with HasGameReference<MainRouterGame> {
  final String text;
  final String imagePath;
  final bool isLeft;

  late Vector2 imageSize;
  late TextComponent textComponent;
  late TextPaint textPaint;

  TutorialFruitComponent({
    required this.text,
    required this.imagePath,
    required this.isLeft,
  });

  @override
  Future<void> onLoad() async {
    super.onLoad();

    textPaint = TextPaint(
      style: const TextStyle(
        fontSize: 23,
        color: AppColors.white,
        fontFamily: 'Insan',
        letterSpacing: 2.0,
        fontWeight: FontWeight.w400,
      ),
    );

    final image = await Flame.images.load(imagePath);
    final sprite = Sprite(image);

    final imageSize = Vector2(game.size.y / 8.3, game.size.y / 8.3);

    final spriteComponent = SpriteComponent(
      sprite: sprite,
      size: imageSize,
    )..position = Vector2(isLeft ? 0 : -game.size.y / 8.3, 0);

    textComponent = TextComponent(
      text: text,
      position: Vector2(isLeft ? game.size.y / 6 : -game.size.y / 6, imageSize.y / 2),
      anchor: isLeft ? Anchor.centerLeft : Anchor.centerRight,
      textRenderer: textPaint,
    );

    add(spriteComponent);
    add(textComponent);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    imageSize = Vector2(game.size.y / 8, game.size.y / 8);
    textComponent = TextComponent(
      text: text,
      position: Vector2(isLeft ? 70 : -70, imageSize.y / 2),
      anchor: isLeft ? Anchor.centerLeft : Anchor.centerRight,
      textRenderer: textPaint,
    );
  }
}
