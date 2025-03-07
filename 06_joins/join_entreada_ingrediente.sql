/*Join das bebidas junto dos ingredientes*/
SELECT identrada, entrada_nome, est.ingrediente_nome as 'ingredientes'
FROM entrada join estoque_ingredientes as est where idingrediente in
(fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7);

