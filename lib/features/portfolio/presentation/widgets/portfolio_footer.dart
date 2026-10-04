import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_dimens.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/widgets/app_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioFooter extends StatelessWidget {
  const PortfolioFooter({required this.name, this.phone, super.key});

  final String name;
  final String? phone;

  Future<void> _open(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  String? get _digits {
    final raw = phone;
    if (raw == null || raw.trim().isEmpty) return null;
    final digits = raw.replaceAll(RegExp(r'\D'), '');
    if (digits.isEmpty) return null;
    return digits;
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final year = DateTime.now().year;
    final digits = _digits;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: AppDimens.space32),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: colors.border)),
      ),
      child: Column(
        children: [
          if (digits != null) ...[
            Wrap(
              alignment: WrapAlignment.center,
              spacing: AppDimens.space12,
              runSpacing: AppDimens.space12,
              children: [
                AppPrimaryButton(
                  label: 'footer.whatsapp'.tr(),
                  icon: Icons.chat_rounded,
                  onPressed: () => _open('https://wa.me/$digits'),
                ),
                AppSecondaryButton(
                  label: 'footer.call'.tr(),
                  icon: Icons.call_outlined,
                  onPressed: () => _open('tel:+$digits'),
                ),
              ],
            ),
            const SizedBox(height: AppDimens.space24),
          ],
          Text(
            'footer.built_with'.tr(),
            style: AppTextStyles.bodySmall(colors),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimens.space8),
          Text(
            '© $year $name. ${'footer.rights'.tr()}',
            style: AppTextStyles.labelMedium(colors),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
