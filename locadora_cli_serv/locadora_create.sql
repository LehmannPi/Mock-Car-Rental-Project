
CREATE TABLE veiculo (
                id_veiculo INTEGER NOT NULL,
                den_veiculo VARCHAR(40) NOT NULL,
                ano INTEGER NOT NULL,
                marca VARCHAR(30) NOT NULL,
                preco REAL NOT NULL,
                cor VARCHAR(10) NOT NULL,
                CONSTRAINT id_veiculo PRIMARY KEY (id_veiculo)
);


CREATE TABLE cliente (
                id_cliente INTEGER NOT NULL,
                endereco VARCHAR(100) NOT NULL,
                contato VARCHAR(11) NOT NULL,
                nome_cliente VARCHAR(50) NOT NULL,
                CONSTRAINT id_cliente PRIMARY KEY (id_cliente)
);


CREATE TABLE aluguel (
                id_aluguel INTEGER NOT NULL,
                estado BOOLEAN NOT NULL,
                id_cliente INTEGER NOT NULL,
                id_veiculo INTEGER NOT NULL,
                data_inicio DATE NOT NULL,
                data_fim DATE NOT NULL,
                CONSTRAINT id_aluguel PRIMARY KEY (id_aluguel),
                CONSTRAINT veiculo_aluguel_fk
FOREIGN KEY (id_veiculo)
REFERENCES veiculo (id_veiculo),
CONSTRAINT cliente_aluguel_fk
FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente)
);


CREATE TABLE pagamento (
                id_pagamento INTEGER NOT NULL,
                id_cliente INTEGER NOT NULL,
                id_aluguel INTEGER NOT NULL,
                valor REAL NOT NULL,
                data DATE NOT NULL,
                CONSTRAINT id_pagamento PRIMARY KEY (id_pagamento),
                CONSTRAINT cliente_pagamento_fk
FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente),
                CONSTRAINT aluguel_pagamento_fk
FOREIGN KEY (id_aluguel)
REFERENCES aluguel (id_aluguel)
);


insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (1, 'risus auctor sed tristique in tempus', 1994, 'Volkswagen', 985, 'Maroon');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (2, 'at nunc commodo placerat praesent', 2000, 'BMW', 834, 'Puce');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (3, 'mus vivamus vestibulum sagittis sapien', 2009, 'Mazda', 803, 'Orange');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (4, 'semper sapien a libero nam dui', 2008, 'Ford', 957, 'Mauv');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (5, 'cras pellentesque volutpat dui maecenas ', 2008, 'Mazda', 170, 'Fuscia');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (6, 'erat fermentum justo nec', 1970, 'Ford', 725, 'Goldenrod');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (7, 'quam pharetra magna ac consequat metus', 2010, 'Hyundai', 314, 'Yellow');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (8, 'nonummy maecenas tincidunt lacus at veli', 1988, 'Mitsubishi', 872, 'Yellow');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (9, 'eget eleifend luctus ultricies eu nibh', 2007, 'Bentley', 904, 'Red');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (10, 'tincidunt lacus at velit', 2001, 'Cadillac', 83, 'Blue');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (11, 'justo etiam pretium iaculis', 2011, 'Kia', 505, 'Yellow');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (12, 'egestas metus aenean fermentum donec ut', 1998, 'Mitsubishi', 898, 'Fuscia');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (13, 'nulla justo aliquam quis', 1965, 'Chevrolet', 596, 'Turquoise');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (14, 'vestibulum ante ipsum primis', 1998, 'Volkswagen', 573, 'Violet');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (15, 'metus vitae ipsum aliquam non', 2005, 'BMW', 543, 'Red');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (16, 'quam fringilla rhoncus mauris enim', 2004, 'Suzuki', 472, 'Khaki');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (17, 'purus phasellus in felis donec', 2009, 'Mercury', 749, 'Puce');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (18, 'magna at nunc commodo', 2006, 'Ford', 586, 'Fuscia');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (19, 'eget vulputate ut ultrices vel', 1990, 'Pontiac', 911, 'Maroon');
insert into veiculo (id_veiculo, den_veiculo, ano, marca, preco, cor) values (20, 'penatibus et magnis dis parturient', 2011, 'Kia', 830, 'Goldenrod');

insert into cliente (id_cliente, endereco, contato, nome_cliente) values (1, 'natoque penatibus et magnis', '3917599703', 'Daveta Hearns');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (2, 'purus sit amet nulla', '9191817163', 'Enoch Lorent');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (3, 'suspendisse accumsan tortor quis', '7588250386', 'Adeline Phillcock');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (4, 'sem mauris laoreet ut rhoncus', '9053304083', 'Sloane Healeas');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (5, 'nulla suscipit ligula in lacus curabit', '6436767638', 'Saundra Beveridge');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (6, 'curabitur gravida nisi at nibh in', '4257713429', 'Goldina Banker');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (7, 'non sodales sed tincidunt eu', '1125480530', 'Benson Follit');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (8, 'bibendum felis sed interdum venenatis', '6706724784', 'Neille Geekin');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (9, 'amet sem fusce consequat nulla nisl', '4767187233', 'Hymie Condell');
insert into cliente (id_cliente, endereco, contato, nome_cliente) values (10, 'lacus morbi sem mauris laoreet ut', '5539711630', 'Clementina Briand');

insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (1, false, 3, 9, '2019-12-07', '2019-12-15');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (2, false, 2, 8, '2019-12-10', '2019-12-18');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (3, true, 8, 6, '2019-12-10', '2019-12-15');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (4, true, 3, 9, '2019-12-10', '2019-12-13');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (5, false, 3, 5, '2019-12-08', '2019-12-16');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (6, false, 10, 10, '2019-12-07', '2019-12-14');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (7, true, 6, 16, '2019-12-08', '2019-12-14');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (8, true, 3, 1, '2019-12-11', '2019-12-19');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (9, false, 9, 4, '2019-12-10', '2019-12-13');
insert into aluguel (id_aluguel, estado, id_cliente, id_veiculo, data_inicio, data_fim) values (10, false, 3, 14, '2019-12-12', '2019-12-18');

insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (1, 9, 10, 887, '2019-12-24');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (2, 10, 6, 1018, '2019-12-26');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (3, 7, 4, 502, '2019-12-20');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (4, 1, 10, 458, '2019-12-23');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (5, 2, 2, 1256, '2019-12-20');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (6, 3, 8, 615, '2019-12-22');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (7, 7, 6, 968, '2019-12-25');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (8, 8, 7, 451, '2019-12-21');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (9, 1, 1, 1158, '2019-12-20');
insert into pagamento (id_pagamento, id_cliente, id_aluguel, valor, data) values (10, 4, 9, 636, '2019-12-23');