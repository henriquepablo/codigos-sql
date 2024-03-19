create database atividade;

use atividade;

CREATE TABLE funcionários ( 
	id INT AUTO_INCREMENT,
	nome VARCHAR(120) NOT NULL,  
	cpf VARCHAR(11) NOT NULL,  
	dtnascimneto DATE NOT NULL,
    id_chefe int,
    CONSTRAINT pk_funcionario PRIMARY KEY (id),
    CONSTRAINT fk_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionários (id)
); 

CREATE TABLE dependente ( 
	id INT AUTO_INCREMENT ,
	nome VARCHAR(120) NOT NULL,  
	dtnascimento DATE NOT NULL,  
	id_funcionario INT,
    CONSTRAINT pk_dependente PRIMARY KEY (id),
    CONSTRAINT fk_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionários (id)
);

-- inserindo funcionários
INSERT INTO funcionários(id, nome, cpf, dtnascimneto) values (default, 'lacerda', '12345678910', '2004-07-23');
INSERT INTO funcionários(id, nome, cpf, dtnascimneto) values (default, 'maria', '45578712345', '1990-05-24');
INSERT INTO funcionários(id, nome, cpf, dtnascimneto) values (default, 'gabriel', '99012345678', '1998-02-26');

-- inserindo dependentes
INSERT INTO dependente (id, nome, dtnascimento, id_funcionario) values (default, 'jose', '2005-02-09', 1);
INSERT INTO dependente (id, nome, dtnascimento, id_funcionario) values (default, 'casia', '2010-05-26', 1);

INSERT INTO dependente (id, nome, dtnascimento, id_funcionario) values (default, 'zuleica', '2011-09-09', 2);

INSERT INTO dependente (id, nome, dtnascimento, id_funcionario) values (default, 'roberto', '2007-01-09', 3);
INSERT INTO dependente (id, nome, dtnascimento, id_funcionario) values (default, 'silvio', '2008-12-10', 3);
INSERT INTO dependente (id, nome, dtnascimento, id_funcionario) values (default, 'rodrigo', '2012-12-11', 3);

-- atualizando o dado
UPDATE dependente SET nome = 'rafael' WHERE id_funcionario = 2;

-- apagando o dado
DELETE FROM dependente WHERE id = 3;

-- exibindo funcionarios com seus dependentes
SELECT * FROM funcionários inner join dependente where funcionários.id = dependente.id_funcionario;

-- Qual os Tipo de Relacionamento que acabamos de desenvolver? 
-- relacionamento de 1 para n