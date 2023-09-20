-- backup and recovery
/*
Caminho para a pasta de dump 
C:\Program Files\MySQL\MySQL Server 8.0\bin\

Criação de backup  
mysqldump --user root --password --databases ecommerce > ecommerce_backup.sql

Criação do recovery
mysql --user root --password < ecommerce_backup.sql

Criação de backup de todos os bancos de dados
mysqldump -u root -p --all-databases > all_databases_backup.sql

Criação de backup com routines e triggers
mysqldump --routines --triggers -u root -p  ecommerce > ecommerce_backup.sql
*/
