import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class StrategyScreen extends StatefulWidget {
  const StrategyScreen({super.key});

  @override
  State<StrategyScreen> createState() => _StrategyScreenState();
}

class _StrategyScreenState extends State<StrategyScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/strategy.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
        _controller.play();
      }).catchError((error) {
        debugPrint('Video error: $error');
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: PaidaxColors.bg,
      appBar: AppBar(
        backgroundColor: PaidaxColors.barBg,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: PaidaxColors.barIcon),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Стратегия',
          style: theme.titleMedium?.copyWith(fontSize: 18), // w600, 16px
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Spacer(),

            // ─── Video Player ─────────────────────────────
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : SizedBox(
                      height: 300,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: PaidaxColors.primary,
                        ),
                      ),
                    ),
            ),

            const SizedBox(
              height: 4,
            ),
            // ─── Title ────────────────────────────────────
            Text(
              'Инвестируйте как профи',
              textAlign: TextAlign.center,
              style: theme.displaySmall,
            ),

            const SizedBox(height: 4),

            // ─── Subtitle ─────────────────────────────────
            Text(
              'Подключите стратегию опытного инвестора и сделайте свой первый шаг в инвестициях уверенно.',
              textAlign: TextAlign.center,
              style: theme.bodyMedium?.copyWith(
                color: PaidaxColors.darkgreyText,
                height: 1.5,
                letterSpacing: -0.31,
              ),
            ),

            const Spacer(),

            // ─── Button ───────────────────────────────────
            FilledButton(
              onPressed: () {
                // your action here
              },
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                'Узнать больше',
                style: theme.labelLarge?.copyWith(
                    color: PaidaxColors.onPrimaryText,
                    fontWeight: FontWeight.w700),
              ),
            ),

            const SizedBox(height: 86),
          ],
        ),
      ),
    );
  }
}
