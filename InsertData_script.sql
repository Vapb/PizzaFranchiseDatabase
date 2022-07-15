-- Customer Data
INSERT INTO customer (username, password, firstname, surname, birthday) VALUES
    ('auditjoyeux',	        'euMdqAaj36',	'Rigoberto',	'Mccoy',	    1973-11-16),
    ('burgeemultishot',	    'mjqjnmrA3F',	'Oseas',	    'Pugh',	        1976-03-23),
    ('archerypuss',	        'rHDmE5NLQk',	'Claudio',	    'Rodriguez',	1977-01-31),
    ('shrivelplusia',	    '8AZyTEYWTE',	'Tito',	        'Hendrix',	    1977-12-15),
    ('medicalawesome',	    'JAYMpg5RpQ',	'Ireneo',	    'Bell',	        1979-11-26),
    ('jacketstale',	        'xuNmKtgneb',	'Beatriz',	    'Silva',	    1980-09-23),
    ('nationdermis',	    'bQjDzB2Xwa',	'Héctor',	    'Landry',	    1981-10-06),
    ('outfitkaaba',	        'Ax2KzBruSa',	'Rubén',	    'Coffey',	    1982-12-21),
    ('localtransition',	    'jVSJgU6RZj',	'Sixto',	    'Pope',	        1987-01-26),
    ('backgroundskunk',	    'a98qCbKADL',	'Adón',	        'Le',	        1987-02-27),
    ('rankboyfriend',	    'qrwLPyLyrK',	'Claudia',	    'Nichols',	    1988-02-09),
    ('sizepleasure',	    'jG8x4pDW3a',	'Victoria',	    'Summers',	    1988-05-12),
    ('oblongatapreach',	    'D6RGfZN4gm',	'Tomas',	    'Park',	        1989-09-20),
    ('channelgallery',	    'MxUjPysFbx',	'Roberto',	    'Flynn',	    1991-11-11),
    ('moreoverrevelation',	'QpBv2dRQVD',	'Marcelo',	    'Mann',	        1992-07-01),
    ('humankoko',	        'aGpwV6Q6XT',	'Eusebio',	    'Gill',	        1994-01-27),
    ('butparkour',	        'kDS23GYQee',	'Sonia',	    'Johns',	    1994-11-10),
    ('waterpoloreview',	    'w94dTmRpA8',	'Yolanda',	    'Dodson',	    1994-11-18),
    ('keyboardtwo',	        'ELwVpGkFV4',	'Fabio',	    'Keller',	    1997-05-06),
    ('tunabesiege',	        'CPvDG9gmKM',	'Alejandro',	'Saunders',	    1997-08-28);


-- Cupom Data
INSERT INTO cupom (valid, start_date, expiration_date, description, code) VALUES
    (TRUE,	01-07-2022,	31-07-2022,	'COCA-COLA LATA - SEM AÇÚCAR R$1,00',	                                        'LATA1'),
    (TRUE,	01-01-2022,	01-10-2022,	'Combo Pan (2 pessoas) – Pizza pan (30cm) + Refri 500/600ml ESPECIALIDADES',	'COMBOPAN'),
    (TRUE,	01-01-2022,	01-10-2022,	'Combo 4 (6 pessoas) – 2 Pizzas grandes + Refri 2L  ESPECIALIDADES',	        'COMBO4'),
    (TRUE,	01-01-2022,	01-10-2022,	'Combo 3 (4 pessoas) – Pizza giga + Refri 2L ESPECIALIDADES',	                'COMBO3'),
    (TRUE,	01-01-2022,	01-10-2022,	'Combo 2 (3 pessoas) – Pizza grande + Refri 2L  ESPECIALIDADES',	            'COMBO2'),
    (TRUE,	01-01-2022,	01-10-2022,	'Combo 1 (2 pessoas) – Pizza média + Refri 500/600ml ESPECIALIDADES',	        'COMBO1'),
    (TRUE,	01-07-2022,	01-07-2022,	'Double Mix Pizza média + 1 produto à sua escolha',	                            'MIXM'),
    (TRUE,	01-06-2022,	15-07-2022,	'Domino’s em Dobro 2 Pizzas Grandes com 40% de desconto',	                    'PIZZAGE'),
    (TRUE,	02-06-2022,	16-07-2022,	'Domino’s em Dobro 2 Pizzas Médias com 40% de desconto',	                    'PIZZAME'),
    (TRUE,	01-04-2022,	01-10-2022,	'Favoritas - Pizza Gigante',	                                                'TOPGG'),
    (TRUE,	01-04-2022,	01-10-2022,	'Favoritas - Pizza Grande',	                                                    'TOPG'),
    (TRUE,	04-07-2022,	10-07-2022,	'50% de desconto em pizzas médias e grandes, massa fina ou tradicional',	    'PIZZADAY'),
    (TRUE,	01-04-2022,	01-10-2022,	'Favoritas - Pizza Média',	                                                    'TOPM'),
    (TRUE,	01-07-2022,	01-07-2022,	'Double Mix Pizza grande+ 1 produto à sua escolha',	                            'MIXG'),
    (FALSE,	25-11-2021,	28-11-2011,	'50% de desconto em pizzas médias e grandes, massa fina ou tradicional',	    'PIZZABF');


