
--Consulta Práctica 

select b.nombre, c.nombre_marca, f.nombre_grupo , a.dt_compra, a.matricula,d.nombre, a.total_kms,e.nombre_aseguradora, e.num_poliza
from lauracastaño_bd_sql.coches  a 
inner join lauracastaño_bd_sql.modelos b on a.id_modelo =  b.id_modelo
inner join lauracastaño_bd_sql.marcas c on a.id_coche = c.id_coche
inner join lauracastaño_bd_sql.color_coches d on a.id_color = d.id_color 
inner join lauracastaño_bd_sql.seguros_coches e on a.id_seguro = e.id_seguro 
inner join lauracastaño_bd_sql.grupo_empresarial f on a.id_coche  = f.id_coche 




--Consultas extra para prácticar

select d.nombre_marca, b.nombre_aseguradora, b.precio_seguro, c.nombre 
from  lauracastaño_bd_sql.coches  a 
inner join lauracastaño_bd_sql.seguros_coches b on a.id_coche = b.id_coche 
inner join lauracastaño_bd_sql.monedas c on b.id_moneda = c.id_moneda 
inner join lauracastaño_bd_sql.marcas d on a.id_coche = d.id_coche 


select b.nombre_marca, c.dt_revision, c.kms_ultima_revision , c.precio_revision, d.nombre  
from lauracastaño_bd_sql.coches  a
inner join lauracastaño_bd_sql.marcas b on a.id_coche = b.id_coche 
inner join lauracastaño_bd_sql.revisiones_coches c on a.id_coche = c.id_coche 
inner join lauracastaño_bd_sql.monedas_revisiones d on c.id_moneda = d.id_moneda 







