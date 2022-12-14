SET REFERENTIAL_INTEGRITY FALSE;
TRUNCATE TABLE productos_caracteristicas RESTART IDENTITY;
TRUNCATE TABLE Reservaciones RESTART IDENTITY;
TRUNCATE TABLE Politicas RESTART IDENTITY;
TRUNCATE TABLE Puntajes RESTART IDENTITY;
TRUNCATE TABLE Imagenes RESTART IDENTITY;
TRUNCATE TABLE Productos RESTART IDENTITY;
TRUNCATE TABLE Caracteristicas RESTART IDENTITY;
TRUNCATE TABLE Categorias RESTART IDENTITY;
TRUNCATE TABLE Ciudades RESTART IDENTITY;
TRUNCATE TABLE Paises RESTART IDENTITY;
TRUNCATE TABLE Roles RESTART IDENTITY;
TRUNCATE TABLE Usuarios RESTART IDENTITY;
SET REFERENTIAL_INTEGRITY TRUE;

INSERT INTO Paises (pais) VALUES ('Argentina');

INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Buenos Aires');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Córdoba');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rosario');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Comodoro Rivadavia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Miguel de Tucumán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Mar del Plata');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Salta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Juan');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Lanús');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Florencio Varela');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Fe');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Corrientes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Salvador de Jujuy');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bahía Blanca');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Resistencia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Posadas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santiago del Estero');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Paraná');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Merlo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'González Catán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Neuquén');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Quilmes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Banfield');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Formosa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'José C. Paz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Plata');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Godoy Cruz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Isidro Casanova');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Rioja');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Berazategui');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Luis');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'José María Ezeiza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Nicolás de los Arroyos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Catamarca');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Río Cuarto');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Miguel');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Concordia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rafael Castillo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Florencio Varela');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Justo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ituzaingó');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Temperley');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ramos Mejía');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Martín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tandil');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puerto Madryn');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Mendoza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Carlos de Bariloche');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Lomas de Zamora');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Mercedes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bernal');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Esteban Echeverría');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Gualeguaychú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Rafael');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Castelar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Banda');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Berisso');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Libertad');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Morón');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Burzaco');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Zárate');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Río Gallegos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Caseros');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Luzuriaga');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Trelew');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ciudad General Belgrano');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rafaela');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Francisco Solano');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pergamino');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Campana');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Olavarría');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Monte Chingolo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Junín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Presidencia Roque Sáenz Peña');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Luján');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Roca');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Remedios de Escalada');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pilar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Gobernador Gálvez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Necochea');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ezpeleta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa María');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Venado Tuerto');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Ramón de la Nueva Orán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Concepción del Uruguay');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Goya');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bella Vista');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Lomas del Mirador');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Reconquista');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Las Heras');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Oberá');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Wilde');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santo Tomé');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Carlos Paz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Domínico');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Francisco');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Los Polvorines');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tartagal');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Sarandí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chajarí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Viedma');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Punta Alta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rafael Calzada');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Pico');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ushuaia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Azul');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chivilcoy');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Mercedes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cruz del Eje');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Caleta Olivia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'El Talar de Pacheco');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villaguay');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Libertador General San Martín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Alta Gracia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Reja');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Lorenzo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Longchamps');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Constitución');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tres Arroyos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Río Tercero');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pinamar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Isidro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Esperanza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Gualeguay');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Alsina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'José Mármol');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Balcarce');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Aristóbulo del Valle');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Haedo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Granadero Baigorria');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Esquel');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Nueve de Julio');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Dock Sur');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Munro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cutral-Có');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Adelina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Casilda');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chacabuco');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Centenario');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bell Ville');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chilecito');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bragado');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Plottier');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Calera');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Zapala');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rawson');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Jesús María');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Río Grande');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Mercedes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Victoria');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Ángela');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Regina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Celina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Gesell');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Capitán Bermúdez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cañada de Gómez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Baradero');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Allende');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Adrogue');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Martín de los Andes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Marcos Juárez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Dolores');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Firmat');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Colón');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Lincoln');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Avellaneda');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Coronel Suárez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tapiales');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Veinticinco de Mayo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tunuyán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Justo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Deán Funes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'El Calafate');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chascomús');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Laboulaye');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Brandsen');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Martín Miguel de Güemes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Vera');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Charata');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Lobos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Coronda');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Juan Madariaga');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Veinticinco de Mayo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Eldorado');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ayacucho');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa María');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Federación');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Antonio Oeste');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa del Rosario');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Paranacito');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Carmen de Areco');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Cristóbal');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puerto Deseado');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Añatuya');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Quiaca');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Javier');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Frías');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Joaquín V. González');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chos Malal');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rosario del Tala');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Salvador');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Junín de los Andes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Carlota');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Malargüe');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cafayate');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Oliva');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Coronel Dorrego');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cerrillos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Monte Quemado');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Humahuaca');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Belén');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa La Angostura');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Sarmiento');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Benito Juárez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San José de Feliciano');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Choele Choel');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Castelli');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chamical');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Helvecia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Julián');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa de Río Primero');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Carhué');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rinconada');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ingeniero Guillermo N. Juárez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Cura Brochero');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chepes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Huidobro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Conesa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Antonio de los Cobres');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Macachín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Loncopué');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Perito Moreno');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Aluminé');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Gobernador Gregores');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Abra Pampa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Victorica');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puerto Santa Cruz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Paz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Comandante Fontana');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Concepción');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Valcheta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Piedra del Águila');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tafí del Valle');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Agustín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Picún Leufú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pampa del Infierno');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chumbicha');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Maquinchao');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Añelo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Buta Ranquil');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Francisco del Chañar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Melincué');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'José de San Martín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Trancas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Alto Río Senguer');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Sierra Colorada');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Tulumba');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'El Huecú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Carlos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Salsacate');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Paso de Indios');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tecka');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Las Lajas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Susques');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Las Coloradas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pilcaniyeu');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rodeo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Gastre');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tinogasta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Telsen');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Las Plumas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Olivos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General San Martín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Hurlingham');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Banda del Río Salí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Nueva');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chimbas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tigre');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Lucía');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Belén de Escobar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Guernica');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rivadavia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bernardo de Irigoyen');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Yerba Buena');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ensenada');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Krause');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Mar del Tuyú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Rodríguez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Maipú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Fernando');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Junín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Marcos Paz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Isidro de Lules');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tafí Viejo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Palpalá');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'El Carmen');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Aberastain');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Vicente');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Aguilares');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Famaillá');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cosquín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Dolores');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San José');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Nueve de Julio');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Concepción');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Monteros');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Capilla del Señor');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Isidro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Monte Hermoso');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cañuelas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puerto Rico');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Alberdi');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Leandro N. Alem');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Apóstoles');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Alba Posse');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Campo Grande');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Ignacio');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ramallo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Fernández');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puerto Esperanza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Javier');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Ana');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Termas de Río Hondo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rivadavia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bella Vista');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Capitán Sarmiento');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Antonio de Areco');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Cosme');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Luján de Cuyo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Colón');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Miramar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Simoca');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Martín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Arrecifes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bella Vista');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'El Soberbio');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Montecarlo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Quitilipi');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Chicoana');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Salto');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Andrés de Giles');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Lucía');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Las Heras');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Cocha');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa San Isidro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Antonio');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Las Rosas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Diamante');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Clorinda');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa del Conlara');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Monte Caseros');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tupungato');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Bernardo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Sastre');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Las Breñas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Concepción de la Sierra');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Miguel del Monte');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Machagai');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Saladillo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puerto Tirol');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Itatí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Campo Largo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Saladas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rojas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Suipacha');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Magdalena');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Navarro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Vedia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Burruyacú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Salliqueló');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Colonia Elisa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Paz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Paso de los Libres');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Arenales');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Leonesa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Belgrano');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Corzuela');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Alberti');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ranchos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Mburucuyá');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pehuajó');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santo Tomé');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Gobernador Ingeniero Valentín Virasoro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Carlos Casares');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Makallé');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Nogoyá');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Roque Pérez');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Trenque Lauquen');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tres Isletas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Viamonte');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Caldera');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Margarita Belén');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Pinedo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General José de San Martín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rosario de Lerma');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Media Agua');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Empedrado');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bañado de Ovanta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Graneros');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Concarán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Esquina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Metán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Roque');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Coronel Vidal');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tres Lomas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Realicó');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pirané');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Luis del Palmar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Las Flores');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Carlos de Bolívar');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Berthet');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Arraga');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tilcara');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Aimogasta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa del Totoral');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Verónica');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Henderson');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pigüé');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Sylvina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Nuestra Señora del Rosario de Caa Catí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rosario de la Frontera');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Herrera');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Brea Pozo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Presidencia de la Plaza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Caucete');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Curuzú Cuatiá');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ameghino');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Espinillo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Intendente Alvear');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Federal');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Francisco de Laishí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Atamisqui');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Daireaux');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Pinto');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Hermoso Campo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Villegas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Santa Rosa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Coronel Pringles');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Alvear');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Candelaria');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Enrique Mosconi');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Merced');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Castelli');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Maipú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Clara');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Andalgalá');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Lavalle');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Lobería');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Los Telares');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Viña');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Miguel');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Quemú Quemú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Sauce');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rauch');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ituzaingó');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Toma');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Berón de Astrada');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pellegrini');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Alvear');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Alvear');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tornquist');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Médanos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'González Chaves');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Aminga');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa del Salvador');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Carlos Tejedor');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bandera');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Catriló');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Laprida');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Consulta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Nueva Esperanza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Toay');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Cayetano');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Garza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Esquiú');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Antonio');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Trenel');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Cañada');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Eduardo Castex');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Guaminí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Winifreda');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Blas de los Sauces');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Victoria');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Sumampa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pozo Hondo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puan');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Olta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Guatraché');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cachí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Ojo de Agua');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Carmen de Patagones');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Valle Grande');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tapalqué');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Francisco del Monte de Oro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General La Madrid');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa de María');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Puerta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Cruz');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Quimilí');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Suncho Corral');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Selva');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Saujil');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Parera');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Milagro');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Sañogasta');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tostado');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'El Alto');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Molinos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Iruya');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Lavalle');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San José de Jáchal');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Leleque');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Campo Gallo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Famatina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Agustín de Valle Fértil');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Libertador General San Martín');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tumbaya');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ancasti');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Conesa');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'San Carlos');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Rivadavia');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Bernasconi');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Guido');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Andacollo');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'General Acha');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Guachipas');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Malanzán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Laguna Yema');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Pila');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Unión');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ulapes');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Gaimán');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Catalina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Río Colorado');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tama');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Patquía');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Charadai');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Unión');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa General Roca');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Buena Esperanza');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Santa Isabel');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'La Poma');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Tamberías');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Villa Castelli');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'El Cuy');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Vinchina');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Algarrobo del Águila');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Ñorquinco');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Camarones');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Puelches');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Limay Mahuida');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Antofagasta de la Sierra');
INSERT INTO Ciudades (pais_id,ciudad) VALUES (1,'Cuchillo Có');


