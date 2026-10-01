-- Seed data from Ismaeel Kayali CV. BSS FLOW experience is unchanged.

truncate table
  public.languages,
  public.certifications,
  public.educations,
  public.skills,
  public.projects,
  public.experiences,
  public.profiles,
  public.site_settings
restart identity cascade;

insert into public.profiles (
  full_name, title, summary, email, phone, location, linkedin_url, github_url, avatar_url
) values (
  'Ismaeel Kayali',
  'Flutter Developer',
  'Mobile application developer proficient in Flutter and Dart, specializing in high-performance applications with interactive user interfaces. Experienced in building apps integrated with backend APIs, using Provider and local data storage. Work includes car rental applications and industrial facility management systems covering financial and administrative processes, with a focus on practical, scalable solutions and software quality.',
  'ismaeelkayali0@gmail.com',
  '+963-991266512',
  'Aleppo, Syria',
  null,
  null,
  null
);

insert into public.experiences (
  company, role, employment_type, start_date, end_date, is_current, highlights, sort_order
) values
(
  'BSS FLOW',
  'Flutter Developer',
  'Full-time',
  '2026-08-01',
  null,
  true,
  array[
    'Develop and maintain features for company Flutter applications with product and design teams.',
    'Align with backend developers on API requirements for reliable integrations.',
    'Participate in stand-ups, sprint planning, and code reviews in an agile team.',
    'Translate requirements into clear, well-structured app features.',
    'Share progress early and raise blockers to keep delivery moving.'
  ],
  0
);

insert into public.projects (
  title, description, github_url, live_url, image_url, tech_stack, sort_order, is_featured
) values
(
  'Careppo',
  'A mobile car rental app built with Flutter. Users can browse available cars, view photos, specifications, and features, and track requests. It includes login and a guest mode, integrates with a backend API for bookings, and uses Provider with Shared Preferences for local storage. The interface also covers account status updates and online communication.',
  null,
  'https://play.google.com/store/apps/details?id=com.ismaeel.careppo&pli=1',
  'assets/images/careppo_cover.jpg',
  array['Flutter', 'Provider', 'Shared Preferences', 'Backend API'],
  0,
  true
),
(
  'MyFacility',
  'An industrial facility management app with account creation, login, and fingerprint authentication. The dashboard shows company balance, outstanding amounts, receivables, and the last inventory date. It covers sales, purchasing, employees, inventory, receivables, and customer accounts, plus exchange-rate input with automatic balance recalculation and PDF export.',
  null,
  'https://www.mediafire.com/file/1323ndeq3qj6hg1/MyFacility.apk/file',
  'assets/images/myfacility_cover.jpg',
  array['Flutter', 'Dart', 'PDF Export'],
  1,
  true
);

insert into public.skills (category, name, icon_key, sort_order) values
('Programming', 'Flutter', 'flutter', 0),
('Programming', 'Dart', 'dart', 1),
('State Management', 'Provider', 'provider', 2),
('Storage', 'Shared Preferences', 'storage', 3),
('APIs & Networking', 'Backend APIs', 'api', 4),
('Web', 'HTML', 'web', 5),
('Web', 'CSS', 'web', 6),
('Web', 'JavaScript', 'web', 7),
('Web', 'PHP', 'web', 8),
('Backend', 'NestJS', 'nestjs', 9);

insert into public.educations (
  degree, institution, start_date, end_date, is_current, sort_order
) values
(
  'Information Technology Engineering',
  'Al Shahbaa Private University',
  '2020-01-01',
  '2025-01-01',
  false,
  0
);

insert into public.site_settings (site_title, default_theme, seo_description) values
(
  'Ismaeel Kayali — Flutter Developer',
  'system',
  'Portfolio of Ismaeel Kayali, Flutter Developer building high-performance mobile apps with Dart and Provider.'
);
