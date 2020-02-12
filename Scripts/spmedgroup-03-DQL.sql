select Email,Senha,TipoUsuario.TituloTipoUsuario from Usuario
inner join TipoUsuario on Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario

select DataConsulta, Descricao, Paciente.Nome as PacienteNome, Medico.Nome as MedicoNome, Situacao.Realizado as Situacao from Consulta
inner join Situacao on Consulta.IdSituacao = Situacao.IdSituacao
inner join Paciente on Consulta.IdPaciente = Paciente.IdPaciente
inner join Medico on Consulta.IdMedico = Medico.IdMedico

select Nome,CRM,Usuario.Email,Clinica.RazaoSocial,Especialidade.TituloEspecialidade from Medico
inner join Usuario on Medico.IdUsuario = Usuario.IdUsuario
inner join Clinica on Medico.IdClinica = Clinica.IdClinica
inner join Especialidade on Medico.IdEspecialidade = Especialidade.IdEspecialidade

select * from Paciente

select * from Especialidade
select * from TipoUsuario
select * from Clinica

select count (*) as Medicos from Medico 
where Medico.IdEspecialidade = 2

select convert (varchar,getdate(),1)

exec IdadePaciente;