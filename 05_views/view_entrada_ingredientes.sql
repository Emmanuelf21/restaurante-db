/*View do prato de entrada com ingredientes*/
CREATE VIEW entrada_ingredientes as
SELECT identrada, entrada_nome, 
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente1=idingrediente) as 'ingrediente 1',
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente2=idingrediente) as 'ingrediente 2',
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente3=idingrediente) as 'ingrediente 3',
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente4=idingrediente) as 'ingrediente 4',
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente5=idingrediente) as 'ingrediente 5',
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente6=idingrediente) as 'ingrediente 6',
(select ingrediente_nome from estoque_ingredientes where fk_idingrediente7=idingrediente) as 'ingrediente 7'
FROM entrada;