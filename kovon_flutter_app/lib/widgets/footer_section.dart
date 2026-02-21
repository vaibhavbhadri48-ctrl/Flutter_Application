import 'package:flutter/material.dart';
import '../utils/constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.footerBg,
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Text(
            'KOVON',
            style: AppTextStyles.heading2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          
          // Tagline
          Text(
            'Transforming how talent moves across borders',
            style: AppTextStyles.body.copyWith(
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          
          // Social Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialIcon(Icons.facebook),
              const SizedBox(width: AppSpacing.md),
              _buildSocialIcon(Icons.mail),
              const SizedBox(width: AppSpacing.md),
              _buildSocialIcon(Icons.phone),
              const SizedBox(width: AppSpacing.md),
              _buildSocialIcon(Icons.language),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),
          
          // Contact Info
          Text(
            'Contact: +91 91106 17618',
            style: AppTextStyles.bodySmall.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Email: support@kovon.io',
            style: AppTextStyles.bodySmall.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          
          // Divider
          Divider(
            color: Colors.white.withOpacity(0.2),
            thickness: 1,
          ),
          const SizedBox(height: AppSpacing.md),
          
          // Copyright
          Text(
            '© 2025 Kovon. All rights reserved.',
            style: AppTextStyles.caption.copyWith(
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