-- Restaurant Data
INSERT INTO restaurant (Name	PhoneNumber	Zipcode	state	city	st_name	st_number) VALUES
    ('Dominos Pizza - Flamengo',	    2125545222, 	22230060,	'RJ',	'Rio de Janeiro',	'R. Marquês de Abrantes',	205),
    ('Dominos Pizza - Icaraí',	        2127192929, 	24050350,	'RJ',	'Niteroi',	        'R. Miguel de Frias',	    215),
    ('Dominos Pizza - Moema',	        1150549200, 	04524001,	'SP',	'Sao Paulo',	    'Alameda dos Arapanés',	    774),
    ('Dominos Pizza - Cidade Nova',    	3134888200, 	31160370,	'MG',	'Belo Horizonte',	'R. Alberto Cintra',	    137),
    ('Dominos Pizza - Vitória',	        2733154746, 	29055100,	'ES',	'Vitoria',	        'Av. Rio Branco', 	        1777);


-- NonPizza Data
INSERT INTO non_pizza (flavor, description, name, price) VALUES
    ('BAURU',	            'Requeijão, Queijo, presunto, tomate e azeite.', 	                                                    'Bauru Sandwich',	                   23.90),
    ('CAPRESE',	            'Queijo de búfala e leite, cebola, tomate, azeitona e manjericão e azeite.', 	                        'Caprese Sandwich',	                   23.90),
    ('CHICKEN & BACON',	    'Cream-cheese, bacon, frango grelhado, tomate, cebola, parmesão e azeite.', 	                        'Chicken and Bacon Sandwich',	       23.90),
    ('FRANGO 4 QUEIJOS',	'Queijo, Cream-cheese, frango grelhado, gorgonzola, parmesão e azeite.', 	                            'Frango com Quatro Queijos Sandwich',  23.90),
    ('FRANGO GRELHADO',	    'Requeijão, frango, azeitona preta, queijo, tomate, azeite e manjericão.',	                            'Frango Grelhado Sandwich',	           23.90),
    ('MEAT & BACON',	    'Cream-cheese, pepperoni, presunto, calabresa, bacon e azeite.', 	                                    'Meat and Bacon Sandwich',	           23.90),
    ('TOSCANA',	            'Queijo, calabresa, requeijão, azeitona preta, cebola, tomate, azeite e manjericão.', 	                'Toscana Sandwich',	                   23.90),
    ('CALABRESA',	        'Queijo, calabresa, cebola, parmesão ralado, requeijão e azeite.',  	                                'Cheesebread Calabresa',	           20.90),
    ('MARGHERITA',	        'Queijo, tomate, requeijão, parmesão ralado, azeite e manjericão.',  	                                'Cheesebread Margherita', 	           20.90),
    ('4 QUEIJOS',	        'Queijo, gorgonzola, parmesão ralado, requeijão e azeite.', 	                                        'Cheesebread 4 Queijos', 	           20.90),
    ('ALHO',	            'Entrada crocante com 4 unidades recheadas de alho e queijo parmesão.', 	                            'Alho Roll 4pc',	                   9.90),
    ('ALHO',	            'Entrada crocante com 8 unidades recheadas de alho e queijo parmesão.',  	                            'Alho Roll 8pc',	                   16.90),
    ('CHURRO',	            'Nossa saborosa massa recheada de muito doce de leite, coberta de açúcar e canela.',  	                'Churrosbread', 	                   18.90),
    ('CHICOLATE',	        'Massa deliciosa massa recheada de muito chocolate e cobertura de creme de baunilha com granulado.',  	'Chocobread', 	                       18.90),
    ('BRIGADEIRO',	        'Brotinho de brigadeiro com creme de baunilha ,brigadeiro de chocolate e granulado.',  	                'Brotinho de Brigadeiro', 	           20.90),
    ('OVOMALTINE',	        'Brotinho recheada com creme de baunilha e creme de Ovomaltine crocante.',  	                        'Brotinho de Ovomaltine',	           20.90);


