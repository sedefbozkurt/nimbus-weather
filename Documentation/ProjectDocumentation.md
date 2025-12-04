# Project Name

Nimbus — Minimalist Weather App

## Project Overview

Nimbus, kullanıcılara bulundukları konuma göre anlık hava durumunu sade, modern ve göz yormayan bir arayüzle gösteren minimalist bir iOS uygulamasıdır. Bu proje, SwiftUI becerilerini geliştirmek, modern UI prensiplerini uygulamak ve profesyonel yazılım geliştirme süreçlerini deneyimlemek amacıyla tasarlanmıştır.

## Project Purpose

- Gerçek bir yazılım projesinin adımlarını deneyimlemek
- SwiftUI ve iOS geliştirme becerilerini güçlendirmek
- Modern ve minimalist bir kullanıcı arayüzü tasarlamak
- API tüketimi, mimari yapı, proje planlaması gibi konularda kendini geliştirmek
- Portföyde sunulabilecek profesyonel bir uygulama oluşturmak

## Target Users

- Hızlı ve temiz bir hava durumu uygulaması isteyen kullanıcılar
- Arayüzde sadelik ve minimalizm arayanlar
- Günlük hava durumunu en sade şekilde kontrol etmek isteyenler
- iOS kullanıcıları (iOS 16+)

## Core Features (MVP)

### Essential (v1.0)

- Kullanıcının konumunu alma
- Anlık hava durumu (sıcaklık, hava durumu durumu, hissedilen sıcaklık)
- Günlük özet bölümünde minimal ikonlar ve sıcaklık bilgisi
- Modern ve minimal SwiftUI arayüzü
- Açık ve koyu mod desteği (otomatik sistem temelli)

### Secondary (v1.1+)

- 5 günlük hava durumu tahmini
- Arama çubuğu (şehir ekleme)
- Favori şehirler
- Hava durumu detayları (nem, rüzgar, basınç, UV)

## Design Principles

- Minimalist, sade ve göz yormayan tasarım
- Soft pastel renk paleti (gerekirse tek renk + griler)
- Büyük tipografi, bol boşluk (padding)
- Simge yoğunluğunu minimumda tutmak
- Gereksiz animasyonlardan kaçınmak
- Bilginin hiyerarşik olarak sunulması
- Kullanıcıya hiçbir zaman bilgi yükü bindirmeme

## Technical Stack

- **SwiftUI** — modern UI oluşturmak için
- **CoreLocation** — konum verisini almak için
- **Combine / async-await** — API çağrıları için
- **OpenWeather API** — hava durumu verisi
- **MVVM Architecture** — temiz ve sürdürülebilir kod için
- **Git + GitHub** — sürüm kontrolü ve proje paylaşımı

## API Definition

**Provider**: OpenWeatherMap
**Endpoint**: Current Weather Data
**Parameters**:

- latitude
- longitude
- API key
- units=metric

Döndürülecek veriler:

- temperature
- feels_like
- weather description
- weather icon
- humidity
- wind_speed

## UX Flow

### Splash / Launch Screen

### Konum izni ekranı

### Ana ekran

- Şehir adı
- Anlık sıcaklık
- Hava durumu & açıklama
- Hissedilen sıcaklık
- Günlük özet (3-5 küçük kart / ikon)

## Milestones & Roadmap

### Phase 1 — Project Setup

- Repo oluşturma
- Xcode projesi oluşturma
- API key alma
- Basit SwiftUI sayfa iskeleti

### Phase 2 — API Integration

- Konum alma
- API'den veri çekme
- Veri modeli oluşturma
- MVVM katmanını kurma

### Phase 3 — UI Implementation

- Ana ekran tasarımı
- Minimal hava durumu kartları
- Tema ve tipografi düzeni

### Phase 4 — Testing & Finishing

- Kenar durumları testleri
- UI düzenlemeleri
- Kod temizliği
- GitHub için README yazma

### Release v1.0 - MVP

## Success Criteria

- Uygulama API verisini doğru çekmeli
- Ana ekran minimal ve temiz olmalı
- Konum izni sorunsuz çalışmalı
- Uygulama modern SwiftUI prensiplerine uygun olmalı
- Git commit geçmişi düzenli, anlamlı mesajlardan oluşmalı

## Future Notes & Ideas

- Widget desteği
- Yağış animasyonları
- Kısa vadeli saatlik tahmin
- Home Screen customize (basit)
