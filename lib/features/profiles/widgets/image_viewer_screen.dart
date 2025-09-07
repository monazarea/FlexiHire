import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';

class ImageViewerScreen extends StatelessWidget {
  final String imageUrl;

  const ImageViewerScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const CustomBackButton(),
      ),
      // -- V بداية التعديل V --
      // ١. قمنا بإزالة ويدجت Center
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          // هذا الكونتينر الآن سيأخذ عرض الشاشة بالكامل بسبب إزالة Center
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.7),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: InteractiveViewer(
              panEnabled: false,
              minScale: 1.0,
              maxScale: 4.0,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                // ٢. نجعل الصورة تملأ العرض المتاح
                width: double.infinity,
                // ٣. fit.contain ستحافظ على أبعاد الصورة وتجعلها تظهر بالكامل
                fit: BoxFit.contain,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      // -- ^ نهاية التعديل ^ --
    );
  }
}