SELECT Regisseur.Vorname, Regisseur.Nachname, COUNT(Film.RegisseurID) AS Anzahl_der_Filme
FROM Regisseur 
LEFT JOIN Film ON Regisseur.RegisseurID = Film.RegisseurID GROUP BY Regisseur.Nachname


SELECT*FROM Film;
SELECT*FROM Regisseur;

// Portfolio
// 1
SELECT DISTINCT Jahr FROM Film; 

//2
SELECT*FROM Film ORDER BY Länge DESC;

//3
SELECT Film.Titel, Regisseur.Vorname, Regisseur.Nachname 
FROM Film
Inner Join Regisseur ON Film.RegisseurID = Regisseur.RegisseurID;

//4
SELECT ROUND(AVG(Länge)) AS Durchschnittliche_Länge
FROM Film;

//5 
SELECT Regisseur.Nachname, Count(Film.RegisseurID) AS Anzahl_der_Filme
FROM Regisseur
Left Join Film ON Regisseur.RegisseurID = Film.RegisseurID
Group by Regisseur.Nachname; 

//6
SELECT Jahr, Count(*) AS Anzahl_der_Filme
FROM Film
Group by Jahr
Order by Anzahl_der_Filme DESC 
Limit 2; 

//7 --- insgesamte Länge aller Filme 
SELECT SUM(Länge) AS Insgesamte_Länge
FROM Film; 
 
//8 --- Anzahl der Filme jeses Jahr 
SELECT Jahr, COUNT(*) AS Anzahl_Film 
FROM Film
Group by Jahr; 