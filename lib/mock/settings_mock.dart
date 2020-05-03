import 'package:fitnessapp/models/settings.dart';
import 'package:flutter/material.dart';

List<SettingsListItem> settingsItems = [
  SettingsListItem(
    title: 'Уведомления',
    description: 'Настройте уведомления так как удобно',
    icon: Icons.notifications
  ),
  SettingsListItem(
    title: 'Размер текста',
    description: 'Измените размер шрифта в материале',
    icon: Icons.font_download
  ),
  SettingsListItem(
    title: 'Моя лента',
    description: 'Включить или выключить рубрики',
    icon: Icons.library_books
  ),
  SettingsListItem(
    title: 'Рекламодателям',
    description: 'Можете узнать тарифы на размещение \nрекламы',
    icon: Icons.info_outline
  ),
  SettingsListItem(
    title: 'Сообщить об ошибке',
    description: 'Так же можете отправить пожелание \nили благодарность',
    icon: Icons.report
  )
];
