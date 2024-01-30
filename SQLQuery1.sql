



create table Tour 
(
id int not null identity(1,1),
TicketCount nvarchar(10) not null,
Names nvarchar(10) not null,
Descripstion nvarchar(10) not null,
ImagePreview varbinary(max) not null,
Price nvarchar(10) not null,
isActual nvarchar(10) not null




)


alter table Tour 
add primary key (id)











create table Hotel 
(
id int not null identity(1,1),
Names nvarchar(10) not null,
CountOfStact nvarchar(10) not null,
CountryCode nvarchar(10) not null,
ImageSource varbinary(max),




)


alter table Hotel
add primary key (id)






create table Typee
(
id int not null identity(1,1),
Names nvarchar(10) not null,
Descriptions nvarchar(10) not null,




)


alter table Typee
add primary key (id)




create table Country
(
Code nvarchar(10) not null ,
Names nvarchar(10) not null,
Descriptions nvarchar(10) not null,




)





alter table Country
add primary key (Code)




create table HotelComment
(
id int not null identity(1,1),
Hotelid int not null,
Texts nvarchar(10) not null,
Author nvarchar(10) not null,
CreationDate nvarchar(10) not null




)




alter table HotelComment
add primary key (id)



create table TypeOfTours
(
TourId int not null ,
TypeId int not null,
Kostils nvarchar(10),




)


alter table TypeOfTours
add primary key (TourId ,TypeId )




alter table Hotel
add Constraint lol_1
foreign key (CountryCode)
references Country(Code)



















alter table HotelComment
add Constraint lol_3
foreign key (Hotelid)
references Hotel(id)




alter table TypeOfTours
add Constraint lol_4
foreign key (TourId)
references Tour(id)




alter table TypeOfTours
add Constraint lol_5
foreign key (TypeId)
references Typee(id)





























