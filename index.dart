void main(List<String> args) {
  List patientesWithMore20Years = List();
  List familyArray = List();
  
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  for(int i = 0; i <= pacientes.length; i++) {
    var generateArray = pacientes[i].split('|');
    for(int j = 0; j <= generateArray.length; j++) {
      if(j == 2) {
        if(int.parse(generateArray[j]) > 20) {
          patientesWithMore20Years.add(generateArray[j]);
        }
      }
    } 
  }

    for(int i = 0; i <= pacientes.length; i++) {
    var generateArray = pacientes[i].split('|');
    for(int j = 0; j <= generateArray.length; j++) {
      if(j == 1) {
        familyArray.add(generateArray[j].split(" "));
      }
      print('Família ${familyArray[j]}');
    } 
  }

  print('Existem ${patientesWithMore20Years.length} com mais de 20');

}