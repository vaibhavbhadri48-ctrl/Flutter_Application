import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/hero_section.dart';
import '../widgets/feature_card.dart';
import '../widgets/how_it_works_section.dart';
import '../widgets/footer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Header
              _buildHeader(context),
              
              // Hero Section
              const HeroSection(),
              
              // Opportunities Banner
              _buildOpportunitiesBanner(),
              
              // Why Kovon Section
              _buildWhyKovonSection(),
              
              // How It Works Section
              const HowItWorksSection(),
              
              // Footer
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          Text(
            'KOVON',
            style: AppTextStyles.heading3.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          
          // Menu Icon
          Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppRadius.sm),
            ),
            child: const Icon(
              Icons.menu,
              color: AppColors.primary,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOpportunitiesBanner() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      color: AppColors.primary.withOpacity(0.05),
      child: Column(
        children: [
          Text(
            'There Are 24,532 Open',
            style: AppTextStyles.heading2,
            textAlign: TextAlign.center,
          ),
          Text(
            'Opportunities Here For You!',
            style: AppTextStyles.heading2.copyWith(
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildWhyKovonSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        children: [
          // Section Title
          Text(
            'Why Kovon',
            style: AppTextStyles.heading2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.sm),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
            child: Text(
              'Kovon is redefining how the world discovers and hires talent. Our mission is to make overseas job opportunities accessible and transparent for everyone.',
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          
          // Feature Cards
          ...List.generate(
            services.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.lg),
              child: FeatureCard(
                icon: services[index].icon,
                title: services[index].title,
                description: services[index].description,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
