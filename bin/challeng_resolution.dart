void main() {
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  List<String> patientData = [];
  var desenvolvedor = 0;
  var estudante = 0;
  var dentista = 0;
  var jornalista = 0;
  var age = 0;
  var amount = 0;
  var ocupation = "";
  var state = "";

  print('Relatório Final\n');
  print('1° PACIENTES MAIORES DE 20 ANOS');
  for (var paciente in pacientes) {
    patientData = paciente.split("|");
    age = int.parse(patientData[1]);
    // o rodrigo usou o tryparse e fez o null awerw operators
    if (age > 20) {
      print(patientData[0]);
    }
  }

  print('\n2° CONTAGEM DE PROFISSÃO');
  // o rodrigo fez uma lista com cada profissão
  // fez um .add
  // chamou o forEach e printou os nomes
  for (var paciente in pacientes) {
    patientData = paciente.split("|");
    ocupation = patientData[2].toUpperCase();
    if (ocupation == 'DESENVOLVEDOR') {
      desenvolvedor++;
    } else if (ocupation == 'ESTUDANTE') {
      estudante++;
    } else if (ocupation == 'DENTISTA') {
      dentista++;
    } else {
      jornalista++;
    }
  }
  print(
      'Desenvovedor = $desenvolvedor\nEstudante = $estudante \nDentista = $dentista \nJornalista = $jornalista');

  print('\n 3° PACIENTES QUE MORA EM SÃO PAULO');
  //aqui o rodrigo pritou o nome não a quantidade
  for (var paciente in pacientes) {
    final patientData = paciente.split("|");
    state = patientData[3];
    if (state == 'SP') {
      amount++;
    }
  }
  print('encontramos $amount paciente(s)');
}
