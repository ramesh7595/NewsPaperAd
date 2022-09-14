Create database [AdvertisementsManagement]
USE [AdvertisementsManagement];

 
 Select * from Users
Select * from Advertisement


Create table Users
(
UserId int Identity(1,1) primary key,
UserName varchar(500) not null,
UserEmail varchar(500) not null,
UserPassword varchar(500) not null,
UserContact varchar(500),
)


Create table Advertisement 
( 
AdID int Identity(1,1) primary key,
AdTitle varchar(1000) not null,
AdContent varchar(8000) not null,
AdDate DateTime not null,
PaymentMode varchar(100),
PaymentStatus varchar(100),
)



INSERT INTO Users VAlUES('Adadmin','anu@gmail.com','Admin@123','9876543210')
INSERT INTO Users VAlUES('Aarthi','aarthi@gmail.com','Aarthi@234','9876543990')



drop table Users
drop table Advertisement





INSERT INTO Advertisement VAlUES('From home offer to homeowner','flyhomes buyers get complete support to bugeting and buying.','27 Aug 2022','UPI','Paid')




 -----------------------------------Login and reg-------------------------------------------------------------------
  CREATE PROC usp_Login(@UserEmail varchar(500), @UserPassword varchar(500))
  AS
  BEGIN
  SELECT * FROM Users WHERE UserEmail = @UserEmail AND UserPassword = @UserPassword;
  END

  CREATE PROC usp_Registration(@UserName varchar(500), @UserEmail varchar(500), @UserPassword varchar(500), @UserContact varchar(500))
  AS
  BEGIN
  INSERT INTO Users(UserName,UserEmail,UserPassword,UserContact) VALUES(@UserName,@UserEmail,@UserPassword,@UserContact)
  END

  CREATE PROC usp_PostAd(@AdTitle varchar(1000), @AdContent varchar(8000) , @AdDate DateTime , @PaymentMode varchar(100),@PaymentStatus varchar(100))
  AS
  BEGIN
  INSERT INTO Advertisement(AdTitle,AdContent,AdDate,PaymentMode,PaymentStatus) VALUES(@AdTitle,@AdContent,@AdDate,@PaymentMode,@PaymentStatus)
  END
   

