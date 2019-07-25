
-- Création base de donnée / si existe déjà, supprimer !
DROP DATABASE IF EXISTS Bank;
CREATE database Bank;
use Bank;

-- Création table des clients
CREATE TABLE T_Customers(
	IdCust				int(4)		PRIMARY KEY AUTO_INCREMENT,
	Name				varchar(20)	NOT NULL,
	FirstName			varchar(20)	NOT NULL
);


-- Ajouter des clients à votre table
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES ( 1, 'Anderson','Neo' );
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES ( 2, 'Skywalker','Luke' );
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES ( 3, 'Plissken','Snake' );
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES ( 4, 'Ripley','Ellen' );
INSERT INTO T_Customers(IdCust, Name, FirstName) VALUES ( 5, 'Bond','James' );

-- Création table des comptes
CREATE TABLE T_Accounts (
	NumAt				int(4)		  PRIMARY KEY AUTO_INCREMENT,
	DateCreation		        date   	          NOT NULL,
	Balance			        float(50)	  NOT NULL,
	IdCust                          int(4)            NOT NULL REFERENCES T_Customers(IdCust)
	 
) ;

-- Ajouter des comptes
INSERT INTO T_Accounts (NumAt, DateCreation, Balance,IdCust) VALUES ( 100, curdate(),89000,1 );
INSERT INTO T_Accounts (NumAt, DateCreation, Balance,IdCust) VALUES ( 110, curdate(),8000,1 );
INSERT INTO T_Accounts (NumAt, DateCreation, Balance,IdCust) VALUES ( 200, curdate(),30000,2 );
INSERT INTO T_Accounts (NumAt, DateCreation, Balance,IdCust) VALUES ( 300, curdate(),70000, 3 );
INSERT INTO T_Accounts (NumAt, DateCreation, Balance,IdCust) VALUES ( 400,curdate(), 88000,4  );
INSERT INTO T_Accounts (NumAt, DateCreation, Balance,IdCust) VALUES ( 500, curdate(), 44000,5  );

-- Création table des opérations
CREATE TABLE T_Operations (
    NumOp           int(4)         PRIMARY KEY AUTO_INCREMENT,
    Amount          float(20)      NOT NULL,
    NumAt           int(4)         NOT NULL REFERENCES T_Accounts(NumAt)
    
) ;

-- Ajouter des opérations
INSERT INTO T_Operations  (NumOp,Amount,NumAt)   VALUES (21,250,100);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)   VALUES (22,150,100);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (23,400,200);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (24,380,200);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (25,150,300);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (26,350,300);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (27,220,400);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (28,220,400);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (29,340,500);
INSERT INTO T_Operations  (NumOp,Amount,NumAt)  VALUES (30,40,500);






