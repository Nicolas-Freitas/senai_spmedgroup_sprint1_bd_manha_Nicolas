insert into Clinica (RazaoSocial,Endereco)
values	('SP Medical Group','Avenida Rua')
go
insert into TipoUsuario (TituloTipoUsuario)
values  ('Paciente'),
		('Médico'),
		('ADM')
go

insert into Especialidade (TituloEspecialidade)
values  ('Pediatria'),
		('Odontologia'),
		('Gastrenterologia'),
		('Psiquiatria')
go

insert into Usuario (Email, Senha, IdTipoUsuario)
values  ('ademir@email.com', '123456789', 3),
		('rogerio@email.com', '123456789', 1),
		('paulo@email.com', '12345678', 1),
		('eduardo@email.com', '123456789', 2),
		('carlos@email.com', '123456789', 2),
		('anaotaria@email.com', '123456789', 2),
		('nicolas@email.com', '123456789', 2)

insert into Paciente (Nome,CPF,RG,Endereco,DataNascimento,Telefone,IdUsuario)
values  ('Rogerio','95532363838', '442050306', 'Rua Benedicto Leite', '2002-05-19', '11982973275',2),
		('Paulo','06615358867', '120185684', 'Rua Doutor José Foz', '2002-06-19', '11982973275',3)
go
insert into Medico (Nome,CRM,IdClinica,IdEspecialidade,IdUsuario)
values	('Eduardo','3234213',1,2,3),
		('Carlos','5133123',1,1,4),
		('Ana','5648274',1,4,5),
		('Nicolas','4824950',1,2,6)
go

insert into Situacao (Realizado)
values	('Concluido'),
		('Aguardando'),
		('Cancelado')
go

insert into Consulta (DataConsulta,Descricao,IdPaciente,IdMedico,IdSituacao)
values  ('30/01/2019','Queixa de dores',2,3,1),
		('30/01/2018','Dores',1,4,2)
go