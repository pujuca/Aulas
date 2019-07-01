-- 1
select * from usuario
where cidade = 'Parnaiba'

-- 2
select * from usuario
where idade < 18

-- 3
select usuario.nome
from usuario, grupo, usuariogrupo
where usuario.idUsuario = usuariogrupo.idUsuario and
      grupo.idGrupo = usuariogrupo.idGrupo and
      grupo.nomeGrupo = 'Professores'
      
-- 4
select nome
from usuario
where idade = (select max(idade) from usuario)

-- 5
select grupo.nomeGrupo, count(usuariogrupo.idGrupo)
from grupo, usuariogrupo
where grupo.idGrupo = usuariogrupo.idGrupo 
group by grupo.nomeGrupo

-- 6
select * 
from usuario
where idusuario not in (select idUsuario 
                        from usuariogrupo)

-- 7
select conteudo, userdestino
from mensagem, usuario
where usuario.idusuario = mensagem.userDestino and
      usuario.nome = 'Denival'

-- 8
select * from usuario
where idade > (select avg(idade) from usuario)

-- 9
create or replace view VwUsuarioGrupo as
select usuario.nome, usuario.cidade, usuario.idade, grupo.nomeGrupo
from usuario, usuariogrupo, grupo
where usuario.idUsuario =  usuariogrupo.idUsuario and
      grupo.idGrupo = usuarioGrupo.idGrupo
      
select * from vwUsuarioGrupo      

-- 10
select * from mensagem
order by data desc



      



