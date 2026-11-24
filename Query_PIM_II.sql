--CRIANDO O BASE DE DADOS
CREATE DATABASE pimII;


/*
CRIANDO A TABELA, ID/CATEGORIA/AGENTES/SCRIPT E NOTA
CHECK - valida a condição, se estiver dentro da condição ele autoriza, se não recusa.
Adicionada uma restrição a categoria, somente as opções são validas.
Em nota foi adicionado o CHECK na condição que a nota não seja menor que 0 e nem maior que 5.
*/
USE pimII;
GO

CREATE TABLE agentes (
	id INT IDENTITY (1,1) PRIMARY KEY,
	categoria VARCHAR(50) NOT NULL
		CHECK (categoria IN ('Administracao','Producao','Cliente')),
	nome_agente VARCHAR(80) NOT NULL,
	script VARCHAR(1000),
	nota DECIMAL(3,2) NOT NULL CHECK (nota >= 0 AND nota <=5)
	);
GO

/*
Adicionando dados na Tabela Agentes
*/

INSERT INTO agentes(categoria, nome_agente, script,nota)
VALUES 
('Administracao','ADMplus','É um agente de IA que auxilia no administrativo de uma empresa com pequenos recursos para Financeiro, RH, NFs, Jurídico e mais.','5.00'),
('Producao','Prod_Max','Agente de IA que auxilia nas redes de produção, como, Planejamento, Qualidade, Estoque entre outros.','4.50'),
('Cliente','Cliente_Power','Esse agente de IA, colabora com as Vendas, Atendimento ao Cliente, Cadastro e muito mais. ','4.00');

SELECT * FROM agentes;

SELECT id, categoria, nome_agente
FROM agentes
WHERE nome_agente = 'ADMplus';