import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'custom_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary.withOpacity(0.1),
            AppColors.secondary.withOpacity(0.1),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xxl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Tagline
          Text(
            'Your Passport to',
            style: AppTextStyles.heading1.copyWith(
              fontSize: screenWidth < 360 ? 28 : 36,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Global Work',
            style: AppTextStyles.heading1.copyWith(
              fontSize: screenWidth < 360 ? 28 : 36,
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.lg),
          
          // Subtext
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth < 360 ? AppSpacing.sm : AppSpacing.md,
            ),
            child: Text(
              'Kovon opens doors for millions of skilled workers to pursue meaningful careers across the world.',
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          
          // CTA Button
          CustomButton(
            text: 'Explore Opportunities',
            onPressed: () {},
            icon: Icons.arrow_forward,
          ),
          const SizedBox(height: AppSpacing.lg),
          
          // Stats Row
          _buildStatsRow(),
        ],
      ),
    );
  }

  Widget _buildStatsRow() {
    return Wrap(
      spacing: AppSpacing.lg,
      runSpacing: AppSpacing.md,
      alignment: WrapAlignment.center,
      children: [
        _buildStatItem('50+', 'Countries'),
        _buildStatItem('17,000+', 'Jobs'),
        _buildStatItem('10,000+', 'Candidates'),
        _buildStatItem('400+', 'Employers'),
      ],
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppRadius.md),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            value,
            style: AppTextStyles.heading3.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            label,
            style: AppTextStyles.bodySmall,
          ),
        ],
      ),
    );
  }
}
