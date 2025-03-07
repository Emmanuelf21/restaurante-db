/*procedure para inserir na tabela clientes, recebe nome, telefone e cpf*/

DELIMITER $
CREATE PROCEDURE inserir_cliente(nome varchar(100), telefone varchar(11), cpf varchar(11))
	BEGIN
		insert into cliente values(null,nome, telefone, cpf);
    END $
DELIMITER ;