INSERT INTO Categorias ( titulo, descripcion, imagen_Url) VALUES ('Hotel', '', 'https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80');
INSERT INTO Categorias ( titulo, descripcion, imagen_Url) VALUES ('Hostel', '', 'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80');
INSERT INTO Categorias ( titulo, descripcion, imagen_Url) VALUES ('Departamento', '', 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1560&q=80');
INSERT INTO Categorias ( titulo, descripcion, imagen_Url) VALUES ('B&B', '', 'https://images.unsplash.com/photo-1621262331990-19861196e3ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80');


INSERT INTO Caracteristicas (nombre, icono) VALUES ('Cocina', '../images/cocina.svg');
INSERT INTO Caracteristicas (nombre, icono) VALUES ('Televisor', '../images/tv.svg');
INSERT INTO Caracteristicas (nombre, icono) VALUES ('Aire acondicionado', '../images/aire.svg');
INSERT INTO Caracteristicas (nombre, icono) VALUES ('Apto mascotas', '../images/mascota.svg');
INSERT INTO Caracteristicas (nombre, icono) VALUES ('Estacionamiento gratuito', '../images/parking.svg');
INSERT INTO Caracteristicas (nombre, icono) VALUES ('Pileta', '../images/pileta.svg');
INSERT INTO Caracteristicas (nombre, icono) VALUES ('Wifi', '../images/wifi.svg');


INSERT INTO Productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Hotel 1',
        'Alójate en el corazón de Buenos Aires',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 940 m del centro',
        '-34.5997',
        '-58.3819',
        1,
        1);

