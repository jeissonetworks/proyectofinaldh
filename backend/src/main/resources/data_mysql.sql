--SET REFERENTIAL_INTEGRITY FALSE;
--TRUNCATE TABLE productos_caracteristicas RESTART IDENTITY;
--TRUNCATE TABLE Reservaciones RESTART IDENTITY;
--TRUNCATE TABLE Politicas RESTART IDENTITY;
--TRUNCATE TABLE Puntajes RESTART IDENTITY;
--TRUNCATE TABLE Imagenes RESTART IDENTITY;
--TRUNCATE TABLE Productos RESTART IDENTITY;
--TRUNCATE TABLE Caracteristicas RESTART IDENTITY;
--TRUNCATE TABLE Categorias RESTART IDENTITY;
--TRUNCATE TABLE Ciudades RESTART IDENTITY;
--SET REFERENTIAL_INTEGRITY TRUE;

SET @@foreign_key_checks = 0;
TRUNCATE TABLE productos_caracteristicas;
TRUNCATE TABLE reservaciones;
TRUNCATE TABLE politicas;
TRUNCATE TABLE puntajes;
TRUNCATE TABLE imagenes;
TRUNCATE TABLE productos;
TRUNCATE TABLE caracteristicas;
TRUNCATE TABLE categorias;
TRUNCATE TABLE ciudades;
TRUNCATE TABLE paises;
TRUNCATE TABLE roles;
TRUNCATE TABLE usuarios;
SET @@foreign_key_checks = 1;

INSERT INTO paises (pais) VALUES ('Argentina');

INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Buenos Aires');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Córdoba');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rosario');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Comodoro Rivadavia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Miguel de Tucumán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Mar del Plata');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Salta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Juan');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Lanús');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Florencio Varela');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Fe');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Corrientes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Salvador de Jujuy');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bahía Blanca');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Resistencia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Posadas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santiago del Estero');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Paraná');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Merlo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'González Catán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Neuquén');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Quilmes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Banfield');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Formosa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'José C. Paz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Plata');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Godoy Cruz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Isidro Casanova');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Rioja');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Berazategui');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Luis');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'José María Ezeiza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Nicolás de los Arroyos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Catamarca');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Río Cuarto');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Miguel');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Concordia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rafael Castillo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Florencio Varela');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Justo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ituzaingó');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Temperley');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ramos Mejía');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Martín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tandil');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puerto Madryn');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Mendoza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Carlos de Bariloche');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Lomas de Zamora');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Mercedes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bernal');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Esteban Echeverría');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Gualeguaychú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Rafael');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Castelar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Banda');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Berisso');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Libertad');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Morón');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Burzaco');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Zárate');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Río Gallegos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Caseros');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Luzuriaga');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Trelew');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ciudad General Belgrano');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rafaela');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Francisco Solano');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pergamino');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Campana');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Olavarría');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Monte Chingolo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Junín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Presidencia Roque Sáenz Peña');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Luján');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Roca');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Remedios de Escalada');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pilar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Gobernador Gálvez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Necochea');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ezpeleta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa María');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Venado Tuerto');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Ramón de la Nueva Orán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Concepción del Uruguay');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Goya');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bella Vista');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Lomas del Mirador');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Reconquista');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Las Heras');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Oberá');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Wilde');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santo Tomé');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Carlos Paz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Domínico');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Francisco');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Los Polvorines');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tartagal');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Sarandí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chajarí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Viedma');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Punta Alta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rafael Calzada');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Pico');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ushuaia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Azul');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chivilcoy');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Mercedes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cruz del Eje');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Caleta Olivia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'El Talar de Pacheco');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villaguay');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Libertador General San Martín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Alta Gracia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Reja');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Lorenzo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Longchamps');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Constitución');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tres Arroyos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Río Tercero');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pinamar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Isidro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Esperanza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Gualeguay');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Alsina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'José Mármol');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Balcarce');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Aristóbulo del Valle');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Haedo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Granadero Baigorria');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Esquel');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Nueve de Julio');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Dock Sur');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Munro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cutral-Có');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Adelina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Casilda');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chacabuco');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Centenario');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bell Ville');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chilecito');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bragado');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Plottier');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Calera');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Zapala');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rawson');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Jesús María');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Río Grande');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Mercedes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Victoria');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Ángela');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Regina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Celina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Gesell');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Capitán Bermúdez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cañada de Gómez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Baradero');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Allende');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Adrogue');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Martín de los Andes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Marcos Juárez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Dolores');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Firmat');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Colón');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Lincoln');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Avellaneda');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Coronel Suárez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tapiales');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Veinticinco de Mayo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tunuyán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Justo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Deán Funes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'El Calafate');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chascomús');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Laboulaye');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Brandsen');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Martín Miguel de Güemes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Vera');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Charata');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Lobos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Coronda');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Juan Madariaga');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Veinticinco de Mayo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Eldorado');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ayacucho');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa María');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Federación');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Antonio Oeste');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa del Rosario');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Paranacito');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Carmen de Areco');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Cristóbal');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puerto Deseado');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Añatuya');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Quiaca');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Javier');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Frías');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Joaquín V. González');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chos Malal');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rosario del Tala');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Salvador');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Junín de los Andes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Carlota');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Malargüe');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cafayate');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Oliva');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Coronel Dorrego');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cerrillos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Monte Quemado');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Humahuaca');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Belén');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa La Angostura');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Sarmiento');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Benito Juárez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San José de Feliciano');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Choele Choel');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Castelli');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chamical');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Helvecia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Julián');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa de Río Primero');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Carhué');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rinconada');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ingeniero Guillermo N. Juárez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Cura Brochero');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chepes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Huidobro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Conesa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Antonio de los Cobres');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Macachín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Loncopué');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Perito Moreno');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Aluminé');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Gobernador Gregores');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Abra Pampa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Victorica');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puerto Santa Cruz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Paz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Comandante Fontana');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Concepción');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Valcheta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Piedra del Águila');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tafí del Valle');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Agustín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Picún Leufú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pampa del Infierno');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chumbicha');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Maquinchao');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Añelo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Buta Ranquil');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Francisco del Chañar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Melincué');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'José de San Martín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Trancas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Alto Río Senguer');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Sierra Colorada');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Tulumba');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'El Huecú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Carlos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Salsacate');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Paso de Indios');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tecka');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Las Lajas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Susques');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Las Coloradas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pilcaniyeu');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rodeo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Gastre');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tinogasta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Telsen');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Las Plumas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Olivos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General San Martín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Hurlingham');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Banda del Río Salí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Nueva');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chimbas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tigre');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Lucía');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Belén de Escobar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Guernica');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rivadavia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bernardo de Irigoyen');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Yerba Buena');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ensenada');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Krause');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Mar del Tuyú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Rodríguez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Maipú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Fernando');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Junín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Marcos Paz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Isidro de Lules');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tafí Viejo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Palpalá');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'El Carmen');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Aberastain');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Vicente');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Aguilares');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Famaillá');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cosquín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Dolores');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San José');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Nueve de Julio');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Concepción');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Monteros');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Capilla del Señor');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Isidro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Monte Hermoso');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cañuelas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puerto Rico');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Alberdi');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Leandro N. Alem');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Apóstoles');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Alba Posse');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Campo Grande');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Ignacio');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ramallo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Fernández');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puerto Esperanza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Javier');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Ana');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Termas de Río Hondo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rivadavia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bella Vista');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Capitán Sarmiento');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Antonio de Areco');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Cosme');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Luján de Cuyo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Colón');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Miramar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Simoca');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Martín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Arrecifes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bella Vista');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'El Soberbio');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Montecarlo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Quitilipi');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Chicoana');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Salto');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Andrés de Giles');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Lucía');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Las Heras');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Cocha');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa San Isidro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Antonio');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Las Rosas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Diamante');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Clorinda');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa del Conlara');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Monte Caseros');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tupungato');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Bernardo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Sastre');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Las Breñas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Concepción de la Sierra');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Miguel del Monte');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Machagai');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Saladillo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puerto Tirol');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Itatí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Campo Largo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Saladas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rojas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Suipacha');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Magdalena');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Navarro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Vedia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Burruyacú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Salliqueló');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Colonia Elisa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Paz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Paso de los Libres');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Arenales');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Leonesa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Belgrano');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Corzuela');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Alberti');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ranchos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Mburucuyá');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pehuajó');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santo Tomé');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Gobernador Ingeniero Valentín Virasoro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Carlos Casares');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Makallé');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Nogoyá');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Roque Pérez');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Trenque Lauquen');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tres Isletas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Viamonte');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Caldera');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Margarita Belén');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Pinedo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General José de San Martín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rosario de Lerma');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Media Agua');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Empedrado');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bañado de Ovanta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Graneros');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Concarán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Esquina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Metán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Roque');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Coronel Vidal');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tres Lomas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Realicó');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pirané');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Luis del Palmar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Las Flores');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Carlos de Bolívar');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Berthet');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Arraga');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tilcara');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Aimogasta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa del Totoral');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Verónica');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Henderson');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pigüé');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Sylvina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Nuestra Señora del Rosario de Caa Catí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rosario de la Frontera');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Herrera');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Brea Pozo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Presidencia de la Plaza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Caucete');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Curuzú Cuatiá');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ameghino');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Espinillo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Intendente Alvear');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Federal');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Francisco de Laishí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Atamisqui');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Daireaux');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Pinto');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Hermoso Campo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Villegas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Santa Rosa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Coronel Pringles');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Alvear');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Candelaria');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Enrique Mosconi');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Merced');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Castelli');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Maipú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Clara');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Andalgalá');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Lavalle');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Lobería');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Los Telares');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Viña');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Miguel');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Quemú Quemú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Sauce');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rauch');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ituzaingó');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Toma');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Berón de Astrada');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pellegrini');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Alvear');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Alvear');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tornquist');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Médanos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'González Chaves');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Aminga');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa del Salvador');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Carlos Tejedor');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bandera');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Catriló');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Laprida');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Consulta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Nueva Esperanza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Toay');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Cayetano');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Garza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Esquiú');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Antonio');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Pedro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Trenel');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Cañada');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Eduardo Castex');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Guaminí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Winifreda');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Blas de los Sauces');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Victoria');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Sumampa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pozo Hondo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puan');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Olta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Guatraché');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cachí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Ojo de Agua');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Carmen de Patagones');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Valle Grande');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tapalqué');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Francisco del Monte de Oro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General La Madrid');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa de María');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Puerta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Cruz');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Quimilí');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Suncho Corral');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Selva');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Saujil');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Parera');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Milagro');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Sañogasta');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Rosa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tostado');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'El Alto');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Molinos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Iruya');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Lavalle');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San José de Jáchal');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Leleque');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Campo Gallo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Famatina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Agustín de Valle Fértil');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Libertador General San Martín');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tumbaya');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ancasti');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Conesa');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'San Carlos');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Rivadavia');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Bernasconi');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Guido');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Andacollo');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'General Acha');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Guachipas');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Malanzán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Laguna Yema');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Pila');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Unión');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ulapes');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Gaimán');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Catalina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Río Colorado');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tama');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Patquía');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Charadai');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Unión');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa General Roca');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Buena Esperanza');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Santa Isabel');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'La Poma');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Tamberías');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Villa Castelli');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'El Cuy');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Vinchina');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Algarrobo del Águila');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Ñorquinco');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Camarones');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Puelches');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Limay Mahuida');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Antofagasta de la Sierra');
INSERT INTO ciudades (pais_id,ciudad) VALUES (1,'Cuchillo Có');


