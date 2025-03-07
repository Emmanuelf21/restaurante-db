use projeto_restaurante;

insert into entrada (entrada_nome, entrada_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values 	('Salada fresca', 29.99, 7, 8, 9, 10, 11, 1, 1),
        ('Canapés', 39.99, 12, 13, 8, 14, 15, 1, 1);
select * from entrada;

insert into prato_principal (principal_nome, principal_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values 	('Frango a Parmegiana', 99.99, 3, 19, 21, 22, 5, 18, 1),
        ('Salmão grelhado', 149.99, 23, 24, 19, 11, 20, 18, 1);
select * from prato_principal;

insert into guarnicao (guarnicao_nome, guarnicao_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values 	('Anéis de Cebola', 19.99, 9, 27, 28, 29, 30, 31, 18),
        ('Brócolis e couve-flor sautée', 21.99, 32, 33, 9, 34, 20, 19, 1);
select * from guarnicao;

insert into sobremesa (sobremesa_nome, sobremesa_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7)
values 	('Mousse de maracujá', 19.99, 36, 39, 35, 1, 1, 1, 1),
        ('Gelatina de uva cremosa', 17.99, 40, 42, 35, 36, 41, 1, 1);
select * from sobremesa;

insert into bebidas (bebida_nome, bebida_preco, fk_idingrediente)
values 	('Suco de laranja', 14.99, 43),
        ('Refrigerante de Cola', 8.99, 44);
select * from bebidas;