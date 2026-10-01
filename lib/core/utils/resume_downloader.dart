import 'package:portfolio/core/utils/resume_downloader_stub.dart'
    if (dart.library.js_interop) 'package:portfolio/core/utils/resume_downloader_web.dart'
    if (dart.library.io) 'package:portfolio/core/utils/resume_downloader_io.dart'
    as resume_downloader_impl;

class ResumeDownloader {
  const ResumeDownloader._();

  static const assetPath = 'assets/resume/ismaeel_kayali_resume.pdf';
  static const fileName = 'Ismaeel_Kayali_Resume.pdf';

  static Future<void> download() {
    return resume_downloader_impl.downloadResume(assetPath, fileName);
  }
}
