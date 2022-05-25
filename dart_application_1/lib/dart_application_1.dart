import 'dart:io';

void calculadora() {
  print('''
  ================= Calculador de desgate da moto usando no dia =================
  1 - Calcular custos gastos com gasolina por km  -- valor do litro da gasolina, litros abastecidos, kilometragem rodada
  2 - Calcular gasto com gasolina rodado no dia 
  3 - Calcular gastos com pneu -- kilometragem rodada X valor do pneu a cada 15000k. Ex: 15k = 
  4 - Calcular gasto com oleo -- 1000km = 
  5 - Total de gastos com a moto no dia -- gasto gasolina + pneu + oleo
  ''');

  print("Escolha uma opção de gasto para moto: ");
  int escolha = int.parse(stdin.readLineSync()!);

  /*print("Informe a kilometragem que você rodou hoje");
  double kmRodados = double.parse(stdin.readLineSync()!);

  print("Informe o valor que voce paga no oleo trocado");
  double valorOleo = double.parse(stdin.readLineSync()!);

  print("Informe o valor que voce paga no pneu trocado");
  double valorPneu = double.parse(stdin.readLineSync()!);*/

  if (escolha == 1) {
    print("Informe o valor que voce paga no litro da gasolina: ");
    double valorGasolina = double.parse(stdin.readLineSync()!);
    print("Informe a media km/L que sua moto faz: ");
    double mediaMoto = double.parse(stdin.readLineSync()!);
    var gastoGasolinaKm = (valorGasolina / mediaMoto);
    print("Você pagou $gastoGasolinaKm por Km rodado");
  } else if (escolha == 2) {
    print("Informe o valor que voce paga no litro da gasolina: ");
    double valorGasolina = double.parse(stdin.readLineSync()!);
    print("Informe a media km/L que sua moto faz: ");
    double mediaMoto = double.parse(stdin.readLineSync()!);
    print("Informe a kilometragem que você rodou hoje: ");
    double kmRodados = double.parse(stdin.readLineSync()!);
    var gasolinaMedia = (valorGasolina / mediaMoto);
    var kmMedia = (kmRodados / mediaMoto);
    var gasolinaTotal = gasolinaMedia * kmMedia;
    print("Você pagou $gasolinaTotal ao total");
  } else if (escolha == 3) {
    print("Informe o valor que voce paga no pneu trocado: ");
    double valorPneu = double.parse(stdin.readLineSync()!);
    print("Informe a kilometragem que você rodou hoje: ");
    double kmRodados = double.parse(stdin.readLineSync()!);
    var pneuTotal = (valorPneu * kmRodados) / 15000;
    print(
        "Se um pneu dura em média 15.000km, você gastou $pneuTotal de reais hoje.");
  }
}
