# Banco de Dados – Escola

Este projeto define um banco de dados relacional completo para uma escola, chamado `Escola`.  
A atividade tinha como objetivo treinar modelagem com várias tabelas relacionadas, chaves primárias e chaves estrangeiras.

## Visão geral

O banco cobre os principais setores de uma escola:

- **Alunos e Professores**
- **Notas e Ocorrências**
- **Biblioteca**
- **Contratos e Funcionários**
- **Grêmio Estudantil**
- **Equipamentos e Ambientes (salas/labs)**

## Tabelas principais

- **Alunos**  
  Guarda os dados dos estudantes, incluindo presença, faltas e número de ocorrências.

- **Professores**  
  Armazena informações de docentes: disciplinas que lecionam, horários, salário, turmas, faltas e presença.

- **Ocorrencias**  
  Liga um aluno a um professor, registrando descrição e data da ocorrência (disciplina, advertência etc.).  
  Usa FKs `aluno_id → Alunos(id)` e `professor_id → Professores(id)`.

- **Notas**  
  Registra as menções/notas dos alunos em cada disciplina, também vinculadas a um professor.  
  FKs `aluno_id → Alunos(id)` e `professor_id → Professores(id)`.

- **Biblioteca**  
  Controla empréstimos de livros para alunos, com datas de empréstimo e devolução, ligada à tabela `Alunos`.

- **Contratos**  
  Registra contratos com fornecedores: descrição, prazo e signatários.

- **Funcionarios**  
  Tabela de funcionários em geral (não docentes), com carga horária, salário, presença/faltas, setor, telefone e CPF.

- **Gremio**  
  Liga alunos ao grêmio estudantil, registrando membros e data de efetivação.

- **Equipamentos**  
  Lista equipamentos da escola (computadores, projetores etc.) com descrição, tipo e local.

- **Ambientes**  
  Representa salas, laboratórios ou outros ambientes, relacionando um professor, nome do ambiente, tipo, matéria, turma, horários e data.

## Objetivo da atividade

- Criar um modelo de banco de dados escolar mais completo.
- Definir relações entre as entidades usando **chaves estrangeiras**.
- Pensar em áreas diferentes da escola (acadêmica, administrativa e infraestrutura) dentro de um único esquema SQL.
