import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color Constants
class AppColors {
  static const Color primary = Color(0xFF6366F1); // Indigo
  static const Color secondary = Color(0xFF8B5CF6); // Purple
  static const Color background = Color(0xFFFFFFFF);
  static const Color cardBackground = Color(0xFFF9FAFB);
  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color accent = Color(0xFF10B981); // Green
  static const Color footerBg = Color(0xFF1F2937);
}

// Text Styles
class AppTextStyles {
  static TextStyle heading1 = GoogleFonts.inter(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  static TextStyle heading2 = GoogleFonts.inter(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static TextStyle heading3 = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle body = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    height: 1.6,
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  static TextStyle button = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle caption = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
}

// Spacing Constants
class AppSpacing {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
}

// Border Radius
class AppRadius {
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 24.0;
}

// Services Data
class ServiceData {
  final IconData icon;
  final String title;
  final String description;

  const ServiceData({
    required this.icon,
    required this.title,
    required this.description,
  });
}

final List<ServiceData> services = [
  const ServiceData(
    icon: Icons.business,
    title: 'Complete Employer Network',
    description: 'Jobs across 50+ countries.',
  ),
  const ServiceData(
    icon: Icons.verified,
    title: 'Fully Transparent Process',
    description: 'Clear steps, fair fees, zero misinformation.',
  ),
  const ServiceData(
    icon: Icons.check_circle,
    title: 'One-Stop Solution',
    description: 'Verification, training, documents, and placement in one place.',
  ),
  const ServiceData(
    icon: Icons.people,
    title: 'Verified Employers',
    description: 'We partner only with reputable companies offering safe employment.',
  ),
];

// How It Works Steps
class StepData {
  final int number;
  final String title;
  final String description;

  const StepData({
    required this.number,
    required this.title,
    required this.description,
  });
}

final List<StepData> steps = [
  const StepData(
    number: 1,
    title: 'Create Profile',
    description: 'Register and set up your professional profile',
  ),
  const StepData(
    number: 2,
    title: 'Get Verified',
    description: 'Complete our verification process',
  ),
  const StepData(
    number: 3,
    title: 'Skill Enhancement',
    description: 'Access training resources and improve skills',
  ),
  const StepData(
    number: 4,
    title: 'Apply for Jobs',
    description: 'Browse and apply to global opportunities',
  ),
  const StepData(
    number: 5,
    title: 'Receive Offer',
    description: 'Get matched and receive your job offer',
  ),
];
