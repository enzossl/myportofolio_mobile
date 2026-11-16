# MyPortfolio Mobile

MyPortfolio Mobile adalah aplikasi portofolio pribadi berbasis Flutter yang
dikembangkan untuk mata kuliah Pemrograman Berbasis Platform. Aplikasi ini
menampilkan identitas pemilik portofolio, menu aksi, dan informasi singkat
melalui dialog About Me.

## Identitas

- Nama: Enzo Susilo
- NPM: 2506584382
- Kelas: PBP B

## Fitur

- Tiga kartu identitas: NPM, Name, dan Class.
- Tiga tombol aksi: Lihat Proyek, Tambah Proyek, dan Logout.
- Warna berbeda pada setiap tombol aksi.
- SnackBar dengan pesan sesuai nama tombol yang ditekan.
- Dialog About Me yang dapat dibuka melalui ikon informasi pada AppBar.
- Pembagian lebar kartu identitas menggunakan Expanded.

Pada tahap Tugas 7, ketiga tombol aksi memberikan umpan balik berupa
SnackBar. Navigasi daftar proyek, formulir tambah proyek, dan autentikasi
belum diimplementasikan.

## Kebutuhan Pengembangan

- Flutter SDK dengan Dart yang memenuhi batas versi pada pubspec.yaml:
  `>=3.13.7 <4.0.0`.
- Git.
- Chrome untuk menjalankan aplikasi menggunakan target web.

Proyek juga memiliki konfigurasi platform lainnya. Menjalankan aplikasi
pada platform tersebut memerlukan perangkat dan toolchain yang sesuai.

## Cara Menjalankan

1. Clone repositori dan masuk ke folder proyek:

   ```bash
   git clone https://github.com/enzossl/myportofolio_mobile.git
   cd myportofolio_mobile
   ```

2. Ambil dependency:

   ```bash
   flutter pub get
   ```

3. Jalankan aplikasi di Chrome:

   ```bash
   flutter run -d chrome
   ```

Untuk melihat target perangkat yang tersedia:

```bash
flutter devices
```

Untuk melakukan analisis statis:

```bash
flutter analyze
```

## Struktur Proyek

| Berkas | Tanggung jawab |
|---|---|
| `lib/main.dart` | Titik masuk aplikasi, pemanggilan runApp, dan konfigurasi MaterialApp serta tema. |
| `lib/menu.dart` | Halaman utama, komponen InfoCard dan ItemCard, model ItemHomepage, serta dialog About Me. |
| `pubspec.yaml` | Konfigurasi proyek, batas versi SDK, dan dependency. |
| `analysis_options.yaml` | Konfigurasi analisis statis dan aturan lint. |

## Progres Mingguan

| Tahap | Perubahan |
|---|---|
| Tutorial 08 | Inisialisasi proyek Flutter, pemisahan main.dart dan menu.dart, penggunaan StatelessWidget, serta pembuatan InfoCard dan ItemCard. |
| Tugas 7 | Penambahan atribut warna pada ItemHomepage dan penerapan warna berbeda untuk setiap tombol. |
| Tugas 7 | Perapian format dan komentar kode, pembagian ruang kartu identitas menggunakan Expanded, serta perataan isi kartu. |
| Tugas 7 | Penambahan dialog About Me melalui tombol informasi pada AppBar. |

Commit yang menunjukkan perkembangan tersebut:

- `6e880a7`: Tutorial 08: Basic Flutter.
- `ecbbd56`: Membedakan warna setiap tombol aksi portofolio.
- `c24a8bb`: Merapikan format dan dokumentasi komponen portofolio.
- `60a113e`: Menyesuaikan tata letak kartu dan memperjelas komentar kode.
- `c73bbf7`: Menambahkan dialog tentang saya pada halaman utama.

### Tugas 7

1. **Jelaskan apa yang dimaksud dengan widget tree pada Flutter dan bagaimana hubungan induk-anak (parent-child) bekerja antar-widget!**

   Widget tree adalah susunan hierarkis widget yang membentuk antarmuka
   aplikasi Flutter. Sebuah widget dapat menyusun widget lain sebagai
   anak melalui properti seperti child, children, atau properti khusus
   seperti body.

   Pada proyek ini, MyApp membangun MaterialApp dengan MyHomePage
   sebagai halaman utama. MyHomePage membangun Scaffold yang memiliki
   AppBar dan body. Di dalam body terdapat Row yang menampung tiga
   Expanded, masing-masing berisi InfoCard.

   Hubungan induk–anak memungkinkan antarmuka disusun dari komponen
   kecil. Dalam proses tata letak, induk memberikan batasan ukuran
   kepada anak, kemudian anak menentukan ukurannya sesuai batasan
   tersebut dan induk menempatkannya.

