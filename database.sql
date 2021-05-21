-- Creamos la base de datos y cambiamos a eso
create database if not exists ingredientes;
use ingredientes;

-- Creamos la tabla de la base de datos
create or replace table lista (
	id int not null auto_increment,
	ingrediente varchar(40) not null,
	imagen varchar(30) not null,
	primary key (id) 
);

-- Ahora si insertamos las cosas
insert into lista (ingrediente, imagen) values 
	("Aceite de soja", "soy_oil.jfif"),
	("Aceite de maíz", "corn_oil.jfif"),
	("Aceite de oliva", "olive_oil.jfif"),
	("Aceite de trufa", "truffle_oil.jfif"),
	("Nata", "nata.jfif"),
	("Yogur", "yogur.jfif"),
	("Leche", "milk.jfif"),
	("Helado", "ice_cream.jfif"),
	("Queso", "chesee.jfif"),
	("Cuajada", "cuajada.jfif"),
	("Mantequilla", "butter.jfif"),
	("Frijoles", "beans.jfif"),
	("Garbanzos", "chickpea.jfif"),
	("Guisante", "peas.jfif"),
	("Habas", "habas.jfif"),
	("Lentejas", "Lentils.jfif"),
	("Soja", "soy.jfif"),
	("Setas", "Setas.jfif"),
	("Hongos", "hongos.jfif"),
	("Boleto", "boleto.jfif"),
	("Champiñón", "cham.jfif"),
	("Huitlacoche", "uitlacoche.jfif"),
	("Niscalo", "niscalo.jfif"),
	("Seta shiitake", "eta shiitak.jfif"),
	("Seta de cardo", "cardo.jfif"),
	("Seta de chopo", "chopo.jfif"),
	("Trufa", "trufa.jfif"),
	("Patata", "papa.jfif"),
	("Lechuga", "lettuce.jfif"),
	("Acelga", "acelga.jfif"),
	("Alcachofa", "alcachofa.jfif"),
	("Batata", "batata.jfif"),
	("Berenjena", "eggplant.jfif"),
	("Berro", "berro.jfif"),
	("Brócoli", "brocoli.jfif"),
	("Brecol", "brocoli.jfif"),
	("Calabacín", "zucchini.jfif"),
	("Calabaza", "pumpkin.jfif"),
	("Cardo", "thistle.jpg"),
	("Cebolla", "onion.jfif"),
	("Cebolla caramelizada", "onion_cara.jfif"),
	("Cebolleta", "cebolleta.jfif"),
	("Coles", "coles.jfif"),
	("Coles de Bruselas", "coles_brusle.jfif"),
	("Coliflor", "coliflor.jfif"),
	("Endivia", "envi.jfif"),
	("Tomate", "Tomate.jfif"),
	("Zanahoria", "Zanahoria.jfif"),
	("Escarola", "Escarola.jfif"),
	("Espárrago", "Esparrago.jfif"),
	("Espinaca", "espinaca.jfif"),
	("Hinojo", "hinojo.jfif"),
	("Judías", "judias.jfif"),
	("Maíz", "corn.jfif"),
	("Palmito", "palmito.jfif"),
	("Pepino", "pepino.jfif"),
	("Pimiento", "pimiento.jfif"),
	("Puerro", "puerro.jfif"),
	("Remolacha", "remolacha.jfif"),
	("Albaricoque", "albaricoque.jfif"),
	("Caquis", "caquis.jfif"),
	("Aguacate", "aguacate.jfif"),
	("Cereza", "cereza.jfif"),
	("Mango", "mango.jfif"),
	("Melocotones", "melocotones.jfif"),
	("Nectarina", "nectarina.jfif"),
	("Ciruela", "ciruela.jfif"),
	("Fruta del bosque", "fruta del bosque.jfif"),
	("Frutos secos", "frutos secos.jfif"),
	("Membrillo", "membrillo.jfif"),
	("Peras", "peras.jfif"),
	("Manzanas", "apple.jfif"),
	("Uvas", "uvas.jfif"),
	("Fruta seca", "fruta_s.jfif"),
	("Frambuesa", "frambuesa.jfif"),
	("Fresa", "fresa.jfif"),
	("Granada", "granada.jfif"),
	("Higos", "higos.jfif"),
	("Kiwi", "kiwi.jfif"),
	("Limón", "limon.jfif"),
	("Mandarina", "mandarina.jfif"),
	("Melón", "melon.jfif"),
	("Naranja", "naranja.jfif"),
	("Piña", "pineapple.jfif"),
	("Plátano", "platano.jfif"),
	("Pomelo", "pomelo.jfif"),
	("Sandía", "water_m.jfif"),
	("Cereal", "cereal.jfif"),
	("Harina", "harina.jfif"),
	("Pan", "pan.jfif"),
	("Arroz", "rice.jfif"),
	("Pasta", "pasta.jfif"),
	("Atún", "atun.jfif"),
	("Anchoa", "anchoa.jfif"),
	("Bacalao", "bacaloa.jfif"),
	("Besugo", "besugo.jfif"),
	("Bonito", "bonito.jfif"),
	("Boquerón", "boqueron.jfif"),
	("Caballa", "caballa.jfif"),
	("Chicharro", "chicharro.jfif"),
	("Corvina", "corvina.jfif"),
	("Dorada", "dorada.jfif"),
	("Lenguado", "lenguado.jfif"),
	("Lubina", "lubina.jfif"),
	("Merluza", "merluza.jfif"),
	("Mero", "mero.jfif"),
	("Palometa", "palometa.jfif"),
	("Pejerrey", "pejerrey.jfif"),
	("Rape", "rape.jfif"),
	("Rodaballo", "rodaballo.jfif"),
	("Salmón", "salmon.jfif"),
	("Sardina", "sardina.jfif"),
	("Trucha", "trucha.jfif"),
	("Camarón", "camaron.jfif"),
	("Cigala", "cigala.jfif"),
	("Gamba", "gamba.jfif"),
	("Langostino", "langostino.jfif"),
	("Percebe", "percebe.jfif"),
	("Almeja", "almejas.jfif"),
	("Calamar", "calamar.jfif"),
	("Mejillón", "mejillon.jfif"),
	("Ostra", "ostra.jfif"),
	("Pulpo", "pulpo.jfif"),
	("Sepia", "Sepia.jfif"),
	("Vieira", "vieira.jfif"),
	("Cerveza", "cerveza.jfif"),
	("Sidra", "sidra.jfif"),
	("Licor", "licor.jfif"),
	("Vino blanco", "vino_b.jfif"),
	("Vino caliente", "vino_c.jfif"),
	("Vino tinto", "vino_t.jfif"),
	("Vino rosado", "vino_r.jfif"),
	("Vino dulce", "vino_d.jfif"),
	("Whisky", "whisky.jfif"),
	("Café", "cafe.jfif"),
	("Soda", "soda.jfif"),
	("Agua", "agua.jfif"),
	("Agua mineral", "agua_m.jfif"),
	("Gaseosa", "gaseosas.jfif"),
	("Zumo", "zumo.jfif"),
	("Té", "te.jfif"),
	("Horchata", "horcharta.jfif"),
	("Jamaica", "jaimaica.jfif"),
	("Res", "res.jfif"),
	("Pescuezo", "pescuezo.jfif"),
	("Cogote", "cogote.jfif"),
	("Aguja", "aguja.jfif"),
	("Pecho", "pecho.jfif"),
	("Brazuelo", "brazuelo.jfif"),
	("Osobuco", "osobuco.jfif"),
	("Cuadril", "cuadril.jfif"),
	("Solomillo", "solo.jfif"),
	("Filete", "filete.jfif"),
	("Lomo", "lomo.jfif"),
	("Lomo alto", "lomo_a.jfif"),
	("Lomo bajo", "lomo_b.jfif"),
	("Cadera", "cadera.jfif"),
	("Culata de contra", "culata.jfif"),
	("Tapilla", "tapilla.jfif"),
	("Tapa", "tapa.jfif"),
	("Contra", "contra.jfif"),
	("Espaldilla", "espaldilla.jfif"),
	("Falda", "falda.jfif"),
	("Entraña", "entraña.jfif"),
	("Costilla", "costilla.jfif"),
	("Rabo", "rabo.jfif"),
	("Pollo", "pollo.jfif"),
	("Pechuga de pollo", "pechuga.jfif"),
	("Espoleta de pollo", "espoleta.jfif"),
	("Muslo de pollo", "muslo.jfif"),
	("Piernas de pollo", "pierna.jfif"),
	("Alas de pollo", "alas.jfif"),
	("Carcaza", "carcaza.jfif"),
	("Vísceras de pollo", "visceras.jfif"),
	("Menudillos", "menudillos.jfif"),
	("Cerdo", "cerdo.jfif"),
	("Chamorro de cerdo", "chamorro.jfif"),
	("Lomo de cerdo", "lomo_c.jfif"),
	("Costilla de cerdo", "costilla_c.jfif"),
	("Falda de cerdo", "falda_c.jfif"),
	("Manitas de cerdo", "manitas.jfif"),
	("Paletilla de cerdo", "paletilla.jfif"),
	("Espaldilla de cerdo", "espaldilla_c.jfif"),
	("Pulpa de cerdo", "pulpa.jfif"),
	("Espinazo", "espinazo.jfif"),
	("Cabeza de lomo", "cabeza.jfif"),
	("Chuleta de cerdo", "chuleta_c.jfif"),
	("Cordero", "cordero.jfif");
-- Y abres la base de datos en 
-- esta carpeta y le haces
-- source database.sql
-- se crea la base de datos y la tabla y se añade todo
