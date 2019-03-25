#docker run -d -p 1433:1433 -e sa_password=Welcome2Docker! -e ACCEPT_EULA=Y --mount type=volume,source=myvolume,target=c:/DBs --mount type=bind,source=C:/Tools/Docker/SqlExpress/backup,target=c:/shared microsoft/mssql-server-windows-express

docker run -d -p 1433:1433 -e sa_password=Welcome2Docker! `
-e ACCEPT_EULA=Y `
-e attach_dbs="[{'dbName':'AdventureWorksLT2017','dbFiles':['C:\\DBs\\AdventureWorksLT2012.mdf','C:\\DBs\\AdventureWorksLT2012_log.ldf']}]" `
--mount type=volume,source=myvolume,target=c:/DBs `
microsoft/mssql-server-windows-express