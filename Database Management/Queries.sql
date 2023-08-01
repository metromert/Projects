-- IS 503 - Fall 2020
-- Project queries
-- Student(s): Mert Mecit

---- INSERT
-- Inserts real data to family table.
INSERT INTO Family(name, year, orderr, named_scientist) VALUES ('Macroscelididae', 1836, 1, 14),('Potamogalidae', 1865, 2, 15),('Tenrecidae', 1821, 2, 16),('Chrysochloridae', 1825, 2, 16),('Orycteropodidae', 1821, 3, 16),('Pliohyracidae', 1899, 4, 17),('Procaviidae', 1869, 4, 3),('Numidotheriidae', 1992, 5, 18),('Barytheriidae', 1906, 5, 19),('Deinotheriidae', 1845, 5, 14),('Elephantidae', 1821, 5, 16),('Stegodontidae', 1918, 5, 17),('Anancidae', 1922, 5, 20),('Gomphotheriidae', 1922, 5, 20),('Amebelodontidae', 1927, 5, 21),('Choerolophodontidae', 1976, 5, 22),('Dugongidae', 1821, 6, 16),('Trichechidae', 1872, 6, 23),('Prorastomidae', NULL, 6, NULL),('Protosirenidae', NULL, 6, NULL),('Cyclopedidae', 1924, 7, 24),('Myrmecophagidae', 1825, 7, 16),('Megalocnidae', 2019, 7, NULL),('Bradypodidae', 1825, 7, 7),('Megalonychidae', 1855, 7, 25),('Choloepodidae', 2019, 7, 26),('Mylodontidae', 1872, 7, 23),('Protobradyidae', 1902, 8, 27),('Peltephilidae', 1894, 8, 27),('Paleopeltidae', 1895, 8, 27),('Panochthidae', 1927, 8, NULL),('Pampatheriidae', 1954, 8, 28),('Pachyarmatheriidae', 2018, 8, 29),('Dasypodidae', 1821, 8, 16),('Chlamyphoridae', 1850, 8, 14),('Tupaiidae', 1825, 9, 16),('Ptilocercidae', 1913, 9, 30),('Plagiomenidae', 1918, 10, 31),('Mixodectidae', 1883, 10, 32),('Cynocephalidae', 1945, 10, 33),('Cheirogaleidae', 1873, 11, 16),('Daubentoniidae', 1863, 11, 16),('Indriidae', 1828, 11, 34),('Galagidae', 1825, 11, 16),('Tarsiidae', 1825, 11, 16),('Callitrichidae', 1903, 11, 35),('Pitheciidae', 1865, 11, 36),('Cercopithecidae', 1821, 11, 16),('Hylobatidae', 1870, 11, 16),('Hominidae', 1825, 11, 16),('Leporidae', 1817, 12, 37),('Ochotonidae', 1897, 12, 35),('Anomaluridae', 1849, 13, 25),('Castoridae', 1820, 13, 38),('Heteromyidae', 1868, 13, 16),('Ctenodactylidae', 1853, 13, 25),('Bathyergidae', 1841, 13, 39),('Caviidae', 1818, 13, 37),('Dinomyidae', 1873, 13, 40),('Diatomyidae', 1997, 13, 41),('Dipodidae', 1817, 13, 37),('Muridae', 1811, 13, 4),('Sciuridae', 1817, 13, 37),('Amphilemuridae', 1953, 14, NULL),('Nesophontidae', 1916, 14, 42),('Nyctitheriidae', NULL, 14, NULL),('Solenodontidae', 1817, 14, 37),('Talpidae', 1814, 14, 37),('Soricidae', 1814, 14, 37),('Erinaceidae', 1814, 14, 37),('Pteropodidae', 1821, 15, 16),('Hipposideridae', 1891, 15, 43),('Rhinolophidae', 1825, 15, 16),('Emballonuridae', 1855, 15, 25),('Phyllostomidae', 1825, 15, 16),('Molossidae', 1855, 15, 25),('Vespertilionidae', 1821, 15, 16),('Eurotamanduidae', 1994, 16, 44),('Eomanidae', 2003, 16, 45),('Manidae', 1821, 16, 16),('Patriomanidae', 1998, 16, 44),('Canidae', 1817, 17, 37),('Ursidae', 1817, 17, 37),('Mustelidae', 1817, 17, 37),('Procyonidae', 1850, 17, 14),('Viverridae', 1821, 17, 16),('Hyaenidae', 1821, 17, 16),('Felidae', 1817, 17, 37),('Otariidae', 1825, 17, 16),('Phocidae', 1821, 17, 16),('Odobenidae', 1880, 17, 44),('Camelidae', 1821, 18, 16),('Suidae', 1821, 18, 16),('Tayassuidae', 1897, 18, 47),('Entelodontidae', 1883, 18, 43),('Choeropotamidae', 1845, 18, 13),('Hippopotamidae', 1821, 18, 16),('Pakicetidae', 1996, 18, 48),('Eschrichtiidae', 1951, 18, 49),('Delphinidae', 1821, 18, 16),('Bovidae', 1821, 18, 16),('Cervidae', 1820, 18, 50),('Giraffidae', 1821, 18, 16),('Tragulidae', 1864, 18, 51),('Ziphiidae', 1850, 18, 16),('Equidae', 1821, 19, 16),('Tapiridae', 1821, 19, 16),('Rhinocerotidae', 1845, 19, 13),('Chalicotheriidae', 1872, 19, 23),('Phenacodontidae', 1881, 19, 32);

