import 'package:web/web.dart' as web;

/// Saves the resume with a same-origin link.
///
/// A blob URL that is revoked immediately makes Chrome abort that download
/// and then save the page's debug scripts into the downloads list.
Future<void> downloadResume(String assetPath, String fileName) async {
  final href = Uri.base.resolve('assets/$assetPath').toString();
  final anchor = web.HTMLAnchorElement()
    ..href = href
    ..download = fileName
    ..style.display = 'none';
  web.document.body!.appendChild(anchor);
  anchor.click();
  anchor.remove();
}
