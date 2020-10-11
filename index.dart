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

  pacientes.forEach((paciente) {
    arrayConvertido.add(paciente.split("|"));
    arrayConvertido.forEach((item) {
      if (int.parse(item[1]) > 20) {
        if (!mais20Anos.contains(item[1])) {
          mais20Anos.add(item[1]);
        }
      }
    });
  });

  print("Existem ${mais20Anos.length} pacientes com mais de 20 anos de idade");

  pacientes.forEach((paciente) {
    arrayConvertido.add(paciente.split("|"));
    arrayConvertido.forEach((item) {
      
    });
  });

// Baseado no array acima monte um relatório onde mostre
// Apresente a quantidade de pacientes com mais de 20 anos [V]
// Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
}
