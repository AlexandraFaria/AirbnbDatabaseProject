
-- Count of all data records for the whole database.
USE `alexandrafariaAIRBNB`;
SELECT SUM(TABLE_ROWS) AS Total_Entries
   FROM INFORMATION_SCHEMA.TABLES
   WHERE TABLE_SCHEMA = 'alexandrafariaAIRBNB';
   
-- Show Table Name with corresponding number of table rows.
USE `alexandrafariaAIRBNB`;
SELECT table_name, table_rows
   FROM INFORMATION_SCHEMA.TABLES
   WHERE TABLE_SCHEMA = 'alexandrafariaAIRBNB';

-- Total Count of Tables
USE `alexandrafariaAIRBNB`;
SELECT COUNT(table_name) AS Total_Tables
   FROM INFORMATION_SCHEMA.TABLES
   WHERE TABLE_SCHEMA = 'alexandrafariaAIRBNB';
   
   
-- Size of Database
SELECT table_schema AS 'alexandrafariaAIRBNB', 
ROUND(SUM(DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024, 2) AS "Size (MB)" 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = 'alexandrafariaAIRBNB';