-- Pizza with \copy


-- Beverage Data
INSERT INTO beverage (brand, size, name, price) VALUES
    ('Coca Cola',	    '2L',	    'Garrafa Coca Cola 2L',	            13.90),
    ('Coca Cola',	    '600ml',	'Garrafa Coca Cola 600ml',	        9.90),
    ('Coca Cola',	    'Lata',	    'Lata Coca Cola',	                8.90),
    ('Coca Cola',	    '2L',	    'Garrafa Coca Cola Zero 2L',	    13.90),
    ('Coca Cola',	    '600ml',	'Garrafa Coca Cola Zero 600ml',	    9.90),
    ('Coca Cola',	    'Lata',	    'Lata Coca Cola Zero',	            8.90),
    ('Fanta',	        '2L',	    'Garrafa Fanta Laranja 2L',	        13.90),
    ('Fanta',	        '600ml',	'Garrafa Fanta Laranja 600ml',	    9.90),
    ('Fanta',	        'Lata',	    'Lata Fanta Laranja',	            8.90),
    ('Fanta',	        '2L',	    'Garrafa Fanta Uva 2L',	            13.90),
    ('Fanta',	        '600ml',	'Garrafa Fanta Uva 600ml',	        9.90),
    ('Fanta',	        'Lata',	     'Lata Fanta Uva',	                8.90),
    ('Fanta',	        '2L',	    'Garrafa Fanta Guarana 2L',	        13.90),
    ('Fanta',	        '600ml',	'Garrafa Fanta Guarana 600ml',	    9.90),
    ('Fanta',	        'Lata',	    'Lata Fanta Guarana',	            8.90),
    ('Ice tea',	        '1.5L',	    'Garrafa Ice tea Pêssego 1.5L',	    13.90),
    ('Ice tea',	        '300ml',	'Garrafa Ice tea Pêssego 350ml',	8.90),
    ('Sprite',	        '2L',	    'Garrafa Sprite 2L',	            13.90),
    ('Sprite',	        '600ml',	'Garrafa Sprite 600ml',	            9.90),
    ('Sprite',	        'Lata',	    'Lata Sprite',	                    8.90),
    ('Crystal',	        '300ml',	'Garrafa Agua 300ml',	            5.90),
    ('Crystal',	        '300ml',	'Garrafa Agua com gas 300ml',	    5.90),
    ('Schweppes',	    'Lata',	    'Lata Schweppes Citrus',	        8.90),
    ('Del Valle',	    'Lata',	    'Lata Suco Del Valle Uva',	        8.90),
    ('Matte Leao',	    '1.5L',	    'Garrafa Matte natural 1.5L',	    13.90),
    ('Matte Leao',	    '1.5L',	    'Garrafa Matte com Limão 1.5L',	    13.90),
    ('Matte Leao',	    '300ml',	'Garrafa Matte com Limão 300ml',	8.90),
    ('Heineken',	    'Lata',	    'Lata Heineken',	                9.90),
    ('Amstel',	        'Lata',	    'Lata Amstel',	                    9.90);


