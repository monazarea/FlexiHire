
String? getProcessedImageUrl(String? url) {
  if (url == null || url.isEmpty) {
    return null;
  }

  const List<String> imageExtensions = ['.png', '.jpg', '.jpeg', '.gif', '.webp', '.svg'];

  String lowerCaseUrl = url.toLowerCase();

  for (String extension in imageExtensions) {
    if (lowerCaseUrl.endsWith(extension)) {
      return url;
    }
  }

  return url + '.png';
}
