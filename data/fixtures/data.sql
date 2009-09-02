SET FOREIGN_KEY_CHECKS=0;
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Vegetable'),(2,'Meat'),(3,'Cheese'),(4,'Seafood'),(5,'Spice'),(6,'Nut');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  `category_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FI_ingredient_category` (`category_id`),
  CONSTRAINT `fk_ingredient_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Alfalfa Sprouts',1),(2,'Artichoke hearts',1),(3,'Avocado',1),(4,'Baby leeks',1),(5,'Beetroot',1),(6,'Black Beans',1),(7,'Broccoli',1),(8,'Capers',1),(9,'Capicolla',1),(10,'Carrot',1),(11,'Cherry tomatoes',1),(12,'Dried tomatoes',1),(13,'Eggplant',1),(14,'Fungi',1),(15,'Fungi carciofi',1),(16,'Green peppers',1),(17,'Kalamata olives',1),(18,'Lettuce',1),(19,'Mushrooms',1),(20,'Onions',1),(21,'Olives',1),(22,'Peas',1),(23,'Porcini mushrooms',1),(24,'Portobello Mushrooms',1),(25,'Red beans',1),(26,'Red onions',1),(27,'Red peppers',1),(28,'Roast cauliflower',1),(29,'Roasted eggplant',1),(30,'Roasted Garlic',1),(31,'Roasted peppers',1),(32,'scallions',1),(33,'Shallots',1),(34,'Snow peas',1),(35,'Spinach',1),(36,'Sun dried tomatoes',1),(37,'Sweet corn',1),(38,'Watercress',1),(39,'Wild mushrooms',1),(40,'Yellow peppers',1),(41,'Yellow squash',1),(42,'Zucchini',1),(43,'Bacon',2),(44,'BBQ Chicken',2),(45,'Beef',2),(46,'Cajun Chicken',2),(47,'Chicken Masala',2),(48,'Chicken Tikka',2),(49,'Chorizo',2),(50,'Duck',2),(51,'Ham',2),(52,'Honey Cured Ham',2),(53,'Meatballs',2),(54,'Pepperoni',2),(55,'Proscuitto',2),(56,'Salami',2),(57,'Sausage',2),(58,'Serrano Ham',2),(59,'Turkey',2),(60,'Venison',2),(61,'Blue Cheese',3),(62,'Brie',3),(63,'Camembert',3),(64,'Chedar',3),(65,'Colby',3),(66,'Feta',3),(67,'Goat Cheese',3),(68,'Gorgonzola',3),(69,'Limburger',3),(70,'Manchego',3),(71,'Monterey Jack',3),(72,'Parmesan',3),(73,'Mozzarella',3),(74,'Muenster',3),(75,'Port de Salut',3),(76,'Provolone',3),(77,'Ricota',3),(78,'Romano',3),(79,'Roquefort',3),(80,'Smoked Gouda',3),(81,'Anchovies',4),(82,'Cajun Prawn',4),(83,'Crayfish',4),(84,'Lobster',4),(85,'Oysters',4),(86,'Prawns',4),(87,'Salmon',4),(88,'Shrimps',4),(89,'Smoked Salmon',4),(90,'Squid',4),(91,'Tuna',4),(92,'Whitebait',4),(93,'Basil',5),(94,'Bay Leaf',5),(95,'Cardamon',5),(96,'Chili Dried or Fresh',5),(97,'Chives',5),(98,'Cilantro',5),(99,'Coriander',5),(100,'Cumin',5),(101,'Dill',5),(102,'Garlic',5),(103,'Jalapeno Peppers',5),(104,'Laurel',5),(105,'Marjoram',5),(106,'Methi Leaves (aka Fenugreek)',5),(107,'Oregano',5),(108,'Parley',5),(109,'Pepper',5),(110,'Rosemary',5),(111,'Basil',5),(112,'Bay Leaf',5),(113,'Cardamon',5),(114,'Almonds',6),(115,'Peanuts',6),(116,'Pistachios',6),(117,'Pecans',6),(118,'Pine Nuts',6),(119,'Walnuts',6);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

SET FOREIGN_KEY_CHECKS=1;
