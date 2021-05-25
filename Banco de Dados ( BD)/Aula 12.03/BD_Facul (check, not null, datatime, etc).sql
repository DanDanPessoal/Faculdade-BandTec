create database faculdade;

use faculdade;

-- Exibir a data e horário do sistema
select sysdate();

-- Exibir a data e horário do sistema com -3:00:00 na data
select addtime(sysdate(), '-3:00:00');

create table sensor(

	id_sensor int primary key auto_increment,
    nomeSensor varchar(100),
    localSensor varchar(50),
    temperatura float not null, -- decimal(5,2) 999,99
	dataTemp datetime, -- default current_timestamp,
    statusSensor varchar(30),
    check (statusSensor = 'ativo' or statusSensor = 'inativo')

) auto_increment = 10000; -- começar o auto_increment do id de um certo ponto

	-- Float: 7 Digitos (32 - bits)
	-- Double: 15 Digitos (64 - bits)
	-- Decimal: 28 Digitos (128 bits)alter

-- excluir check realizado na criação da table

insert into sensor(nomeSensor, localSensor, temperatura, dataTemp, statusSensor)
 values ('sensor1', 'casa', 30, sysdate() , 'ativo'),
		('sensor2', 'açougue', 12, '2021-02-11	 21:54:33' , 'inativo'),
		('sensor3', 'frigorifico', -5, addtime(sysdate(), '-3:00:00') , 'ativo'),
        ('sensor4', 'geladeira', 2, '2021-03-12 22:00:00' , 'ativo');

select * from sensor;
