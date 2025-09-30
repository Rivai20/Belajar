import 'dart:io';

void main() {
  int uang = 0;
  int sisauang = 0; 
  bool firstInput = true;

  
  do {
    stdout.write("Jumlah Uang Anda: ");
    try {
      uang = int.parse(stdin.readLineSync()!);
      sisauang = uang; 
      firstInput = false;
    } catch (e) {
      print("Masukkan angka yang valid!");
    }
  } while (firstInput);

  bool lanjutorder = true;

  do {
    stdout.write("Pilih Menu (1. Makanan / 2. Minuman / 3. Selesai): ");
    int? menu;
    try {
      menu = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Masukkan angka yang valid!");
      continue;
    }

    switch (menu) {
      case 1:
        print(
            "Menu Makanan:\n1. Nasi Goreng - Rp 20000\n2. Mie Goreng - Rp 15000\n3. Ayam Geprek - Rp 25000\n4. Ayam Bakar - Rp 30000\n5. Sate Ayam - Rp 20000");
        stdout.write("Pilih Menu Makanan: ");
        int? makanan;
        try {
          makanan = int.parse(stdin.readLineSync()!);
        } catch (e) {
          print("Masukkan angka yang valid!");
          continue;
        }

        int harga = 0;
        String? namamenu;

        switch (makanan) {
          case 1:
            namamenu = "Nasi Goreng";
            harga = 20000;
            break;
          case 2:
            namamenu = "Mie Goreng";
            harga = 15000;
            break;
          case 3:
            namamenu = "Ayam Geprek";
            harga = 25000;
            break;
          case 4:
            namamenu = "Ayam Bakar";
            harga = 30000;
            break;
          case 5:
            namamenu = "Sate Ayam";
            harga = 20000;
            break;
          default:
            print("Menu Tidak Tersedia/Tidak ingin memesan");
            continue;
        }

        if (sisauang >= harga) {
          print("Anda telah Memesan $namamenu");
          sisauang -= harga;
          print("Uang kembalian Anda: Rp $sisauang");
        } else {
          print("Uang Anda tidak cukup untuk memesan $namamenu!");
        }
        break;

      case 2:

        print(
            "Menu Minuman:\n1. Es Teh - Rp 5000\n2. Es Jeruk - Rp 7000\n3. Jus Alpukat - Rp 10000\n4. Jus Mangga - Rp 10000\n5. Air Mineral - Rp 5000");
        stdout.write("Pilih Menu Minuman: ");
        int? minuman;
        try {
          minuman = int.parse(stdin.readLineSync()!);
        } catch (e) {
          print("Masukkan angka yang valid!");
          continue;
        }

        int harga = 0;
        String? namamenu;

        switch (minuman) {
          case 1:
            namamenu = "Es Teh";
            harga = 5000;
            break;
          case 2:
            namamenu = "Es Jeruk";
            harga = 7000;
            break;
          case 3:
            namamenu = "Jus Alpukat";
            harga = 10000;
            break;
          case 4:
            namamenu = "Jus Mangga";
            harga = 10000;
            break;
          case 5:
            namamenu = "Air Mineral";
            harga = 5000;
            break;
          default:
            print("Menu Tidak Tersedia/Tidak ingin memesan");
            continue;
        }


        if (sisauang >= harga) {
          print("Anda telah Memesan $namamenu");
          sisauang -= harga;
          print("Uang kembalian Anda: Rp $sisauang");
        } else {
          print("Uang Anda tidak cukup untuk memesan $namamenu!");
        }
        break;

      case 3:
        print("Terima kasih telah memesan! Uang kembalian akhir Anda: Rp $sisauang");
        lanjutorder = false;
        break;

      default:
        print("Pilihan tidak valid, silakan pilih 1, 2, atau 3.");
    }
  } while (lanjutorder);
}