-- PhoneList Data
INSERT INTO phone_list (cust_id	number) VALUES 
    (1, 	4987959820),
    (1, 	7139442771),
    (2, 	3918617874),
    (3, 	7115849977),
    (4, 	2013284054),
    (5, 	6325115779),
    (5, 	7112119602),
    (6, 	9819439015),
    (10,	6194264196),
    (11,	4223749319),
    (12,	3534156657),
    (12,	8479866808),
    (15,	8908637514),
    (15,	3896133442),
    (16,	3453013932),
    (17,	8025480846),
    (18,	9138810250),
    (19,	2448701111),
    (20,	9827774749),
    (20,	5735506463),
    (20,	8488993398);


-- AddressList Data
INSERT INTO address_list (add_id, cust_id, zipcode, state, city, st_name, st_number, custom_name) VALUES
    (1,	     1, 	20081160, 	'RJ',	'Rio de Janeiro', 	'Travessa Joaquim Soares',	                23, 	'Casa'),		
    (2,	     1, 	20630110, 	'RJ',	'Rio de Janeiro', 	'Rua da Lapa',	                            2, 	    'Casa_2'),		
    (3,	     2, 	21630110, 	'RJ',	'Rio de Janeiro', 	'Rua Cristóvão Jaques',	                    5, 	    'Casa'),		
    (4,	     3, 	20031901, 	'RJ',	'Rio de Janeiro', 	'Avenida Treze de Maio',   	                14, 	'home'),		
    (5,	     4, 	21061160, 	'RJ',	'Rio de Janeiro', 	'Rua Sertanópolis',      	                7,   	'home'),		
    (6,	     5, 	21061140, 	'RJ',	'Rio de Janeiro', 	'Rua Médico Paulo Franchini',	            67, 	'casa'),		
    (7,	     6, 	24360210, 	'RJ',	'Niteroi', 	        'Avenida Anita Nilo Peçanha',	            57, 	'casa2'),
    (8,	     7, 	24050285, 	'RJ',	'Niteroi', 	        'Travessa Nossa Senhora dos Navegantes',	88, 	'casa1'),
    (9,	     8, 	5417050, 	'SP',	'Sao Paulo', 	    'Rua Manuel Henrique Lopes',	            78, 	'casa_namorada'),		
    (10,	 8, 	5387133, 	'SP',	'Sao Paulo', 	    'Travessa Nossa Senhora Aparecida',	        22,	    'casa'),
    (11,	 9, 	5868010, 	'SP',	'Sao Paulo', 	    'Rua Cachoeira do Airi',	                45, 	'Casa_1'),		
    (12,	 9, 	3877000, 	'SP',	'Sao Paulo', 	    'Rua Guaxuma',	                            44, 	'Casa_2'),		
    (13,	 9, 	4942120, 	'SP',	'Sao Paulo', 	    'Rua Atanásio Ribeiro Costa',	            23, 	'casa_3'),		
    (14,	 10, 	30624242, 	'MG',	'Belo Horizonte', 	'Beco Três A',	                            11, 	'casa'),		
    (15,	 11, 	31640690, 	'MG',	'Belo Horizonte', 	'Rua José Bonifácio de Andrada',	        456, 	'casa'),	
    (16,	 12, 	30662010, 	'MG',	'Belo Horizonte', 	'Rua Carlos Schirner',	                    213, 	'casa'),	
    (17,	 13, 	3008030, 	'SP',	'Sao Paulo', 	    'Rua Coronel Francisco Amaro',	            67, 	'casa'),	
    (18,	 14, 	5594170, 	'SP',	'Sao Paulo', 	    'Praça Doutor José Benedicto Decoussau',	86, 	'casita'),	
    (19,	 15, 	24342070, 	'RJ',	'Niteroi', 	        'Rua Professor Roched Seba',	            90, 	'casaniteroi'),		
    (20,	 16, 	29030055, 	'ES',	'Vitoria', 	        'Rua Claudecyr Mattos',	                    234, 	'csa'),		
    (21,	 17, 	29041645, 	'ES',	'Vitoria', 	        'Escadaria Laura Pereira Ignácio',	        11, 	'casa'),		
    (22,	 18, 	29032020, 	'ES',	'Vitoria', 	        'Rua Cristiano Alves dos Santos',	        67, 	'casa'),		
    (23,	 19, 	24370277, 	'RJ',	'Niteroi', 	        'Travessa Lidia Telles',	                123, 	'casa'),		
    (24,	 20, 	4512020, 	'SP',	'Sao Paulo', 	    'Rua Vasco Crevatin',	                    55, 	'casa');		


