use master
go

--Drop and recreate 'DataWarehouse' database

IF EXISTS (Select 1 from sys.databases where name='DataWarehouse')
BEGIN
  Alter database set single_user with rollback immediate;
  drop database Datawarehouse;
end
go

create database DataWarehouse

use DataWarehouse

create schema bronze
go
create schema silver
go
create schema gold
go


 
