﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'

BEGIN


INSERT INTO CATEGORY (CatID, CatName) VALUES
(1, 'Furniture'),
(2, 'Office Supplies'),
(3, 'Technology');

INSERT INTO REGION (Region) VALUES
('South'),
('Central'),
('West'),
('East'),
('North');

INSERT INTO SEGMENT (SegID, SegName) VALUES
(1, 'Consumer'),
(2, 'Corporate'),
(3, 'Home Office');

INSERT INTO Shipping (ShipMode) VALUES
('Second Class'),
('Standard Class'),
('First Class'),
('Overnight Express');

INSERT INTO CUSTOMER (CustID, FullName, SegID,  Country, City, [State], PostCode, Region) VALUES
('CG-12520', 'Claire Gute', 1, 'United States', 'Henderson', 'Oklahoma', 42420, 'Central'),
('DV-13045', 'Darrin Van Huff', 2, 'United States', 'Los Angeles', 'California', 90036, 'West'),
('SO-20335', 'Sean ODonnel', 1, 'United States', 'Fort Lauderdale', 'Florida', 33311, 'South'),
('BH-11710', 'Brosina Hoffman', 3, 'United States', 'Los Angeles', 'California', 90032, 'West');

INSERT INTO PRODUCT (ProdID, CatID, [Description], UnitPrice) VALUES
('FUR-BO-10001798', 1, 'Bush Somerset Collection Bookcase', $261.96),
('FUR-CH-10000454', 3, 'Mitel 5320 IP Phone VoIP phone', $731.94),
('OFF-LA-10000240', 2, 'Self-Adhesive Address Labels for Typewriters by Universal', $14.62);

INSERT INTO [ORDER] (CustID, ProdID, OrderDate, Quantity, ShipDate, ShipMode) VALUES
('CG-12520', 'FUR-BO-10001798',	'2016-11-08', 2, '2016-11-11', 'Second Class'),
('CG-12520', 'FUR-CH-10000454', '2016-11-08', 3, '2016-11-11', 'Second Class'),
('CG-12520', 'OFF-LA-10000240', '2016-06-12', 2, '2016-06-16', 'Second Class'),
('DV-13045', 'OFF-LA-10000240', '2015-11-21', 2, '2015-11-26', 'Second Class'),
('DV-13045', 'OFF-LA-10000240', '2014-10-11', 1, '2014-10-15', 'Standard Class'),
('DV-13045', 'FUR-CH-10000454', '2016-11-12', 9, '2016-11-16', 'Standard Class'),
('SO-20335', 'OFF-LA-10000240', '2016-09-02', 5, '2016-09-08', 'Standard Class'),
('SO-20335', 'FUR-BO-10001798', '2017-08-25', 2, '2017-08-29', 'Overnight Express'),
('SO-20335', 'FUR-CH-10000454', '2017-06-22', 2, '2017-06-26', 'Standard Class'),
('SO-20335', 'FUR-BO-10001798', '2017-05-01', 3, '2017-05-02', 'First Class');

END;