/*inserir novas sobremesas*/
DELIMITER $
CREATE PROCEDURE inserir_sobremesa(idsobremesa int, sobremesa_nome varchar(60), sobremesa_preco decimal(10,2), fk_idingrediente1 int, fk_idingrediente2 int, fk_idingrediente3 int, fk_idingrediente4 int, fk_idingrediente5 int, fk_idingrediente6 int, fk_idingrediente7 int)
	BEGIN
		insert into sobremesa values(null, guarnicao_nome, guarnicao_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7);
    END $
DELIMITER ;

