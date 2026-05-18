import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';
import 'package:tech_task_paidax2/strategy/presentation/widgets/gradient_avatar_widget.dart';

class PortfolioAboutCard extends StatelessWidget {
  final String portfolioName;
  final String managerRole;
  final String avatarInitials;
  final String bio;
  final String subscribersCount;
  final String aum;
  final VoidCallback? onViewProfile;

  const PortfolioAboutCard({
    super.key,
    required this.portfolioName,
    required this.managerRole,
    required this.avatarInitials,
    required this.bio,
    required this.subscribersCount,
    required this.aum,
    this.onViewProfile,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: PaidaxColors.surfaceLight,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          // ─── Manager Header ─────────────────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GradientAvatarWidget(
                initials: avatarInitials,
                outerSize: 56,
                innerSize: 48,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // ← fix
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          portfolioName,
                          style: theme.titleMedium?.copyWith(fontSize: 17),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 17,
                          height: 17,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: PaidaxColors.primary,
                          ),
                          child: const Icon(
                            Icons.check_rounded,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      managerRole,
                      style: theme.bodySmall?.copyWith(
                        color: PaidaxColors.secondaryText,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          // ─── Bio ─────────────────────────────────────────────────────
          Text(
            bio,
            style: theme.bodyMedium?.copyWith(
              color: PaidaxColors.primaryText,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 14),

          const Divider(color: PaidaxColors.divider),

          const SizedBox(height: 15),

          // ─── Stats ───────────────────────────────────────────────────
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      subscribersCount,
                      style: theme.headlineMedium?.copyWith(
                        color: PaidaxColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'подписчиков',
                      style: theme.bodySmall?.copyWith(
                        color: PaidaxColors.secondaryText,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      aum,
                      style: theme.headlineMedium?.copyWith(
                        color: PaidaxColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'под управлением',
                      style: theme.bodySmall?.copyWith(
                        color: PaidaxColors.secondaryText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          const Divider(color: PaidaxColors.divider),

          const SizedBox(height: 15),

          // ─── View Profile ─────────────────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Смотреть профиль',
                style: theme.labelLarge?.copyWith(
                  color: PaidaxColors.primary,
                ),
              ),
              GestureDetector(
                onTap: onViewProfile,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: PaidaxColors.primary,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
