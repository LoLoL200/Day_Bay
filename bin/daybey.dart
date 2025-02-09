
import 'dart:io';

void main() {
  

  
   const double Limit_Many = 100.0;//Грошовий ліміт
   
   Map<String, double> Expenses = {};//Список витрат

   stdout.write("Яка у вас кількість витрат за сьогодні:");//Кількість витрат за сьогодні
   int? Count = int.tryParse(stdin.readLineSync()?? "0");
   double Total = 0.0;

   for(int i = 0; i < (Count ?? 0); i++){
    stdout.write("Введіть категорію витрат:");
    String Category = stdin.readLineSync() ?? "Без категорії";

    stdout.write("Введіть суму росходів:");
    double? Amount = double.tryParse(stdin.readLineSync() ?? "0");

    if(Amount != null && Amount > 0){
      Expenses[Category]=(Expenses[Category] ?? 0) + Amount;
      Total += Amount;
    }
   }
double Averege = Count! > 0 ? Total / Count : 0;

bool IsOverLimit = Total > Limit_Many;

   print('\nВаші витрати за день:');

     Expenses.forEach((category, amount) {
    print("- $category: \$${amount.toStringAsFixed(2)}");
  });

  print("\nЗагальна сума: \$${Total.toStringAsFixed(2)}");
  print("Средні витрати: \$${Averege.toStringAsFixed(2)}");
  print(IsOverLimit ? "УВАГА ліміт закінчився!" : "Ви вклались у леміт.");

   
  
  
}