INSERT INTO Imagenes (producto_id, titulo, url) VALUES (1, '1.1', 'https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (1, '1.2', 'https://images.unsplash.com/photo-1420582282039-a6d11404cb66?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (1, '1.3', 'https://plus.unsplash.com/premium_photo-1667177233838-96b4fbc232df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (1, '1.4', 'https://images.unsplash.com/photo-1606402179428-a57976d71fa4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (1, '1.5', 'https://images.unsplash.com/photo-1543351611-58f69d7c1781?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 1, id FROM Caracteristicas;

INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,4);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (1,4);

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (1, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (1, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (1, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-10', '2022-11-14');
INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-15', '2022-11-16');
INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-20', '2022-11-22');
INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-25', '2022-11-30');
INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-12-04', '2022-12-09');
INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-12-10', '2022-12-14');

INSERT INTO Productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Hostel 1',
        'Alójate en el corazón de Buenos Aires',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 940 m del centro',
        '-34.5997',
        '-58.3819',
        2,
        1);

INSERT INTO Imagenes (producto_id, titulo, url) VALUES (2, '2.1', 'https://images.unsplash.com/photo-1586214601498-4dbcfd0bf2c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (2, '2.2', 'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (2, '2.3', 'https://images.unsplash.com/photo-1520277739336-7bf67edfa768?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (2, '2.4', 'https://images.unsplash.com/photo-1557367184-663fba4b8b91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (2, '2.5', 'https://images.unsplash.com/photo-1474962558142-9ca83af74bb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (2, '2.6', 'https://images.unsplash.com/photo-1545571326-00415fe9848b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (2, '2.7', 'https://images.unsplash.com/photo-1531547977107-a5f0f32d6d87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 2, id FROM Caracteristicas;

INSERT INTO Puntajes (producto_id, puntaje) VALUES (2,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (2,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (2,4);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (2,3);

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (2, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (2, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (2, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (2, '2022-11-25', '2022-11-30');
INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (2, '2022-12-04', '2022-12-09');
INSERT INTO Reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (2, '2022-12-10', '2022-12-14');

INSERT INTO Productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('B&B 2',
        'Alójate en el corazón de Buenos Aires',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 940 m del centro',
        '-34.5997',
        '-58.3819',
        4,
        1);

INSERT INTO Imagenes (producto_id, titulo, url) VALUES (3, '3.1', 'https://images.unsplash.com/photo-1586214601498-4dbcfd0bf2c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (3, '3.2', 'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (3, '3.3', 'https://images.unsplash.com/photo-1520277739336-7bf67edfa768?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (3, '3.4', 'https://images.unsplash.com/photo-1557367184-663fba4b8b91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (3, '3.5', 'https://images.unsplash.com/photo-1474962558142-9ca83af74bb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (3, '3.6', 'https://images.unsplash.com/photo-1545571326-00415fe9848b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO Imagenes (producto_id, titulo, url) VALUES (3, '3.7', 'https://images.unsplash.com/photo-1531547977107-a5f0f32d6d87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 3, id FROM Caracteristicas;

INSERT INTO Puntajes (producto_id, puntaje) VALUES (3,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (3,3);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (3,4);
INSERT INTO Puntajes (producto_id, puntaje) VALUES (3,3);

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (3, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (3, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO Politicas (producto_id, titulo, descripcion) VALUES (3, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');



INSERT INTO Roles (nombre) VALUES ( 'ROL_USER');
INSERT INTO Roles (nombre) VALUES ( 'ROL_ADMIN');

INSERT INTO Usuarios (nombre, apellido, email, contrasenia, ciudad, roles_id) VALUES ('Jeisson', 'Forero', 'jeisson@forero.com', '$2a$10$cjs2BGvPybDVG/RvttQ20.a3EFfrSd6iVS9aInmkvQ3N/qFnWRsnm', 'Bogota', 1);
INSERT INTO Usuarios (nombre, apellido, email, contrasenia, ciudad, roles_id) VALUES ('Jeisson', 'Lopez', 'jeisson@lopez.com', '$2a$10$cjs2BGvPybDVG/RvttQ20.a3EFfrSd6iVS9aInmkvQ3N/qFnWRsnm', 'Bogota', 2);

INSERT INTO Reservaciones (producto_id, hora, fecha_inicial, fecha_final, usuario_id) VALUES (3, '08:00:00','2022-11-25', '2022-11-30', 1);
INSERT INTO Reservaciones (producto_id, hora, fecha_inicial, fecha_final) VALUES (3, '15:00:00','2022-12-04', '2022-12-09');
INSERT INTO Reservaciones (producto_id, hora, fecha_inicial, fecha_final) VALUES (3, '20:50:00','2022-12-10', '2022-12-14');