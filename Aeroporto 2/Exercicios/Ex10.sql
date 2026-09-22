-- 10. Faça uma consulta que retorne o nome da classe (ClassName), o número do voo, a quantidade máxima de assentos e o preço base (BasePrice), ordenado pelo nome da classe, número do voo e preço base.
SELECT c.ClassName, f.FlightID, fc.MaxSeats, fc.BasePrice
FROM class c, flight f, flightclass fc
WHERE
	fc.FlightID = f.FlightID AND
    fc.ClassID = c.ClassID
ORDER BY c.ClassName, f.FlightID, fc.BasePrice;