void main() {
  List<dynamic> arrayConvertido = [];
  List<dynamic> mais20Anos = [];
  List<dynamic> pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  List<dynamic> rahman = [];
  List<dynamic> silva = [];
  List<dynamic> verne = [];
  var qtde;

  pacientes.forEach((paciente) {
    arrayConvertido.add(paciente.split("|"));
    if (int.tryParse(arrayConvertido[1]) > 20) {
      qtde++;
    }
  });

  print("Existem ${mais20Anos.length} pacientes com mais de 20 anos de idade");

  pacientes.forEach((paciente) {
    arrayConvertido.add(paciente.split("|"));
    arrayConvertido.forEach((item) {
      if (item[0].contains("Rahman") && !rahman.contains(item[0])) {
        rahman.add(item[0]);
      }
      if (item[0].contains("Silva") && !silva.contains(item[0])) {
        silva.add(item[0]);
      }
      if(item[0].contains("Verne") && !verne.contains(item[0])) {
        verne.add(item[0]);
      }
    });
  });

  print("Família Rahman" + rahman.toString());
  print("Família Silva" + silva.toString());
  print("Família Verne" + verne.toString());

// Baseado no array acima monte um relatório onde mostre
// Apresente a quantidade de pacientes com mais de 20 anos [V]
// Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
}
