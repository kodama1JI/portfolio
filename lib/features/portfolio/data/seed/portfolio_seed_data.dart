import 'package:portfolio/features/portfolio/domain/entities/education.dart';
import 'package:portfolio/features/portfolio/domain/entities/experience.dart';
import 'package:portfolio/features/portfolio/domain/entities/portfolio_content.dart';
import 'package:portfolio/features/portfolio/domain/entities/profile.dart';
import 'package:portfolio/features/portfolio/domain/entities/project.dart';
import 'package:portfolio/features/portfolio/domain/entities/skill.dart';

/// Local fallback when Supabase is not configured — mirrors seed.sql.
class PortfolioSeedData {
  const PortfolioSeedData._();

  static PortfolioContent content = PortfolioContent(
    profile: const Profile(
      fullName: 'Ismaeel Kayali',
      title: 'Flutter Developer',
      summary:
          'Mobile application developer proficient in Flutter and Dart, specializing in high-performance applications with interactive user interfaces. Experienced in building apps integrated with backend APIs, using Provider and local data storage. Work includes car rental applications and industrial facility management systems covering financial and administrative processes, with a focus on practical, scalable solutions and software quality.',
      email: 'ismaeelkayali0@gmail.com',
      phone: '+963-991266512',
      location: 'Aleppo, Syria',
    ),
    experiences: [
      Experience(
        id: 'exp-bss',
        company: 'BSS FLOW',
        role: 'Flutter Developer',
        employmentType: 'Full-time',
        startDate: DateTime(2026, 8),
        isCurrent: true,
        highlights: const [
          'Worked on 10+ Flutter applications delivered for clients.',
          'Develop and maintain features for company Flutter applications with product and design teams.',
          'Align with backend developers on API requirements for reliable integrations.',
          'Participate in stand-ups, sprint planning, and code reviews in an agile team.',
          'Translate requirements into clear, well-structured app features.',
          'Share progress early and raise blockers to keep delivery moving.',
        ],
      ),
    ],
    projects: const [
      Project(
        id: 'proj-careppo',
        title: 'Careppo',
        description:
            'A mobile car rental app built with Flutter. Users can browse available cars, view photos, specifications, and features, and track requests. It includes login and a guest mode, integrates with a backend API for bookings, and uses Provider with Shared Preferences for local storage. The interface also covers account status updates and online communication.',
        liveUrl:
            'https://play.google.com/store/apps/details?id=com.ismaeel.careppo&pli=1',
        imageUrl: 'assets/images/careppo_cover.jpg',
        techStack: ['Flutter', 'Provider', 'Shared Preferences', 'Backend API'],
      ),
      Project(
        id: 'proj-myfacility',
        title: 'MyFacility',
        description:
            'An industrial facility management app with account creation, login, and fingerprint authentication. The dashboard shows company balance, outstanding amounts, receivables, and the last inventory date. It covers sales, purchasing, employees, inventory, receivables, and customer accounts, plus exchange-rate input with automatic balance recalculation and PDF export.',
        liveUrl:
            'https://www.mediafire.com/file/va2t023izfaz6yi/MyFacility_new.apk/file',
        imageUrl: 'assets/images/myfacility_cover.jpg',
        techStack: ['Flutter', 'Dart', 'PDF Export'],
      ),
    ],
    skills: const [
      Skill(id: 's1', category: 'Programming', name: 'Flutter', iconKey: 'flutter'),
      Skill(id: 's2', category: 'Programming', name: 'Dart', iconKey: 'dart'),
      Skill(
        id: 's3',
        category: 'State Management',
        name: 'Provider',
        iconKey: 'provider',
      ),
      Skill(
        id: 's4',
        category: 'Storage',
        name: 'Shared Preferences',
        iconKey: 'storage',
      ),
      Skill(
        id: 's5',
        category: 'APIs & Networking',
        name: 'Backend APIs',
        iconKey: 'api',
      ),
      Skill(id: 's6', category: 'Web', name: 'HTML', iconKey: 'web'),
      Skill(id: 's7', category: 'Web', name: 'CSS', iconKey: 'web'),
      Skill(id: 's8', category: 'Web', name: 'JavaScript', iconKey: 'web'),
      Skill(id: 's9', category: 'Web', name: 'PHP', iconKey: 'web'),
      Skill(
        id: 's10',
        category: 'Backend',
        name: 'NestJS',
        iconKey: 'nestjs',
      ),
    ],
    educations: [
      Education(
        id: 'edu-it',
        degree: 'Information Technology Engineering',
        institution: 'Al Shahbaa Private University',
        startDate: DateTime(2020),
        endDate: DateTime(2025),
      ),
    ],
    certifications: const [],
    languages: const [],
  );
}
