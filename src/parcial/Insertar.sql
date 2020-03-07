
DELIMITER $$
CREATE PROCEDURE insertar_Reporte(
IN _p_DNI VARCHAR (30),
IN _p_Monto NUMERIC (6,2),
IN _p_Multa  VARCHAR (30),
IN _p_Correo  VARCHAR (50),
OUT _P_confirm INT
)
BEGIN 
SET _p_ DNI = UPPER (_p_DNI);
SET _p_Monto = Monto;
SET _p_Multa = Multa;
SET _p_Correo = Correo;

SELECT FLOORT(1 + RAND() * 60) INTO _p_DNI;



INSERT INTO Reporte
(DNI,Monto,Multa,correo)
VALUES
(_v_DNI, _p_Monto,_p_Multa,_p_Correo);


IF ROW_COUNT() > 0 THEN
SET _p_confirm = 1;
ELSE
SET  _p_confirm = 0;
END IF;

END$$ 
DELIMITER ;