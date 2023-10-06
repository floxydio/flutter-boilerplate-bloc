
# Flutter Boilerplate using Bloc Architecture

Boilerplate ini menggunakan Flutter Bloc sebagai State management dan Dio sebagai http








## Folder Structure


Folder Structure didalam lib :

- config : Untuk Config pada HTTP, Error maupun Logging
- constant : Tempat dimana menaruh ukuran, ketebalan, jenis font yang sering dipakai berulang termasuk juga Warna, Ukurang Device, dll
- feature : Tempat dimana menaruh fitur di dalam screen didalam feature sendiri terdapat

- feature - models : Sebagai tempat menaruhnya model response dan juga Data Transfer Object (DTO)
- feature - bloc : Tempat untuk menaruh State management menggunakan bloc disana terdapat Event sebagai Success, Failure atau Timeout sebagai Emit dan juga State sebagai eksekusi nya
- feature - screen : Sebagai screen pada fitur tersebut
- feature - [nama-feature].main.dart : Sebagai penampung bloc yang sudah dibuat pada fitur tersebut
- repository : Sebagai penampung semua Endpoint disetiap fitur, masing-masin fitur dibuat .dart nya sendiri
- .env : Sebagai Config Base URL


## Package pubspec.yaml

Package yang akan dipakai di dalam struktur ini :

- dio: Sebagai http untuk komunikasi dengan response pada API
- font_awesome_flutter: Sebagai Icon kedua pengganti Material UI Icon
- flutter_bloc: Sebagai state management yang digunakan
- equatable: Sebagai package pada event bloc
- url_launcher: Untuk redirect ke suatu website atau intent
- shared_preferences: Sebagai penampung data di cache
- cached_network_image: Sebagai caching pada suatu gambar setelah di load supaya cepat
- intl: Sebagai parse pada DateTime
- flutter_svg: Sebagai load SVG File
- fpdart: Digunakan sebagai Either untuk log error dan berhasil
- logger: Sebagai log pada widget dan state yang ada
- shimmer: Sebagai Loading kerangka disaat Loading
- package_info_plus: Sebagai info device yang digunakan
- awesome_dio_interceptor: Sebagai Logging pada http Dio
## Authors

- [Dio Okta R](https://www.github.com/floxydio)


## Tech

**Mobile:** Flutter 3.13.4


