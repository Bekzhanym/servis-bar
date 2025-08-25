# 🔥 Firebase Setup Guide

## ⚠️ ВАЖНО: Безопасность

**НЕ коммитьте реальные API ключи в Git!** Все конфиденциальные файлы уже добавлены в `.gitignore`.

## 📱 Настройка для разработки

### 1. Android
1. Скопируйте `android/app/google-services.example.json` в `android/app/google-services.json`
2. Замените `YOUR_*` значения на реальные из Firebase Console

### 2. iOS  
1. Скопируйте `ios/Runner/GoogleService-Info.example.plist` в `ios/Runner/GoogleService-Info.plist`
2. Замените `YOUR_*` значения на реальные из Firebase Console

### 3. Web
1. Скопируйте `lib/backend/firebase/firebase_config.example.dart` в `lib/backend/firebase/firebase_config.dart`
2. Замените `YOUR_*` значения на реальные из Firebase Console

## 🔑 Где взять API ключи

1. Откройте [Firebase Console](https://console.firebase.google.com/)
2. Выберите проект `servis-bar-xrv2je`
3. Перейдите в Project Settings → General
4. Скачайте конфигурационные файлы для нужных платформ

## 🚫 Что НЕ делать

- ❌ Не коммитьте `google-services.json`
- ❌ Не коммитьте `GoogleService-Info.plist`  
- ❌ Не коммитьте `firebase_config.dart` с реальными ключами
- ❌ Не публикуйте API ключи в открытых репозиториях

## ✅ Что делать

- ✅ Использовать примеры файлов как шаблоны
- ✅ Хранить реальные ключи локально
- ✅ Добавлять новые конфиденциальные файлы в `.gitignore`
- ✅ Использовать переменные окружения для production
