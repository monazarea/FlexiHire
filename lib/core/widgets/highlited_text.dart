import 'package:flutter/material.dart';

class HighlightedText extends StatelessWidget {
  final String text;
  final String? highlight;
  final TextStyle style;

  const HighlightedText({
    super.key,
    required this.text,
    this.highlight,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    if (highlight == null || highlight!.isEmpty) {
      return Text(text, style: style, maxLines: 1, overflow: TextOverflow.ellipsis);
    }

    final lowerCaseText = text.toLowerCase();
    final lowerCaseHighlight = highlight!.toLowerCase();

    final List<TextSpan> spans = [];
    int start = 0;
    while (start < text.length) {
      final int startIndex = lowerCaseText.indexOf(lowerCaseHighlight, start);
      if (startIndex == -1) {
        spans.add(TextSpan(text: text.substring(start)));
        break;
      }

      if (startIndex > start) {
        spans.add(TextSpan(text: text.substring(start, startIndex)));
      }

      final int endIndex = startIndex + highlight!.length;
      spans.add(TextSpan(
        text: text.substring(startIndex, endIndex),
        style: style.copyWith(
          backgroundColor: Colors.yellow.shade200,
        ),
      ));

      start = endIndex;
    }

    return RichText(
      text: TextSpan(style: style, children: spans),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}