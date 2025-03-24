-- Insert data into galaxy table (6 rows)
INSERT INTO galaxy (name, age_in_millions_of_years, description, number_of_stars_in_millions) VALUES
('Milky Way', 13600, 'Our home galaxy, a barred spiral galaxy', 200000),
('Andromeda', 10000, 'Nearest major galaxy to the Milky Way', 1000000),
('Triangulum', 10000, 'Third-largest galaxy in the Local Group', 40000),
('Messier 87', 13000, 'Supergiant elliptical galaxy with a supermassive black hole', 2400000),
('Whirlpool Galaxy', 400, 'Interacting grand-design spiral galaxy', 100000),
('Sombrero Galaxy', 13250, 'Bright spiral galaxy with a prominent dust lane', 100000);

-- Insert data into star table (6 rows)
INSERT INTO star (name, age_in_millions_of_years, description, number_of_planets, galaxy_id) VALUES
('Sun', 4600, 'G-type main-sequence star at the center of our Solar System', 8, 1),
('Proxima Centauri', 4850, 'Red dwarf star closest to the Sun', 3, 1),
('Betelgeuse', 8, 'Red supergiant star in the constellation Orion', 0, 1),
('Sirius', 230, 'Brightest star in the night sky', 2, 1),
('Alpha Centauri A', 6000, 'Primary star of the Alpha Centauri system', 5, 1),
('Vega', 455, 'Bright blue star in the constellation Lyra', 4, 1);

-- Insert data into planet table (12 rows)
INSERT INTO planet (name, age_in_millions_of_years, description, number_of_moons, has_water, star_id) VALUES
('Mercury', 4500, 'Smallest planet in our Solar System', 0, FALSE, 1),
('Venus', 4500, 'Second planet from the Sun with thick atmosphere', 0, FALSE, 1),
('Earth', 4500, 'Our home planet, third from the Sun', 1, TRUE, 1),
('Mars', 4500, 'Fourth planet from the Sun, known as the Red Planet', 2, TRUE, 1),
('Jupiter', 4500, 'Largest planet in our Solar System', 79, TRUE, 1),
('Saturn', 4500, 'Known for its prominent ring system', 82, TRUE, 1),
('Uranus', 4500, 'Ice giant with a tilted axis of rotation', 27, TRUE, 1),
('Neptune', 4500, 'Farthest known planet from the Sun', 14, TRUE, 1),
('Proxima Centauri b', 4850, 'Potentially habitable exoplanet orbiting Proxima Centauri', 0, TRUE, 2),
('Proxima Centauri c', 4850, 'Super-Earth exoplanet orbiting Proxima Centauri', 1, FALSE, 2),
('Sirius b Companion', 230, 'Hypothetical planet orbiting Sirius', 3, TRUE, 4),
('Vega Prime', 455, 'Hypothetical exoplanet orbiting Vega', 2, TRUE, 6);

-- Insert data into moon table (20 rows)
INSERT INTO moon (name, age_in_millions_of_years, description, has_water, distance_from_planet, planet_id) VALUES
('Moon', 4500, 'Earth''s only natural satellite', TRUE, 384400.00, 3),
('Phobos', 4500, 'Larger and innermost of Mars''s two moons', FALSE, 9376.00, 4),
('Deimos', 4500, 'Smaller and outermost of Mars''s two moons', FALSE, 23463.00, 4),
('Io', 4500, 'Volcanically active moon of Jupiter', FALSE, 421700.00, 5),
('Europa', 4500, 'Moon of Jupiter with subsurface ocean', TRUE, 671034.00, 5),
('Ganymede', 4500, 'Largest moon in the Solar System', TRUE, 1070400.00, 5),
('Callisto', 4500, 'Second-largest moon of Jupiter', TRUE, 1882700.00, 5),
('Titan', 4500, 'Largest moon of Saturn with thick atmosphere', TRUE, 1221870.00, 6),
('Enceladus', 4500, 'Moon of Saturn with subsurface ocean', TRUE, 238020.00, 6),
('Mimas', 4500, 'Moon of Saturn with large impact crater', FALSE, 185520.00, 6),
('Tethys', 4500, 'Mid-sized moon of Saturn', FALSE, 294619.00, 6),
('Dione', 4500, 'Moon of Saturn with water ice', TRUE, 377396.00, 6),
('Rhea', 4500, 'Second-largest moon of Saturn', FALSE, 527108.00, 6),
('Iapetus', 4500, 'Third-largest moon of Saturn', FALSE, 3560820.00, 6),
('Miranda', 4500, 'Smallest and innermost of Uranus''s five major moons', FALSE, 129390.00, 7),
('Ariel', 4500, 'Fourth-largest moon of Uranus', TRUE, 190900.00, 7),
('Umbriel', 4500, 'Third-largest moon of Uranus', FALSE, 266000.00, 7),
('Titania', 4500, 'Largest moon of Uranus', TRUE, 435910.00, 7),
('Triton', 4500, 'Largest moon of Neptune', TRUE, 354759.00, 8),
('Nereid', 4500, 'Third-largest moon of Neptune', FALSE, 5513818.00, 8);

-- Insert data into kind table (3 rows)
INSERT INTO kind (name, kind_description) VALUES
('Asteroid', 'Rocky objects orbiting the Sun that are too small to be planets'),
('Comet', 'Icy bodies that release gas and dust when they approach the Sun'),
('Dwarf Planet', 'Celestial body that orbits the Sun and has sufficient mass for gravity to make it round');

-- Insert data into other table (3 rows)
INSERT INTO other (name, age_in_millions_of_years, description, kind_id) VALUES
('Ceres', 4500, 'Largest object in the asteroid belt between Mars and Jupiter', 3),
('Halley''s Comet', 4500, 'Short-period comet visible from Earth every 75-76 years', 2),
('Pluto', 4500, 'Dwarf planet in the Kuiper belt', 3);