# Kovon Flutter App - Mobile Homepage

## Overview
This is a pixel-accurate Flutter implementation of the Kovon.io mobile homepage. The app replicates the mobile web view with clean code, proper structure, and responsive design.

## Features Implemented

### Header Section
- Kovon logo
- Menu icon (UI only)
- Clean header with shadow

### Hero Section
- Main tagline: "Your Passport to Global Work"
- Descriptive subtext
- Primary CTA button with icon
- Statistics cards (Countries, Jobs, Candidates, Employers)
- Gradient background

### Services/Features Section
- 4 feature cards with:
  - Icon with colored background
  - Title
  - Description
  - Card shadows and styling

### How It Works Section
- 5-step process layout
- Vertical alignment with connecting lines
- Numbered circles with gradient connectors
- Clear step descriptions

### Footer Section
- Company branding
- Social media icons
- Contact information
- Copyright notice

## Technical Implementation

### Folder Structure
```
lib/
├── main.dart                          # App entry point
├── screens/
│   └── home_screen.dart              # Main home screen
├── widgets/
│   ├── hero_section.dart             # Hero section widget
│   ├── feature_card.dart             # Reusable feature card
│   ├── how_it_works_section.dart     # Steps section
│   ├── footer_section.dart           # Footer widget
│   └── custom_button.dart            # Reusable button (BONUS)
└── utils/
    └── constants.dart                # All constants and styles
```

### Code Standards
 StatelessWidget used throughout
 Const constructors used where possible
 All styles centralized in constants.dart
 Proper padding and spacing (8pt grid)
 Clean naming conventions
 Commented code for clarity

### Responsive Design
 Works on small devices (360px width)
 Works on medium devices
 Works on large mobile devices
 Uses MediaQuery for screen-based adjustments
 Flexible and Expanded widgets for layouts

### Bonus Features Implemented
 Custom reusable button widget (CustomButton)
 Google Fonts integration (Inter font)
 Smooth scrolling with BouncingScrollPhysics
 Proper theming and color scheme
 Gradient backgrounds
 Shadow effects and visual polish

## Flutter Version
- **Flutter SDK:** 3.27.1 (Stable)
- **Dart SDK:** >=3.2.0 <4.0.0

## Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.1.0      # For Inter font
  url_launcher: ^6.2.2      # For future link handling
  flutter_svg: ^2.0.9       # For SVG support
```

## Installation & Setup

### Prerequisites
- Flutter SDK installed (3.2.0 or higher)
- Android Studio / Xcode for mobile development
- VS Code or Android Studio IDE

### Steps to Run

1. **Install Flutter SDK**
   ```bash
   # Download from https://flutter.dev/docs/get-started/install
   # Or use snap on Linux:
   snap install flutter --classic
   ```

2. **Verify Installation**
   ```bash
   flutter doctor
   ```

3. **Navigate to Project Directory**
   ```bash
   cd kovon_flutter_app
   ```

4. **Get Dependencies**
   ```bash
   flutter pub get
   ```

5. **Run the App**
   ```bash
   # For Android
   flutter run
   
   # For iOS
   flutter run -d ios
   
   # For Web (testing)
   flutter run -d chrome
   ```

6. **Build APK (Release)**
   ```bash
   flutter build apk --release
   # APK will be at: build/app/outputs/flutter-apk/app-release.apk
   ```

7. **Build for iOS**
   ```bash
   flutter build ios --release
   ```

## Testing on Different Screen Sizes

The app is responsive and tested for:
- Small: 360 x 640 (Samsung Galaxy)
- Medium: 390 x 844 (iPhone 13)
- Large: 428 x 926 (iPhone 14 Pro Max)

To test specific dimensions:
```bash
flutter run --device-id=<device_id>
```

## Color Scheme
- **Primary:** Indigo (#6366F1)
- **Secondary:** Purple (#8B5CF6)
- **Accent:** Green (#10B981)
- **Background:** White (#FFFFFF)
- **Text Primary:** Dark Gray (#111827)
- **Text Secondary:** Medium Gray (#6B7280)

## File Descriptions

### `main.dart`
- App entry point
- MaterialApp configuration
- Theme setup
- Status bar styling

### `screens/home_screen.dart`
- Main home screen scaffold
- Integrates all widget sections
- Header implementation
- ScrollView with physics

### `widgets/hero_section.dart`
- Hero banner with tagline
- CTA button
- Statistics row
- Gradient background

### `widgets/feature_card.dart`
- Reusable card component
- Icon, title, description layout
- Shadow and border styling

### `widgets/how_it_works_section.dart`
- Step-by-step process display
- Numbered circles with connectors
- Vertical layout with gradient lines

### `widgets/footer_section.dart`
- Company information
- Social media icons
- Contact details
- Copyright notice

### `widgets/custom_button.dart`
- Reusable button component
- Outlined and filled variants
- Icon support
- Tap animation

### `utils/constants.dart`
- All color constants
- Text styles using Google Fonts
- Spacing constants (8pt grid)
- Border radius values
- Data models (ServiceData, StepData)
- Mock data arrays

---