2. **Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya masing-masing!**

   Berikut widget yang ditulis secara langsung dalam kode aplikasi:

   | Widget | Fungsi |
   |---|---|
   | MyApp | Widget akar buatan sendiri yang membangun konfigurasi aplikasi. |
   | MyHomePage | Menyusun halaman utama portofolio. |
   | InfoCard | Komponen kartu untuk menampilkan judul dan isi identitas. |
   | ItemCard | Komponen tombol aksi berdasarkan data ItemHomepage. |
   | MaterialApp | Mengatur aplikasi Material, tema, dan halaman utama. |
   | Scaffold | Menyediakan struktur dasar halaman berupa AppBar dan body. |
   | AppBar | Menampilkan judul aplikasi dan tombol informasi. |
   | Text | Menampilkan tulisan. |
   | Padding | Memberikan ruang di sekeliling widget anak. |
   | Column | Menyusun widget anak secara vertikal. |
   | Row | Menyusun widget anak secara horizontal. |
   | Expanded | Membagi ruang yang tersedia pada Row untuk kartu identitas. |
   | SizedBox | Memberikan jarak antarbagian antarmuka. |
   | Center | Menempatkan widget anak di tengah ruang yang tersedia. |
   | GridView.count | Menyusun tombol aksi dalam kisi dengan jumlah kolom tertentu. |
   | Card | Menampilkan permukaan kartu identitas dengan elevasi. |
   | Container | Membungkus konten dan memberikan padding. |
   | Material | Menyediakan permukaan berwarna dan mendukung efek tinta tombol. |
   | InkWell | Menangani ketukan pengguna dan memberikan efek tinta. |
   | Icon | Menampilkan ikon tombol. |
   | SnackBar | Menampilkan pesan sementara setelah tombol aksi ditekan. |
   | IconButton | Menampilkan tombol ikon untuk membuka dialog About Me. |
   | AlertDialog | Menampilkan informasi About Me dalam dialog. |
   | TextButton | Menyediakan tombol Tutup pada dialog. |

   ItemHomepage merupakan model data, bukan widget. ThemeData,
   ColorScheme, dan TextStyle merupakan objek konfigurasi.
   showDialog adalah fungsi untuk membuka dialog.

3. **Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini umumnya digunakan sebagai root widget pada aplikasi Flutter!**

   MaterialApp menyediakan konfigurasi umum untuk aplikasi berbasis
   Material Design, termasuk tema, halaman awal, dan navigasi.
   Menempatkannya dekat akar membuat konfigurasi tersebut tersedia
   bagi widget turunannya.

   Pada proyek ini, title mengatur judul aplikasi, theme mengatur
   tema warna, dan home menentukan MyHomePage sebagai halaman utama.
   Secara struktur, widget akar buatan saya adalah MyApp, yang
   mengembalikan MaterialApp dari metode build.

4. **Jelaskan perbedaan antara StatelessWidget dan StatefulWidget! Kapan kita sebaiknya memilih StatelessWidget dan kapan harus menggunakan StatefulWidget?**

   StatelessWidget tidak memiliki objek State untuk mengelola
   perubahan keadaan internal. Tampilan ditentukan oleh konfigurasi
   widget dan konteksnya. Widget ini cocok untuk komponen seperti
   kartu identitas dan tombol yang tidak mengelola state sendiri.

   StatelessWidget tetap dapat dibangun ulang ketika konfigurasi
   dari induknya atau dependensi yang digunakannya berubah.

   StatefulWidget memiliki objek State terpisah untuk mengelola
   keadaan yang dapat berubah selama widget digunakan. Contohnya
   penghitung atau formulir dengan pilihan yang berubah.
   Pemanggilan setState memberi tahu Flutter bahwa perubahan
   tersebut perlu ditampilkan melalui proses build berikutnya.

   MyHomePage menggunakan StatelessWidget karena halaman ini tidak
   mengelola perubahan state internal. SnackBar dan dialog dapat
   ditampilkan tanpa mengubah MyHomePage menjadi StatefulWidget.

5. **Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di dalam metode build?**

   BuildContext mewakili lokasi sebuah widget dalam widget tree.
   Konteks memungkinkan kode menemukan konfigurasi atau layanan
   dari ancestor yang sesuai.

   Parameter context pada build digunakan, misalnya, oleh
   Theme.of(context) untuk mengambil tema dan
   ScaffoldMessenger.of(context) untuk menampilkan SnackBar.

   Pada fitur About Me, showDialog menerima context untuk membuka
   dialog. Builder dialog menyediakan dialogContext, yang digunakan
   oleh Navigator.of(dialogContext).pop() untuk menutup rute dialog.

   Pemilihan konteks penting karena pencarian ancestor bergantung
   pada lokasi widget tersebut dalam hierarki.

