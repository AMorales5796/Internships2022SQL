CREATE TABLE internships
(
  title TEXT,
  location TEXT,
  company TEXT,
  fulltime boolean,
  beingPayed boolean,
  insurance boolean,
  otherBenefits boolean,
  datePosted DATE,
  levelOfEducation TEXT
);

INSERT INTO internships values
('*Customer Service, Florist Assistant & Internship', 'Moreno Valley', 'Garden of Roses', true, false, false, false, date('2022-05-04'), 'High school diploma or GED'),
('*Botany Resource Assistant Intern', 'San Bernardino', 'MobilizeGreen', true, true, false, true, date('2022-01-01'), 'Bachelors Degree in Biological Sciences, Botany, Ecology, Geography/GIS, Natural Resource Management, Wildlife Biology, and related fields'),
('*Botanical Intern, Cycad Collections', 'San Marino', 'The Huntington', false, false, false, false, date('2022-01-01'), 'None but some garden maintenance experience required'),
('*Museum Scientist', 'Berkeley', 'Society of Herbium Curators', true, true, false, false, date('2022-06-01'), 'Higher education'),
('*Rental Monitor at UC Berkeley Botanical Garden', 'Berkeley', 'UC Berkeley', true, true, false, true, date('2022-01-01'), 'Experience working at events (with caterer, etc.) desirable'),
('*Horticulture/Botany Summer Internship', 'San Clemente', 'Kelly', true, true, false, false, date('2022-05-02'), 'Completed high school, Associate Degree or B.Sc. in Horticulture, Agronomy or Plant Breeding is a plus'),
('*Horticultural Exterminator Ipm','Anaheim', 'DisneyLand', true, true, false, false, date('2022-03-01'), 'Degree in Horticulture, Entomology, Soil Science, or equivalent'),
('*Arborist Trainee Internship', 'San Diego', 'Davey Tree', true, true, false, false, date('2022-05-16'), 'Studying Arboriculture, Urban Forestry, Horticulture, Landscape Design, Forestry or related discipline'),
('*Botanist','Georgetown', 'Forest Service', true, true, true, false, date('2022-03-15'),'A masters or equivalent graduate degree or 2 full years of progressively higher level graduate education leading to such a degree, if related'),
('*Specialist internship', 'Carlsbad','Conservation Legacy', true, true, true, false, date('2022-05-14'), 'An undergraduate degree in biology, ecology, or a related field');
  
.print
.print 'Internships in order by date'
SELECT
   *
FROM
   internships
ORDER BY
    datePosted ASC;

.print
.print 'Interships in order by name'
SELECT
   *
FROM
   internships
ORDER BY
    title ASC;

.print
.print 'Potential internships that offer pay'

SELECT
  title,
  beingPayed
FROM
  internships
where
  beingPayed = true;

.print
.print 'Potential internships that offer insurance'

SELECT
  title,
  insurance
FROM
  internships
where
  insurance = true;

.print
.print 'ALL INTERNSHIPS'

SELECT
*
FROM
  internships;
