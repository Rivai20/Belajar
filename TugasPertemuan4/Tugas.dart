import 'dart:io';

void main() {
  List<Map<String, dynamic>> makanan = [
    {'nama': 'Nasi Goreng', 'harga': 20000},
    {'nama': 'Mie Ayam', 'harga': 18000},
    {'nama': 'Sate Ayam', 'harga': 25000},
  ];

  List<Map<String, dynamic>> minuman = [
    {'nama': 'Es Teh', 'harga': 5000},
    {'nama': 'Jus Jeruk', 'harga': 8000},
    {'nama': 'Kopi', 'harga': 7000},
  ];

  int totalBayar = 0;
  bool selesai = false;

  print('=== Selamat Datang di Restoran ===');

  do {
    print('\nMenu Makanan:');
    for (int i = 0; i < makanan.length; i++) {
      print('${i + 1}. ${makanan[i]['nama']} - Rp${makanan[i]['harga']}');
    }

    print('\nMenu Minuman:');
    for (int i = 0; i < minuman.length; i++) {
      print('${i + 1}. ${minuman[i]['nama']} - Rp${minuman[i]['harga']}');
    }

    print('\nPilih kategori (1: Makanan, 2: Minuman, 0: Selesai):');
    String? kategori = stdin.readLineSync();

    if (kategori == '1') {
      print('Pilih nomor makanan (atau 0 untuk batal):');
      String? pilihan = stdin.readLineSync();
      int idx = int.tryParse(pilihan ?? '') ?? 0;
      if (idx > 0 && idx <= makanan.length) {
        totalBayar =+ makanan[idx - 1]['harga'];
        print('Ditambahkan: ${makanan[idx - 1]['nama']}');
      }
    } else if (kategori == '2') {
      print('Pilih nomor minuman (atau 0 untuk batal):');
      String? pilihan = stdin.readLineSync();
      int idx = int.tryParse(pilihan ?? '') ?? 0;
      if (idx > 0 && idx <= minuman.length) {
        totalBayar =+ minuman[idx - 1]['harga'];
        print('Ditambahkan: ${minuman[idx - 1]['nama']}');
      }
    } else if (kategori == '0') {
      selesai = true;
    }
  } while (!selesai);

  print('\nTotal yang harus dibayar: Rp$totalBayar');
  print('Masukkan jumlah uang pembayaran:');
  int bayar = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  while (bayar < totalBayar) {
    print('Uang tidak cukup. Masukkan lagi:');
    bayar = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  }

  int kembalian = bayar - totalBayar;
  print('Terima kasih! Kembalian Anda: Rp$kembalian');
  print('Program selesai.');
}