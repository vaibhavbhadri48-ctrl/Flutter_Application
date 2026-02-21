import 'package:flutter/material.dart';
import '../utils/constants.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.cardBackground,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xxl,
      ),
      child: Column(
        children: [
          // Section Title
          Text(
            'Your Journey to a Global Career',
            style: AppTextStyles.heading2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'A simple, transparent process with our team guiding you all the way.',
            style: AppTextStyles.body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          
          // Steps
          ...List.generate(
            steps.length,
            (index) => _buildStepItem(
              steps[index],
              isLast: index == steps.length - 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepItem(StepData step, {required bool isLast}) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Step Number Circle
            Column(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      step.number.toString(),
                      style: AppTextStyles.heading3.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Connector Line
                if (!isLast)
                  Container(
                    width: 2,
                    height: 60,
                    margin: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.primary,
                          AppColors.primary.withOpacity(0.3),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: AppSpacing.lg),
            
            // Step Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    step.title,
                    style: AppTextStyles.heading3,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    step.description,
                    style: AppTextStyles.body,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
