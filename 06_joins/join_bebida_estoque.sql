/*Join das bebidas junto dos ingredientes*/
SELECT idbebida, bebida_nome, est.ingrediente_nome, bebida_preco
FROM bebidas join estoque_ingredientes as est where fk_idingrediente = idingrediente;
