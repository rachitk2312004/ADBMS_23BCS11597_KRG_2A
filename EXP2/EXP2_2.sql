
CREATE TABLE Year_tbl (
    ID INT,
    YEAR INT,
    NPV INT
);

INSERT INTO Year_tbl VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0);

CREATE TABLE Queries_tbl (
    ID INT,
    YEAR INT
);

INSERT INTO Queries_tbl VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);

SELECT 
    Q.ID, 
    Q.YEAR,
    ISNULL(Y.NPV, 0) AS NPV
FROM Queries_tbl Q
LEFT JOIN Year_tbl Y
    ON Q.ID = Y.ID AND Q.YEAR = Y.YEAR
ORDER BY Q.ID, Q.YEAR;
