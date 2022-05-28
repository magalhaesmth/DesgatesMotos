import 'dart:io';

String calculadora() {
  try {
    print('''
    ================= Calculador de desgate da moto e lucro de entregas =================
    1 - Calcular custos gastos com gasolina por km  -- valor do litro da gasolina, litros abastecidos, kilometragem rodada
    2 - Calcular gasto com gasolina rodado no dia 
    3 - Calcular gastos com pneu -- kilometragem rodada X valor do pneu a cada 15000k. Ex: 15k = 
    4 - Calcular gasto com oleo -- 1000km = 
    5 - Calcular gastos com a relação da moto
    6 - Total de gastos com a moto no dia -- gasto gasolina + pneu + oleo
    7 - Calcular media de gastos por mês 
    8 - Calcular lucro bruto coma as entregas no dia
    9 - Calcular lucro liquido com as entregas no dia
    10 - Calcular media de lucro no mes
    ''');

    print("Escolha uma opção de gasto para moto: ");
    int escolha = int.parse(stdin.readLineSync()!);
    String total = '';

    try {
      if (escolha == 1) {
        total = opcoes(() {
          print("Informe o valor que voce paga no litro da gasolina: ");
          double valorGasolina = double.parse(stdin.readLineSync()!);
          print("Informe a media km/L que sua moto faz: ");
          double mediaMoto = double.parse(stdin.readLineSync()!);
          var gastoGasolinaKm = (valorGasolina / mediaMoto);
          return 'Você pagou R\$ {($gastoGasolinaKm por Km rodado)}';
        });
      } else if (escolha == 2) {
        total = opcoes(() {
          print("Informe o valor que voce paga no litro da gasolina: ");
          double valorGasolina = double.parse(stdin.readLineSync()!);
          print("Informe a media km/L que sua moto faz: ");
          double mediaMoto = double.parse(stdin.readLineSync()!);
          print("Informe a kilometragem que você rodou hoje: ");
          double kmRodados = double.parse(stdin.readLineSync()!);
          var gasolinaTotal =
              (valorGasolina / mediaMoto) * (kmRodados / mediaMoto);
          return 'Você pagou R\$ {($gasolinaTotal ao total)}';
        });
      } else if (escolha == 3) {
        total = opcoes(() {
          print("Informe o valor que voce paga no pneu trocado: ");
          double valorPneu = double.parse(stdin.readLineSync()!);
          print("Informe a kilometragem que você rodou hoje: ");
          double kmRodados = double.parse(stdin.readLineSync()!);
          var pneuTotal = (valorPneu * kmRodados) / 15000;
          return 'Se um pneu dura em média 15.000km, você gastou R\$ {($pneuTotal)}';
        });
      } else if (escolha == 4) {
        total = opcoes(() {
          print("Informe o valor que voce paga no oleo trocado");
          double valorOleo = double.parse(stdin.readLineSync()!);
          print("Informe a kilometragem que você rodou hoje: ");
          double kmRodados = double.parse(stdin.readLineSync()!);
          var oleoTotal = (valorOleo * kmRodados) / 1000;
          return 'Se um oleo dura 1000kms, você gastou R\$ {($oleoTotal)}';
        });
      } else if (escolha == 5) {
        total = opcoes(() {
          print("Informe o valor que voce paga na relação da sua moto");
          double valorRelacao = double.parse(stdin.readLineSync()!);
          print("Informe a kilometragem que você rodou hoje: ");
          double kmRodados = double.parse(stdin.readLineSync()!);
          var relacaoTotal = (valorRelacao * kmRodados) / 12000;
          return 'Se a relação dura em média 12000km, você gastou R\$ {($relacaoTotal)}';
        });
      } else if (escolha == 6) {
        total = opcoes(() {
          print("Informe o valor que voce paga no litro da gasolina: ");
          double valorGasolina = double.parse(stdin.readLineSync()!);
          print("Informe a media km/L que sua moto faz: ");
          double mediaMoto = double.parse(stdin.readLineSync()!);
          print("Informe o valor que voce paga no oleo trocado");
          double valorOleo = double.parse(stdin.readLineSync()!);
          print("Informe a kilometragem que você rodou hoje: ");
          double kmRodados = double.parse(stdin.readLineSync()!);
          print("Informe o valor que voce paga no pneu trocado: ");
          double valorPneu = double.parse(stdin.readLineSync()!);
          print("Informe o valor que voce paga na relação da sua moto");
          double valorRelacao = double.parse(stdin.readLineSync()!);
          var gasolinaTotal =
              (valorGasolina / mediaMoto) * (kmRodados / mediaMoto);
          var pneuTotal = (valorPneu * kmRodados) / 15000;
          var oleoTotal = (valorOleo * kmRodados) / 1000;
          var relacaoTotal = (valorRelacao * kmRodados) / 12000;
          double tudoTotal =
              gasolinaTotal + pneuTotal + oleoTotal + relacaoTotal;
          return 'Você gastou ao total no dia de hoje R\$ {($tudoTotal)}';
        });
      } else if (escolha == 7) {
        total = opcoes(() {
          print("Informe o valor que voce paga no litro da gasolina: ");
          double valorGasolina = double.parse(stdin.readLineSync()!);
          print("Informe a media km/L que sua moto faz: ");
          double mediaMoto = double.parse(stdin.readLineSync()!);
          print("Informe o valor que voce paga no oleo trocado");
          double valorOleo = double.parse(stdin.readLineSync()!);
          print("Informe a kilometragem que você rodou hoje: ");
          double valorPneu = double.parse(stdin.readLineSync()!);
          print("Informe o valor que voce paga na relação da sua moto");
          double valorRelacao = double.parse(stdin.readLineSync()!);
          print("Informe quantos dias você trabalhou essa mês");
          double diasTrabalhados = double.parse(stdin.readLineSync()!);
          var gasolinaTotal = (valorGasolina / mediaMoto) * (mediaMoto / 500);
          var pneuTotal = (valorPneu * 500) / 15000;
          var oleoTotal = (valorOleo * 500) / 1000;
          var relacaoTotal = (valorRelacao * 500) / 12000;
          double tudoTotal =
              (gasolinaTotal + pneuTotal + oleoTotal + relacaoTotal) *
                  diasTrabalhados;
          return 'Supondo que você roda 500km por dia, você gasta um total de R\$ {($tudoTotal)} por mês';
        });
      } else if (escolha == 8) {
        total = opcoes(() {
          print("Informe o valor que voce recebe em media por cada entrega");
          double valorEntrega = double.parse(stdin.readLineSync()!);
          print("Informe quantas entregas voce fez hoje: ");
          double qtdeEntregas = double.parse(stdin.readLineSync()!);
          var dinEntregas = (valorEntrega * qtdeEntregas);
          return 'Você fez hoje um total de R\$ {($dinEntregas)} bruto';
        });
      } else if (escolha == 9) {
        total = opcoes(() {
          print("Informe o valor que voce recebe em media por cada entrega");
          double valorEntrega = double.parse(stdin.readLineSync()!);
          print("Informe quantas entregas voce fez hoje: ");
          double qtdeEntregas = double.parse(stdin.readLineSync()!);
          print("Informe o total de gasto que você teve hoje");
          double totalGasto = double.parse(stdin.readLineSync()!);
          var dinEntregas = (valorEntrega * qtdeEntregas) - totalGasto;
          return 'Você fez hoje um total de R\$ {($dinEntregas)} liquido';
        });
      } else {
        print("Opção inválida!");
      }
    } on FormatException catch (e) {
      print("Valor informado errado.");
      print(e);
    } catch (e) {
      print("Valor incorreto.");
      print(e);
    }
    print(total());
  } catch (f) {
    print("Error");
    print(f);
  }
}
