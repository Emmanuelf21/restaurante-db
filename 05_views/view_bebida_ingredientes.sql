/*View das bebidas com ingredientes*/
CREATE VIEW view_bebida_ingredientes as
SELECT idbebida, bebida_nome, 
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente=idingrediente) as ingrediente
FROM bebidas;