6. **Jelaskan konsep hot reload di Flutter dan apa perbedaannya dengan hot restart! Kapan kita tidak bisa hanya mengandalkan hot reload dan harus melakukan hot restart atau full restart?**

   Hot reload menerapkan perubahan kode dan membangun ulang widget
   tree sambil mempertahankan state aplikasi. Proses ini tidak
   menjalankan ulang main atau initState. Hot reload cocok untuk
   mencoba perubahan teks, warna, dan tata letak.

   Hot restart memulai ulang aplikasi Flutter dan menghapus state
   yang sedang berjalan. Proses ini diperlukan ketika perubahan
   memerlukan inisialisasi ulang, misalnya perubahan pada kode
   inisialisasi yang tidak dijalankan kembali oleh hot reload.

   Full restart dilakukan dengan menghentikan lalu menjalankan
   kembali aplikasi. Proses ini juga membangun ulang kode native.
   Perubahan pada Kotlin, Java, Swift, atau Objective-C memerlukan
   full restart.

   Beberapa perubahan struktur kode, seperti perubahan jumlah
   parameter tipe generik, juga tidak dapat diterapkan hanya
   melalui hot reload.

## Panduan Pemeriksaan

Jalankan `flutter analyze`, kemudian uji aplikasi dengan
`flutter run -d chrome`.

| Pemeriksaan | Hasil yang diharapkan |
|---|---|
| Halaman utama | Identitas, judul, dan ketiga tombol tampil. |
| Lihat Proyek | SnackBar menampilkan “Kamu telah menekan tombol Lihat Proyek!”. |
| Tambah Proyek | SnackBar menampilkan “Kamu telah menekan tombol Tambah Proyek!”. |
| Logout | SnackBar menampilkan “Kamu telah menekan tombol Logout!”. |
| Tombol ditekan berulang | Pesan sebelumnya diganti tanpa menumpuk antrean SnackBar. |
| Ikon informasi | Dialog About Me terbuka dan menampilkan identitas. |
| Tombol Tutup | Dialog tertutup dan halaman utama dapat digunakan kembali. |
| Ukuran jendela diperkecil | Periksa kartu identitas dan teks agar tidak mengalami overflow. |
| Analisis statis | Tidak ditemukan isu pada kode. |

Analisis statis membantu menemukan masalah kode, tetapi pemeriksaan
tampilan dan interaksi tetap dilakukan dengan menjalankan aplikasi.

## Penggunaan AI (AI DISCLOSURE)

### Tools dan Strategi Prompting

Saya menggunakan Codex dari OpenAI sebagai pendamping belajar.

Strategi prompting saya adalah meminta AI membaca ketentuan tugas,
memeriksa proyek terlebih dahulu, memberikan penjelasan dan contoh
kode, serta mengingatkan tahapan commit berbahasa Indonesia.
Saya meminta AI tidak mengubah kode secara langsung agar saya dapat
mempelajari dan menerapkan perubahan sendiri.

### Bagian yang Dibantu AI

- Pemeriksaan kesesuaian proyek dengan checklist dan rubrik.
- Penjelasan pemodelan warna pada ItemHomepage.
- Contoh penggunaan Expanded untuk membagi ruang kartu identitas.
- Penjelasan dan contoh dialog About Me.
- Perapian komentar kode dan penyusunan pesan commit.
- Penyusunan draf README dan jawaban pertanyaan reflektif.
- Penjelasan perbedaan final, const, dan static const.
- Pemeriksaan interaksi dan tata letak melalui uji widget sementara,
  termasuk identifikasi overflow pada kartu tombol.

### Evaluasi Kritis dan Penyesuaian Manual

AI tidak otomatis mengetahui preferensi bahasa, desain, dan informasi
pribadi yang ingin saya tampilkan. Sebagai contoh, AI menyarankan
judul “Tentang Saya”, sedangkan saya memilih “About Me” dan
menggunakan label Name serta Class.

AI juga mengusulkan warna biru, hijau, dan merah. Saya meninjau
usulan tersebut dan menerima pilihan warnanya. Penerimaan saran
warna merupakan keputusan desain saya, bukan perbaikan terhadap
kesalahan AI.

Saya menerapkan perubahan kode secara manual, termasuk penggunaan
Expanded, penghapusan pengaturan lebar kartu sebelumnya, perataan
isi kartu, perapian komentar, dan penambahan dialog.

Analisis statis belum menjamin tampilan aman pada seluruh ukuran
layar. Contohnya, penggunaan Expanded memperbaiki pembagian ruang
kartu identitas, tetapi pemeriksaan widget berikutnya masih
menemukan overflow pada kartu tombol di layar kecil.

Saya menerapkan penyesuaian tinggi kartu melalui mainAxisExtent
dan memeriksa kembali tampilannya. Temuan ini menunjukkan bahwa
saran AI perlu diverifikasi terhadap keseluruhan antarmuka,
bukan hanya bagian yang sedang diperbaiki.

### Link Log Prompting
- Tugas 7 : https://chatgpt.com/s/cx_6afae6a0abec8191af94d98ace5025b1


## Referensi

- [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html)
- [StatelessWidget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)
- [StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)
- [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.html)
- [Hot reload dan restart](https://docs.flutter.dev/tools/hot-reload)