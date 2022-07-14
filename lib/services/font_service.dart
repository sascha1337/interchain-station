import 'dart:ui';

class FontService {

  FontService._();

  static void initializeFonts() {
    // Initialize and cache fonts by creating a virtual paragraph with an emoji
    ParagraphBuilder pb = ParagraphBuilder(ParagraphStyle(locale: window.locale));
    pb.addText('🚀');
    pb.build().layout(const ParagraphConstraints(width: 100));
  }

}