---- UPDATE
-- Updates gram values as ounces and centimeter values as inches.
UPDATE Species
SET avg_weight = avg_weight*0.04, avg_height = avg_height*0.4;


---- DELETE
-- Deletes family entries that does not have any genus.
DELETE FROM Family
WHERE family_id NOT IN (SELECT family
					FROM genus);

---- COMPLEX QUERIES
--- For group member 1

/*
When I was doing homework, I noticed that this area is dominated by scientist from 4 countries: Germany, France, UK, and USA. 
While choosing lower-level animals from upper-level ones, I was unbiased, I lastly looked at the scientist that discovered it. 
According to the internet, those countries are somewhat similar in their forest areas, they have similar number of trees in terms of 
percentage. I wonder, which of those countries’ scientists are mostly productive in discovery of arboreal (tree-climbing) animals in my 
database. As for species in same genus, generally same scientist is named, I will look for genus. I will use all of the countries but 
result is likely to be France, Germany, UK, or USA is the best in discovering arboreal mammals.
*/

SELECT nationality, count(*)
FROM scientist s, genus g1
WHERE s.scientist_id = g1.named_scientist 
		AND g1.genus_id IN (SELECT genus_id
						FROM genus g2, species s2
						WHERE s2.genus = g2.genus_id
                        AND behavior LIKE '%arboreal%')
GROUP BY nationality;

/*
Throughout the project, I have realized that generally species are named earlier than genus, genus are named earlier than families and so on.
I believe this is mostly because of the fact that first there was only species and in time new taxonomy levels emerged that needs to be named.
I wonder, where in the world are those, whose genus names are given before their species name, can be found. I will return only top 5 regions 
that has the most species that is named after genus. I did that query because I assumed in the developed regions such as North America and 
Europe, taxonomy would be more developed and there will not be much difference between the genus and species’ discovery times. 
*/

SELECT r.name, count(*)
FROM Found_in F, Region R
WHERE r.region_id = f.region_id
	AND EXISTS
		(SELECT s2.species_id
		FROM species s2
		WHERE f.species_id = s2.species_id
			AND EXISTS (SELECT s.species_id
						FROM species s, genus g
						WHERE s.genus = g.genus_id
						AND s2.species_id = s.species_id
						AND s.year > g.year))
GROUP BY r.name
ORDER BY count(*) DESC
LIMIT 5;

