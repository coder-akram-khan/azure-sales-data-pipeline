CREATE VIEW dbo.vAccounts AS
SELECT *
FROM OPENROWSET(
    BULK 'https://azureeastus2st.blob.core.windows.net/transformed-data/accounts.csv/part-00000-tid-2328707637150566875-8d69944b-53f9-4a04-a0c6-322d64122ecf-23-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION ='2.0',
    HEADER_ROW= TRUE

) AS rows;

SELECT *
FROM dbo.vAccounts;

CREATE VIEW dbo.vData_dictionary AS
SELECT *
FROM OPENROWSET(
    BULK 'https://azureeastus2st.blob.core.windows.net/transformed-data/data_dictionary.csv/part-00000-tid-103899248669600615-7adcf876-634e-4868-8020-51903a8946d7-24-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION ='2.0',
    HEADER_ROW= TRUE,
    FIELDTERMINATOR = ',',
    FIELDQUOTE =''

) AS rows;

CREATE VIEW dbo.vProducts AS
SELECT *
FROM OPENROWSET(
    BULK 'https://azureeastus2st.blob.core.windows.net/transformed-data/products.csv/part-00000-tid-4197198238791775681-bb413b80-970b-4dcc-b739-9bd6b2e83bd5-25-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION ='2.0',
    HEADER_ROW= TRUE,
    FIELDTERMINATOR = ',',
    FIELDQUOTE =''

) AS rows;

CREATE VIEW dbo.vSales_pipeline AS
SELECT *
FROM OPENROWSET(
    BULK 'https://azureeastus2st.blob.core.windows.net/transformed-data/sales_pipeline.csv/part-00000-tid-5388128221794862509-ca58d344-6427-4cad-a321-31b66522cf83-26-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION ='2.0',
    HEADER_ROW= TRUE,
    FIELDTERMINATOR = ',',
    FIELDQUOTE =''

) AS rows;

CREATE VIEW dbo.vSales_teams AS
SELECT *
FROM OPENROWSET(
    BULK 'https://azureeastus2st.blob.core.windows.net/transformed-data/sales_teams.csv/part-00000-tid-2824607055266144774-f1fbefee-d3b7-4a7e-a79d-1258894dd138-27-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION ='2.0',
    HEADER_ROW= TRUE,
    FIELDTERMINATOR = ',',
    FIELDQUOTE =''

) AS rows;






SELECT * FROM dbo.vSales_pipeline;

SELECT sales_agent, close_value
FROM dbo.vSales_pipeline
WHERE
close_value>2000
ORDER BY close_value DESC;


SELECT product, close_value 
FROM dbo.vSales_pipeline
ORDER BY close_value DESC;

























