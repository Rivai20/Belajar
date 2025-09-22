import 'dart:io';
void main(){
    stdout.write('Masukan Skor Mahasiswa :  ');
    String? input = stdin.readLineSync();
    int Skor = int.parse(input!);
    if (Skor == null || Skor < 0 || Skor > 100) {
      print('Input tidak valid. Silakan masukkan angka antara 0 hingga 100.');
      return;
    }
    String Grade = '';
    if(Skor >= 85 && Skor <= 100){
      Grade = 'A';
    } else if(Skor >= 70 && Skor < 85 ){
      Grade = 'B'; 
    } else if(Skor >= 60 && Skor < 70 ){
      Grade = 'C';
    } else if(Skor >= 50 && Skor < 60 ){
      Grade = 'D';
    } else {
      Grade = 'E';
    }
    print ('Skor Mahasiswa : $Skor');
    print('Grade Mahasiswa : $Grade');

}