INSERT INTO categorias ( titulo, descripcion, imagen_Url) VALUES ('Hotel', '', 'https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80');
INSERT INTO categorias ( titulo, descripcion, imagen_Url) VALUES ('Hostel', '', 'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80');
INSERT INTO categorias ( titulo, descripcion, imagen_Url) VALUES ('Departamento', '', 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1560&q=80');
INSERT INTO categorias ( titulo, descripcion, imagen_Url) VALUES ('B&B', '', 'https://images.unsplash.com/photo-1621262331990-19861196e3ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80');


INSERT INTO caracteristicas (nombre, icono) VALUES ('Cocina', '../images/cocina.svg');
INSERT INTO caracteristicas (nombre, icono) VALUES ('Televisor', '../images/tv.svg');
INSERT INTO caracteristicas (nombre, icono) VALUES ('Aire acondicionado', '../images/aire.svg');
INSERT INTO caracteristicas (nombre, icono) VALUES ('Apto mascotas', '../images/mascota.svg');
INSERT INTO caracteristicas (nombre, icono) VALUES ('Estacionamiento gratuito', '../images/parking.svg');
INSERT INTO caracteristicas (nombre, icono) VALUES ('Pileta', '../images/pileta.svg');
INSERT INTO caracteristicas (nombre, icono) VALUES ('Wifi', '../images/wifi.svg');


INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Hotel Realeza',
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

INSERT INTO imagenes (producto_id, titulo, url) VALUES (1, '1.1', 'https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (1, '1.2', 'https://images.unsplash.com/photo-1420582282039-a6d11404cb66?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (1, '1.3', 'https://plus.unsplash.com/premium_photo-1667177233838-96b4fbc232df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (1, '1.4', 'https://images.unsplash.com/photo-1606402179428-a57976d71fa4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (1, '1.5', 'https://images.unsplash.com/photo-1543351611-58f69d7c1781?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 1, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,5);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (1,4);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (1, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (1, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (1, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-10', '2022-11-14');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-15', '2022-11-16');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-20', '2022-11-22');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (1, '2022-12-10', '2022-12-14');

INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Passarela Hostel',
        'Disfruta en el regazo de la naturaleza.',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 1.5 km del aeropuerto',
        '-34.5997',
        '-58.3819',
        2,
        2);

INSERT INTO imagenes (producto_id, titulo, url) VALUES (2, '2.1', 'https://images.unsplash.com/photo-1586214601498-4dbcfd0bf2c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (2, '2.2', 'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (2, '2.3', 'https://images.unsplash.com/photo-1520277739336-7bf67edfa768?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (2, '2.4', 'https://images.unsplash.com/photo-1557367184-663fba4b8b91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (2, '2.5', 'https://images.unsplash.com/photo-1474962558142-9ca83af74bb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (2, '2.6', 'https://images.unsplash.com/photo-1545571326-00415fe9848b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (2, '2.7', 'https://images.unsplash.com/photo-1531547977107-a5f0f32d6d87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 2, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (2,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (2,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (2,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (2,3);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (2, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (2, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (2, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (2, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (2, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (2, '2022-12-10', '2022-12-14');

INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Oz Resort',
        'La vista más sólida con la mejor comida.',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 140 m de la playa',
        '-34.5997',
        '-58.3819',
        3,
        2);

INSERT INTO imagenes (producto_id, titulo, url) VALUES (3, '3.1', 'https://images.unsplash.com/photo-1586214601498-4dbcfd0bf2c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (3, '3.2', 'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (3, '3.3', 'https://images.unsplash.com/photo-1520277739336-7bf67edfa768?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (3, '3.4', 'https://images.unsplash.com/photo-1557367184-663fba4b8b91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (3, '3.5', 'https://images.unsplash.com/photo-1474962558142-9ca83af74bb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (3, '3.6', 'https://images.unsplash.com/photo-1545571326-00415fe9848b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (3, '3.7', 'https://images.unsplash.com/photo-1531547977107-a5f0f32d6d87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 3, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (3,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (3,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (3,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (3,3);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (3, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (3, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (3, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (3, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (3, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (3, '2022-12-10', '2022-12-14');

INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Queen Hotel',
        'Disfrute de su estadía cómodamente.',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 2 km del aeropuerto',
        '-34.5997',
        '-58.3819',
        4,
        3);

INSERT INTO imagenes (producto_id, titulo, url) VALUES (4, '4.1', 'https://images.unsplash.com/photo-1629140727571-9b5c6f6267b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (4, '4.2', 'https://images.unsplash.com/photo-1498503182468-3b51cbb6cb24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (4, '4.3', 'https://images.unsplash.com/photo-1576354302919-96748cb8299e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=929&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (4, '4.4', 'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (4, '4.5', 'https://images.unsplash.com/photo-1521783988139-89397d761dce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (4, '4.6', 'https://plus.unsplash.com/premium_photo-1661765520028-07c0b222f7f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (4, '4.7', 'https://images.unsplash.com/photo-1519690889869-e705e59f72e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 4, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (4,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (4,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (4,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (4,3);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (4, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (4, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (4, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (4, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (4, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (4, '2022-12-10', '2022-12-14');

INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Candel Resort',
        'Espacio perfecto para vivir',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 850 m del puerto',
        '-34.5997',
        '-58.3819',
        1,
        1);

INSERT INTO imagenes (producto_id, titulo, url) VALUES (5, '5.1', 'https://images.unsplash.com/photo-1615460549969-36fa19521a4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2148&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (5, '5.2', 'https://images.unsplash.com/photo-1574643156929-51fa098b0394?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (5, '5.3', 'https://images.unsplash.com/photo-1554647286-f365d7defc2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (5, '5.4', 'https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (5, '5.5', 'https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (5, '5.6', 'https://images.unsplash.com/photo-1596436889106-be35e843f974?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (5, '5.7', 'https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2371&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 5, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (5,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (5,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (5,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (5,3);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (5, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (5, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (5, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (5, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (5, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (5, '2022-12-10', '2022-12-14');

INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('La Cabaña Resort',
        'La alegría de tu propia casa',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 180 m del poblado',
        '-34.5997',
        '-58.3819',
        2,
        4);

INSERT INTO imagenes (producto_id, titulo, url) VALUES (6, '6.1', 'https://images.unsplash.com/photo-1584132915807-fd1f5fbc078f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (6, '6.2', 'https://images.unsplash.com/photo-1592229505726-ca121723b8ef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2148&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (6, '6.3', 'https://images.unsplash.com/photo-1549294413-26f195200c16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (6, '6.4', 'https://images.unsplash.com/photo-1531088009183-5ff5b7c95f91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (6, '6.5', 'https://images.unsplash.com/photo-1589923158776-cb4485d99fd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (6, '6.6', 'https://images.unsplash.com/photo-1565031491910-e57fac031c41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1335&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (6, '6.7', 'https://images.unsplash.com/photo-1554009975-d74653b879f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 6, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (6,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (6,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (6,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (6,3);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (6, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (6, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (6, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (6, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (6, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (6, '2022-12-10', '2022-12-14');

INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Posada El Manantial',
        'Un hotel de lujo',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 5 km del aeropuerto',
        '-34.5997',
        '-58.3819',
        3,
        4);

INSERT INTO imagenes (producto_id, titulo, url) VALUES (7, '7.1', 'https://plus.unsplash.com/premium_photo-1661762698788-b56a77023714?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (7, '7.2', 'https://images.unsplash.com/photo-1507652313519-d4e9174996dd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (7, '7.3', 'https://images.unsplash.com/photo-1551918120-9739cb430c6d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (7, '7.4', 'https://images.unsplash.com/photo-1606402179428-a57976d71fa4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2148&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (7, '7.5', 'https://images.unsplash.com/photo-1562133567-b6a0a9c7e6eb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (7, '7.6', 'https://images.unsplash.com/photo-1630582837298-49d1927726e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (7, '7.7', 'https://images.unsplash.com/photo-1535827841776-24afc1e255ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1335&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 7, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (7,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (7,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (7,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (7,3);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (7, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (7, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (7, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (7, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (7, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (7, '2022-12-10', '2022-12-14');

INSERT INTO productos (nombre, titulo_descripcion, descripcion, ubicacion, detalle_ubicacion, latitud, longitud, categoria_id, ciudad_id)
VALUES ('Hotel Verano Azul',
        'Nos preocupamos por ti',
        'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. En las inmediaciones también hay varios lugares de interés, como la calle Florida, el centro comercial Galerías Pacífico, la zona de Puerto Madero, la plaza de Mayo y el palacio Municipal.

        Nuestros clientes dicen que esta parte de Buenos Aires es su favorita, según los comentarios independientes.

        El Hotel es un hotel sofisticado de 4 estrellas que goza de una ubicación tranquila, a poca distancia de prestigiosas galerías de arte, teatros, museos y zonas comerciales. Además, hay WiFi gratuita. El establecimiento sirve un desayuno variado de 07:00 a 10:30.',
        'Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina',
        'A 3.5 km del centro',
        '-34.5997',
        '-58.3819',
        4,
        3);

INSERT INTO imagenes (producto_id, titulo, url) VALUES (8, '8.1', 'https://images.unsplash.com/photo-1598605272254-16f0c0ecdfa5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2371&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (8, '8.2', 'https://images.unsplash.com/photo-1462539405390-d0bdb635c7d1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2440&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (8, '8.3', 'https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (8, '8.4', 'https://plus.unsplash.com/premium_photo-1661505119522-22651550cd42?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (8, '8.5', 'https://images.unsplash.com/photo-1605651531144-51381895e23d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (8, '8.6', 'https://images.unsplash.com/photo-1573052905904-34ad8c27f0cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1335&q=80');
INSERT INTO imagenes (producto_id, titulo, url) VALUES (8, '8.7', 'https://images.unsplash.com/photo-1590381105924-c72589b9ef3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2371&q=80');

INSERT INTO productos_caracteristicas (producto_id, caracteristica_id) SELECT 8, id FROM caracteristicas;

INSERT INTO puntajes (producto_id, puntaje) VALUES (8,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (8,3);
INSERT INTO puntajes (producto_id, puntaje) VALUES (8,4);
INSERT INTO puntajes (producto_id, puntaje) VALUES (8,3);

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (8, 'Normas de la casa', 'Check-out 10:00

No se permite fiestas

No fumar ');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (8, 'Salud y seguridad', 'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus

Detector de humo

Depósito de seguridad');

INSERT INTO politicas (producto_id, titulo, descripcion) VALUES (8, 'Política de cancelación', 'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.');

INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (8, '2022-11-25', '2022-11-30');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (8, '2022-12-04', '2022-12-09');
INSERT INTO reservaciones (producto_id, fecha_inicial, fecha_final) VALUES (8, '2022-12-10', '2022-12-14');


INSERT INTO roles (nombre) VALUES ('ROL_USER');
INSERT INTO roles (nombre) VALUES ('ROL_ADMIN');

INSERT INTO usuarios (nombre, apellido, email, contrasenia, ciudad, roles_id) VALUES ('Jeisson', 'Forero', 'jeisson@forero.com', '$2a$10$cjs2BGvPybDVG/RvttQ20.a3EFfrSd6iVS9aInmkvQ3N/qFnWRsnm', 'Bogota', 1);
INSERT INTO usuarios (nombre, apellido, email, contrasenia, ciudad, roles_id) VALUES ('Jeisson', 'Lopez', 'jeisson@Lopez.com', '$2a$10$cjs2BGvPybDVG/RvttQ20.a3EFfrSd6iVS9aInmkvQ3N/qFnWRsnm', 'Bogota', 2);
