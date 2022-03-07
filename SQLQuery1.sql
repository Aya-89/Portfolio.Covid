SELECT*FROM COVID_DEATHS 
SELECT*FROM COVIDVACCI


select location, date , total_cases , population ,total_deaths
from COVID..COVID_DEATHS

--LOOKING AT TOTAL CASES VS TOTAL DEATHS IN DIFFERENT COUNTRIES

select location, date , total_cases ,total_deaths ,(total_deaths /total_cases)*100 as Deathpercentage 
from COVID..COVID_DEATHS
where location='australia'

--looking at percentage of infection aganist population in Austraia

Select location, date , total_cases ,population , (total_cases/population)*100 as infectionpercentage
from COVID..COVID_DEATHS
where location='australia'

--Countries with Highest Infection Rate compared to Population

select location,population,max( total_cases)as countryhighestinfection ,Max((total_cases/population)*100) as  highestinfectionpercentage 
from COVID..COVID_DEATHS
group by location,population
order by countryhighestinfection desc

--countries with highest deaths rate compared to population

select location,population,max(total_deaths )as highestdeathsrate ,Max((total_deaths/population)*100) as highestdeathsratepercentage 
from COVID..COVID_DEATHS
group by location,population
order by highestdeathsratepercentage desc

-- Showing contintents with the highest death count per population

SELECT*FROM COVID..COVID_DEATHS

Select continent, MAX(cast(total_deaths as int)) as TotalDeathCount
From Covid..COVID_DEATHS
Where continent is not null 
Group by continent
order by TotalDeathCount desc

--LOOKING AT TOTAL CASES VS TOTAL DEATHS IN AUSTRALIA
select location, date , total_cases , population ,total_vaccinations
from COVID..COVIDVACCI

select location, date , total_cases ,total_vaccinations ,(total_vaccinations /total_cases)*100 as VACCINATIONRATE
from COVID..COVIDVACCI
where location='australia'
ORDER BY total_vaccinations ,VACCINATIONRATE DESC

SELECT COVID_DEATHS.total_cases ,COVID_DEATHS. ,COVID_DEATHS.location,COVID_DEATHS.date , COVID_DEATHS.population
FROM COVID..COVID_DEATHS continent
JOIN COVID..COVIDVACCI
ON COVID_DEATHS.location=
COVIDVACCI.location
and COVID_DEATHS.date =covidvacci.date
and COVID_DEATHS.population=COVIDVACCI.population
ORDER BY 3,4

























 