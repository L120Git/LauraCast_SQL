
--Consulta Práctica 

select b.nombre as MODELO, c.nombre_marca as MARCA, f.nombre_grupo as GRUPO_EMPRESARIAL , a.dt_compra as FECHA_DE_COMPRA, a.matricula,d.nombre as COLOR, a.total_kms as KILóMETROS,e.nombre_aseguradora as ASEGURADORA, e.num_poliza as Nº_POLIZA
from lauracastaño_bd_sql.coches  a 
inner join lauracastaño_bd_sql.modelos b on a.id_modelo =  b.id_modelo
inner join lauracastaño_bd_sql.marcas c on a.id_coche = c.id_coche
inner join lauracastaño_bd_sql.color_coches d on a.id_color = d.id_color 
inner join lauracastaño_bd_sql.seguros_coches e on a.id_seguro = e.id_seguro 
inner join lauracastaño_bd_sql.grupo_empresarial f on a.id_coche  = f.id_coche




--Consultas extra para prácticar

select c.nombre_marca as MARCA, b.nombre as MODELO, a.matricula,d.num_poliza, d.nombre_aseguradora as ASEGURADORA, CONCAT (d.precio_seguro,' ' , e.nombre ) as PRECIO_SEGURO
from  lauracastaño_bd_sql.coches  a 
inner join lauracastaño_bd_sql.modelos b on a.id_modelo = b.id_modelo 
inner join lauracastaño_bd_sql.marcas c on a.id_coche = c.id_coche
inner join lauracastaño_bd_sql.seguros_coches d on a.id_coche = d.id_coche 
inner join lauracastaño_bd_sql.monedas e on d.id_moneda = e.id_moneda 

 

select c.nombre_marca as MARCA, b.nombre as MODELO, a.matricula, d.dt_revision, d.kms_ultima_revision , concat (d.precio_revision,' ', e.nombre) as PRECIO_úLTIMA_REVISIóN  
from  lauracastaño_bd_sql.coches  a 
inner join lauracastaño_bd_sql.modelos b on a.id_modelo = b.id_modelo 
inner join lauracastaño_bd_sql.marcas c on a.id_coche = c.id_coche
inner join lauracastaño_bd_sql.revisiones_coches d on a.id_coche = d.id_coche 
inner join lauracastaño_bd_sql.monedas_revisiones e on d.id_moneda = e.id_moneda 






