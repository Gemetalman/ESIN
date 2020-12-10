# ESIN

Base de dados regional para hospitais

Tendo em conta o crescimento exponencial de unidades hospitalares privadas e publicas surge a necessidade de partilhar os dados de diferentes utentes entre as unidades hospitalares, para tal pretende-se criar uma base de dados regional para facilitar a mobilidade médica dos utentes numa determinada região.
O sistema ira contemplar todas as informações dos serviços prestados nas distintas unidades hospitalares, ficha médica de cada utente, médico de família, seguro ou plano de saúde. Uma vez que o objetivo principal desse sistema é permitir que haja interação entre diferentes unidades hospitalares de modo a dar uma resposta segura e rápida durante o atendimento para uma nova consulta ou emergência médica do utente, o sistema devera dispor dos seguintes requisitos:
1.	Cada utente deve dispor de um ID pessoal, permitindo ter o acesso aos seus dados pessoais e clínicos como, nome, idade, número de telefone, morada. 
2.	O utente pode realizar marcações de consultas fazendo login com um par de credenciais.
3.	Para agendar consultas, deve-se ter em conta a especialidade em questão e escolher o médico que estiver disponível para a data/hora desejada.
4.	As unidades hospitalares estarão organizadas por diferentes departamentos com respetivos nomes e enumeração. Entre estes estão vários departamentos clínicos, cada qual com a sua especialidade.
5.	O departamento administrativo abre o episódio médico do utente, gera um processo, contendo dados pessoais como, ID pessoal, nome, idade, queixas e disponibiliza essas informações ao médico através do email institucional do hospital.   
6.	As especialidades médicas devem dispor de um nome, um identificador e estar associadas a um médico.
7.	Os médicos deverão estar identificados por ID institucional e unidade hospitalar a que pertence. Devem ter um horário de atendimento atribuído. Podem ser médicos de especialidade ou médicos de família. Dentro da sua unidade hospitalar cada médico tem um consultório, identificado pelo número e piso.
8.	Os médicos podem aceder a sua agenda de trabalho, fazendo login com um par de credenciais, visualizar o número de pacientes que estão cadastrados para realização de consultas num determinado dia.
9.	Os dados clínicos do utente como, histórico das consultas já realizadas, receitas prescritas, medicações feitas e eventuais doenças crónicas podem ser partilhadas entre o médico e departamento administrativo hospitalar.
10. Para emergências médicas, guardar a hora de entrada do paciente e a de saída. Atualizar os dados clínicos do utente com cuidados adicionais não urgentes.
11. Um médico pode atender vários pacientes, tal como um paciente pode ser atendido por vários médicos.
