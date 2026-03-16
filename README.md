# Widget & State

| Name           | NRP        | Kelas     |
| :---:       | :---:     | :----------: |
| Ahmad Faiz Tajuddin | 5025231291 | PPB E |

# Gambar Hasil 

<img width="629" height="890" alt="Screenshot 2026-03-17 011941" src="https://github.com/user-attachments/assets/61799639-c447-4ff8-bad6-6253d9058d7f" />

---

# Kode Program

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Puzzle App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const RowColumnPage(),
    );
  }
}

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Puzzle App',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: screenWidth,
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                padding: const EdgeInsets.all(15),
                color: Colors.lightBlueAccent,
                child: Image.network(
                  'https://picsum.photos/600/200',
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              width: screenWidth,
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(255, 41, 239, 71),
              child: const Text(
                'What image is that',
                style: TextStyle(fontSize: 16),
              ),
            ),

            Container(
              width: screenWidth,
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              padding: const EdgeInsets.all(20),
              color: Colors.yellowAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.food_bank),
                      Text("Food"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.landscape),
                      Text("Scenery"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.people),
                      Text("People"),
                    ],
                  ),
                ],
              ),
            ),

            const CounterCard(),
          ],
        ),
      ),
    );
  }
}

class CounterCard extends StatefulWidget {
  const CounterCard({super.key});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: const EdgeInsets.all(20),
      width: screenWidth,
      color: Colors.cyanAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Counter here: $_counter",
            style: const TextStyle(fontSize: 16),
          ),
          Container(
            color: Colors.cyan,
            child: IconButton(
              onPressed: _incrementCounter,
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
```

---

# Penjelasan Struktur Program

## 1. Fungsi `main()`

```dart
void main() {
  runApp(const MyApp());
}
```

### Alasan Penggunaan

Fungsi `main()` merupakan **titik awal eksekusi program Flutter**.

### Kegunaan

* Menjalankan aplikasi menggunakan fungsi `runApp()`.
* Memanggil widget utama yang akan ditampilkan pada aplikasi.

---

## 2. Widget `MaterialApp`

```dart
MaterialApp(
  title: 'My First App',
  theme: ThemeData(),
  home: const RowColumnPage(),
)
```

### Alasan Penggunaan

`MaterialApp` digunakan karena aplikasi ini menggunakan **Material Design**, yaitu standar desain UI dari Android.

### Kegunaan

* Mengatur tema aplikasi
* Mengatur halaman utama aplikasi
* Mengelola navigasi antar halaman

---

## 3. Widget `Scaffold`

```dart
Scaffold(
  appBar: AppBar(),
  body: Column(),
)
```

### Alasan Penggunaan

`Scaffold` digunakan untuk menyediakan **struktur dasar tampilan aplikasi**.

### Kegunaan

* Menyediakan layout standar aplikasi
* Menyediakan tempat untuk `AppBar`, `Body`, `FloatingButton`, dll

---

## 4. Widget `AppBar`

```dart
AppBar(
  title: Text("My First App"),
)
```

### Alasan Penggunaan

Digunakan untuk menampilkan **judul aplikasi di bagian atas layar**.

### Kegunaan

* Menampilkan judul aplikasi
* Menjadi bagian navigasi utama aplikasi

---

## 5. Widget `Column`

```dart
Column(
  children: <Widget>[
    Image,
    Text,
    Row,
    CounterCard
  ],
)
```

### Alasan Penggunaan

`Column` digunakan karena elemen-elemen tampilan disusun **secara vertikal dari atas ke bawah**.

### Kegunaan

* Mengatur widget agar tersusun vertikal
* Mengatur posisi antar widget

---

## 6. Widget `Row`

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(...),
    Column(...),
    Column(...)
  ],
)
```

### Alasan Penggunaan

`Row` digunakan untuk menampilkan beberapa ikon kategori **secara horizontal**.

### Kegunaan

* Menyusun widget secara horizontal
* Mengatur jarak antar widget

---

## 7. Widget `Container`

```dart
Container(
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.all(20),
)
```

### Alasan Penggunaan

`Container` digunakan sebagai **pembungkus widget** agar dapat diberi ukuran, warna, margin, dan padding.

### Kegunaan

* Mengatur ukuran widget
* Memberi warna latar
* Mengatur jarak antar widget

---

## 8. Widget `Image.network`

```dart
Image.network(
  'https://picsum.photos/400'
)
```

### Alasan Penggunaan

Digunakan untuk menampilkan **gambar dari internet** tanpa harus menyimpan gambar di dalam project.

### Kegunaan

* Mengambil gambar dari URL
* Menampilkan gambar pada aplikasi

---

## 9. Widget `Icon`

```dart
Icon(Icons.food_bank)
```

### Alasan Penggunaan

Digunakan untuk menampilkan **ikon kategori gambar**.

### Kegunaan

* Menampilkan simbol visual
* Mempermudah pengguna memahami kategori

---

## 10. `StatefulWidget` pada Counter

```dart
class CounterCard extends StatefulWidget
```

### Alasan Penggunaan

`StatefulWidget` digunakan karena nilai **counter dapat berubah ketika tombol ditekan**.

### Kegunaan

* Mengelola data yang dapat berubah
* Memperbarui tampilan ketika data berubah

---

## 11. Fungsi `setState()`

```dart
setState(() {
  _counter++;
});
```

### Alasan Penggunaan

Digunakan untuk memberi tahu Flutter bahwa **state aplikasi berubah**.

### Kegunaan

* Memperbarui tampilan UI
* Menampilkan nilai counter terbaru

---
