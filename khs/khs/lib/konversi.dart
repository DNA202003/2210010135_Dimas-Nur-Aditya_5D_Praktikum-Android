// ignore_for_file: prefer_function_declarations_over_variables

class Konversi {

   final indeksPrestrasiSemester =(nilai){
         if (nilai>=0 && nilai<=2.5) {
          return 'Tidak Memuaskan';
         } else if (nilai >=2.6 && nilai<3.0){
          return 'Memuaskan';
         }else if (nilai>= 3.1 && nilai <= 3.5) {
            return 'Sangat Memuaskan';
         } else{
          return 'Dengan Pujian';
         }
   };

   final sksMatkul=(grade){

      if (grade=='E'){
        return 0;
      }else if (grade=='D'){
        return 1;
      } else if (grade=='C'){
         return 1.5;
      }else if (grade=='C+'){
        return 2;
      }else if(grade=='B'){
        return 3;
      }else if (grade=='B+'){
        return 3.5;
      }else{
        return 4;
      }

   };

}