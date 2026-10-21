-- 7. Mudar o tipo da coluna NomeMaq da tabela Maquina para VARCHAR(50).
PRAGMA foreign_keys = OFF;
BEGIN;

CREATE TABLE Maquina_novo (
    CodMaq INTEGER NOT NULL PRIMARY KEY,
    NomeMaq VARCHAR(50)
);

INSERT INTO Maquina_novo (CodMaq, NomeMaq)
SELECT CodMaq, NomeMaq
FROM Maquina;

DROP TABLE Maquina;
ALTER TABLE Maquina_novo RENAME TO Maquina;

COMMIT;
PRAGMA foreign_keys = ON;