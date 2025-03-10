/*inserir novas entradas*/
DELIMITER $
CREATE PROCEDURE inserir_entrada(identrada int, entrada_nome varchar(60), entrada_preco decimal(10,2), fk_idingrediente1 int, fk_idingrediente2 int, fk_idingrediente3 int, fk_idingrediente4 int, fk_idingrediente5 int, fk_idingrediente6 int, fk_idingrediente7 int)
	BEGIN
		insert into entrada values(null, entrada_nome, entrada_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7);
    END $
DELIMITER ;
