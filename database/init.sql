DROP DATABASE IF EXISTS pokemon_db;

CREATE database pokemon_db;

use pokemon_db;

CREATE TABLE pokemon (
    pokemon_id INT PRIMARY KEY,
    pokemon_name VARCHAR(50),
    dex_number INT,
    pokemon_type1 VARCHAR(50),
    pokemon_type2 VARCHAR(50) NULL,
    pv_stat INT,
    atk_stat INT,
    def_stat INT,
    atk_spe_stat INT,
    def_spe_stat INT,
    speed_stat INT,
    talent1 VARCHAR(50),
    talent2 VARCHAR(50) NULL,
    talent3 VARCHAR(50) NULL,
    icon VARCHAR(50)
);

INSERT INTO pokemon (pokemon_id, pokemon_name, dex_number, pokemon_type1,pokemon_type2, pv_stat, atk_stat, def_stat, atk_spe_stat, def_spe_stat, speed_stat,talent1,talent2,talent3,icon)
VALUES  
    (0, 'Victini', 0494, 'Feu','Psy', 100,100,100,100,100,100,'Victorieux',NULL,NULL,'../static/images/pokemon/victini.png'),
    (1, 'Vipelierre', 0495, 'Plante',NULL, 45,45,55,45,55,63,'Engrais','Contestation',NULL,'../static/images/pokemon/vipelierre.png'),
    (2, 'Lianaja', 0496, 'Plante',NULL, 60,60,75,60,75,83,'Engrais','Contestation',NULL,'../static/images/pokemon/lianaja.png'),
    (3, 'Majaspic', 0497, 'Plante',NULL, 75,75,95,75,95,113,'Engrais','Contestation',NULL,'../static/images/pokemon/majaspic.png'),
    (4, 'Gruiki', 0498, 'Feu',NULL, 65,63,45,45,45,45,'Brasier','Isograisse',NULL,'../static/images/pokemon/gruikui.png'),
    (5, 'Grotichon', 0499, 'Feu','Combat', 90,93,55,70,55,55,'Brasier','Isograisse',NULL,'../static/images/pokemon/grotichon.png'),
    (6, 'Roitiflam', 0500, 'Feu','Combat', 110,123,65,100,65,65,'Brasier','Temeraire',NULL,'../static/images/pokemon/roitiflam.png'),
    (7, 'Moustillon', 0501, 'Eau',Null, 55,55,45,63,45,45,'Torrent','Coque Armure',NULL,'../static/images/pokemon/moustillon.png'),
    (8, 'Mateloutre', 0502, 'Eau',Null, 75,75,60,83,60,60,'Torrent','Coque Armure',NULL,'../static/images/pokemon/mateloutre.png'),
    (9, 'Clamiral', 0503, 'Eau',Null, 95,100,85,108,70,70,'Torrent','Coque Armure',NULL,'../static/images/pokemon/clamiral.png'),
    (10, 'Ratentif', 0504, 'Normal',Null, 45,55,39,35,39,42,'Fuite','Regard Vif','Analyste','../static/images/pokemon/ratentif.png'),
    (11, 'Miradar', 0505, 'Normal',Null, 60,85,69,60,69,77,'Lumiattirance','Regard Vif','Analyste','../static/images/pokemon/miradar.png'),
    (12, 'Ponchiot', 0506, 'Normal',Null, 45,60,45,25,45,55,'Esprit Vital','Ramassage','Fuite','../static/images/pokemon/ponchiot.png'),
    (13, 'Ponchien', 0507, 'Normal',Null, 65,80,65,35,65,60,'Intimidation','Baigne Sable','Querelleur','../static/images/pokemon/ponchien.png'),
    (14, 'Mastouffe', 0508, 'Normal',Null, 85,110,90,45,90,80,'Intimidation','Baigne Sable','Querelleur','../static/images/pokemon/mastouffe.png'),
    (15, 'Chacripan', 0509, 'Tenebres',Null, 41,50,37,50,37,66,'Echauffement','Delestage','Farceur','../static/images/pokemon/chacripan.png'),
    (16, 'Leopardus', 0510, 'Tenebres',Null, 64,88,50,88,50,106,'Echauffement','Delestage','Farceur','../static/images/pokemon/leopardus.png'),
    (17, 'Feuillajou', 0511, 'Plante',Null, 50,53,48,53,48,64,'Gloutonnerie','Engrais',Null,'../static/images/pokemon/feuillajou.png'),
    (18, 'Feuilloutan', 0512, 'Plante',Null, 75,98,63,98,63,101,'Gloutonnerie','Engrais',Null,'../static/images/pokemon/feuilloutan.png'),
    (19, 'Flamajou', 0513, 'Feu',Null, 50,53,48,53,48,64,'Gloutonnerie','Brasier',Null,'../static/images/pokemon/flamajou.png'),
    (20, 'Flamoutan', 0514, 'Feu',Null, 75,98,63,98,63,101,'Gloutonnerie','Brasier',Null,'../static/images/pokemon/flamoutan.png'),
    (21, 'Flotajou', 0515, 'Eau',Null, 50,53,48,53,48,64,'Gloutonnerie','Torrent',Null,'../static/images/pokemon/flotajou.png'),
    (22, 'Flotoutan', 0516, 'Eau',Null, 75,98,63,98,63,101,'Gloutonnerie','Torrent',Null,'../static/images/pokemon/flotoutan.png');





