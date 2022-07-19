--- CREATE PROCEDURES 

CREATE FUNCTION function_name (p1 INT, p2 INT)
RETURNS INT AS $$
BEGIN
    RETURN
END;
$$ LANGUAGE plpgsql;


-- Ideia 1  Criar função que faz o calculo de entrega
-- Ia ser interessante se alterar os insert com dados de deliver sendo status canceled (Não houve entrega).
-- Esse fato constroi uma função mais complexa com CASE WHEN THEN. Se não tiver deliver time print algo. caso sim faça calculo.

UPDATE users SET user_pay = 1500 WHERE user_id = 1;

-- Ideia 2  Calculo de hour salary

--- CREATE TRIGGERS