create database Escola;
use Escola;
CREATE TABLE Alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20),
    presenca int not null,
    faltas int not null,
    numero_ocorrencias int
);


CREATE TABLE Professores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    disciplinas VARCHAR(200),
    horarios varchar(100),
    salario int not null,
    turmas varchar(50),
    faltas int not null,
    presenca int not null
);

CREATE TABLE Ocorrencias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT NOT NULL,
    professor_id INT NOT NULL,
    descricao TEXT,
    data_ocorrencia DATE,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (professor_id) REFERENCES Professores(id)
);

CREATE TABLE Notas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT NOT NULL,
    professor_id INT NOT NULL,
    disciplina VARCHAR(100) NOT NULL,
    mensao varchar(2),
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (professor_id) REFERENCES Professores(id)
);


CREATE TABLE Biblioteca (
    id INT PRIMARY KEY AUTO_INCREMENT,
    livro VARCHAR(200) NOT NULL,
    aluno_id INT,
    data_emprestimo DATE not null,
    data_devolucao date,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id)
);

CREATE TABLE Contratos (
    id_contrato INT PRIMARY KEY AUTO_INCREMENT,
    fornecedor VARCHAR(100) NOT NULL,
    descricao TEXT,
    prazo date,
    signatarios varchar(100)
);


CREATE TABLE Funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT,
    salario int(30),
    precenca int,
    faltas int,
    setor varchar(10),
    telefone int(12),
    cpf int(11)
);

CREATE TABLE Gremio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    nomes varchar(200),
    data_efetivacao date,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id)
);


CREATE TABLE Equipamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200) NOT NULL,
    tipo VARCHAR(50),
    local varchar(50)

);


CREATE TABLE Ambientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_professor int,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    materia varchar(30),
    turma varchar(3),
    hora int(5),
    hora_devoluçao int(5),
    data_ date,
    FOREIGN KEY (id_professor) REFERENCES Professores(id)

);