CREATE Table capacity(
    capacity_id INT PRIMARY KEY,
    category VARCHAR(50),
    capacity_name VARCHAR(50),
    pp INT,
    power INT,
    accuracy INT,
    capacity_desc VARCHAR(50),
    capacity_type VARCHAR(50)
);

INSERT INTO capacity (capacity_id,category,capacity_name,pp,power,accuracy,capacity_desc,capacity_type)
VALUES
    (0,'../static/images/special.webp','Bombe Acide',20,40,100,'Baisse la def spe de la cible','../static/images/types/poison.png'),
    (1,'../static/images/physique.webp','Acrobatie',15,55,100,'Puissance double sans objet','../static/images/types/vol.png'),
    (2,'../static/images/physique.webp','Peignee',15,120,70,'Blesse le lanceur','../static/images/types/normal.png'),
    (3,'../static/images/special.webp','Chant antique',10,75,100,'Peut endormir la cible','../static/images/types/normal.png'),
    (4,'../static/images/special.webp','Flamme Croix',5,100,100,'Puissance augmente si agit apres Eclair Croix','../static/images/types/feu.png'),
    (5,'../static/images/special.webp','Flamme Bleue',5,130,85,'Peut brûler la cible','../static/images/types/feu.png'),
    (6,'../static/images/special.webp','Ebullition',15,80,100,'Peut brûler la cible','../static/images/types/eau.png'),
    (7,'../static/images/status.webp','Papillodanse',20,0,100,'Augmente la vit, atk spe et def spe d un cran','../static/images/types/insecte.png'),
    (8,'../static/images/status.webp','Aiguisage',15,0,100,'Augmente atk et precision d un cran','../static/images/types/tenebre.png'),
    (9,'../static/images/status.webp','Enroulement',20,0,100,'Augment la def, atk et precision d un cran','../static/images/types/poison.png'),
    (10,'../static/images/status.webp','Cottogarde',10,0,100,'Augmente la def de deux crans','../static/images/types/plante.png'),
    (11,'../static/images/physique.webp','Eclair Croix',5,100,100,'Puissance augmente si agit apres Flamme Croix','../static/images/types/electrik.png'),
    (12,'../static/images/physique.webp','Double Baffe',15,40,90,'Frappe deux fois','../static/images/types/dragon.png'),
    (13,'../static/images/physique.webp','Draco queue',10,60,90,'Expulse la cible du terrain','../static/images/types/dragon.png'),
    (14,'../static/images/physique.webp','Tunnelier',10,80,95,'Haut taux de coup critique','../static/images/types/sol.png'),
    (15,'../static/images/special.webp','Echo',15,55,95,'Puissance augmente si suit un autre echo','../static/images/types/normal.png'),
    (16,'../static/images/special.webp','Toile Elek',15,55,95,'Baisse la vitesse de la cible','../static/images/types/electrik.png'),
    (17,'../static/images/status.webp','Garde Large',15,0,100,'Annule les attaques adverse','../static/images/types/combat.png'),
    (18,'../static/images/special.webp','Danse du feu',10,80,100,'Augmente atk spe du lanceur','../static/images/types/feu.png'),
    (19,'../static/images/physique.webp','Chte Libre',10,60,100,'Attaque en deux tours','../static/images/types/vol.png'),
    (20,'../static/images/special.webp','Ere Glaciaire',10,65,95,'Diminue la vitesse de la cible','../static/images/types/glace.png');
    
    
    
    
    
    

CREATE Table types(
    type_id INT PRIMARY KEY,
    icon VARCHAR(50)
);


INSERT INTO types (type_id,icon)
VALUES
    (0,'../static/images/types/acier.png'),
    (1,'../static/images/types/combat.png'),
    (2,'../static/images/types/dragon.png'),
    (3,'../static/images/types/eau.png'),
    (4,'../static/images/types/electrik.png'),
    (5,'../static/images/types/fee.png'),
    (6,'../static/images/types/feu.png'),
    (7,'../static/images/types/glace.png'),
    (8,'../static/images/types/insecte.png'),
    (9,'../static/images/types/normal.png'),
    (10,'../static/images/types/plante.png'),
    (11,'../static/images/types/poison.png'),
    (12,'../static/images/types/psy.png'),
    (13,'../static/images/types/roche.png'),
    (14,'../static/images/types/sol.png'),
    (15,'../static/images/types/spectre.png'),
    (16,'../static/images/types/tenebre.png'),
    (17,'../static/images/types/vol.png');