-- Staff Data
INSERT INTO staff (rest_id	name	job_role	salary	phone_number	start_timeshift	end_timeshift) VALUES 
    (1,	'Ryan Duke',	      'Pizza Maker',	 3000,   2537725294,      10:00,	    19:00),
    (1,	'Miah Carpenter',	  'Pizza Maker',	 3500,   7955339120,      19:00,	    02:00),
    (1,	'Jax Kelley',	      'Cashier',	     1000,   9162271937,      10:00,	    18:00),
    (1,	'Cindy Wu',	          'Cashier',	     1200,   6765970340,      19:00,	    02:00),
    (1,	'Roberto Harmon',	  'Manager',	     7000,   3656275514,      13:00,	    21:00),
    (1,	'Kianna Burnett',	  'DeliveryMan',	 1000,   4018789222,      10:00,	    21:00),
    (2,	'Kathy Conrad',	      'Pizza Maker',	 3000,   7829953719,      06:00,	    15:00),
    (2,	'Nick Rhodes',	      'Pizza Maker',	 3200,   4018789136,      15:00,	    00:00),
    (2,	'Londyn Henson',	  'Cashier',	     1200,   9918846902,      06:00,	    15:00),
    (2,	'Curtis Adams',	      'Cashier',	     1100,   5426315818,      15:00,	    00:00),
    (2,	'Raquel Landry',	  'Manager',	     7300,   2694850395,      12:00,	    22:00),
    (2,	'Dominique Hoffman',  'DeliveryMan',	 6800,   4786198871,      13:00,	    21:00),
    (3,	'Emerson Howell',	  'Pizza Maker',	 3300,   5446133941,      10:00,	    19:00),
    (3,	'Sidney Goodwin',	  'Pizza Maker',	 3300,   5308118938,      19:00,	    02:00),
    (3,	'Maeve Anderson',	  'Cashier',	     1000,   6294194412,      10:00,	    18:00),
    (3,	'Naomi Gibson',	      'Cashier',	     1200,   8552952032,      19:00,	    02:00),
    (3,	'Seth Luna',	      'Manager',	     8000,   3947411111,      13:00,	    21:00),
    (3,	'Alicia Singh',	      'DeliveryMan',	 6800,   4786198871,      13:00,	    21:00),
    (4,	'Bella Cunningham',	  'Pizza Maker',	 4000,   3394965826,      06:00,	    15:00),
    (4,	'Frida Hester',	      'Pizza Maker',	 3800,   3674471297,      15:00,	    00:00),
    (4,	'Elsa Ware',	      'Cashier',	     1010,   7663451115,      06:00,	    15:00),
    (4,	'Izaiah Levine',	  'Cashier',	     1100,   8825307511,      15:00,	    00:00),
    (4,	'Slade Bishop',	      'Manager',	     7000,   2196863292,      12:00,	    22:00),
    (4,	'Joyce Hughes',	      'DeliveryMan',	 6800,   4786198871,      10:00,        21:00),
    (5,	'Warren Mckee',	      'Pizza Maker',	 4000,   8584676179,      10:00,        19:00),
    (5,	'Ronan Ballard',	  'Pizza Maker',	 3200,   7573057944,      19:00,        02:00),
    (5,	'Donald Wong',	      'Cashier',	     1000,   6337979993,      10:00,	    18:00),
    (5,	'Autumn Wu',	      'Cashier',	     1050,   9446831519,      19:00,	    02:00),
    (5,	'Hailey Henson',	  'Manager',	     6800,   4786198871,      13:00,	    21:00),
    (5,	'Jaydan Bryant',	  'DeliveryMan',	 6800,   4786198871,      10:00,	    21:00);


-- DeliveryMan Data


-- CustomerOrder Data


-- OrderItem Data