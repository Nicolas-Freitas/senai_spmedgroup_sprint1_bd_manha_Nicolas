create database spmedgroup
go
use spmedgroup
go
create table Clinica (
	IdClinica	int primary key identity,
	RazaoSocial	varchar (200) not null,
	Endereco	varchar (200) not null
);
go

create table TipoUsuario (
	IdTipoUsuario	int primary key identity,
	TituloTipoUsuario varchar (200) not null
);
go

create table Usuario (
	IdUsuario int primary key identity,
	Email varchar (100) not null,
	Senha varchar (100) not null,
	IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
);
go
create table Especialidade (
	IdEspecialidade		int primary key identity,
	TituloEspecialidade	varchar (100) not null
);
go

create table Medico (
	IdMedico	int primary key identity,
	Nome varchar (100) not null,
	CRM			varchar (100),
	IdUsuario int foreign key references Usuario (IdUsuario),
	IdClinica int foreign key references Clinica (IdClinica) ,
	IdEspecialidade int foreign key references Especialidade (IdEspecialidade)
);
go

create table Paciente (
	IdPaciente	int primary key identity,
	Nome varchar (100) not null,
	CPF		 varchar (50),
	RG		 varchar (50),
	Endereco varchar (100),
	DataNascimento date,
	Telefone varchar(50),
	IdUsuario int foreign key references Usuario (IdUsuario)
);
go

create table Situacao (
	IdSituacao int primary key identity,
	Realizado varchar(10) not null,
);
go

create table Consulta (
	IdConsulta int primary key identity,
	DataConsulta datetime2,
	Descricao varchar(300),
	IdPaciente int foreign key references Paciente (IdPaciente),
	IdMedico int foreign key references Medico (IdMedico),
	IdSituacao int foreign key references Situacao (IdSituacao)
);
go