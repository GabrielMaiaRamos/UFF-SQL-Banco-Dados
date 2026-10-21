-- 3. Excluir a restrição adicionada no exercício 1.
PRAGMA foreign_keys = OFF;
BEGIN;

CREATE TABLE Produto_novo (
    CodProd INTEGER NOT NULL PRIMARY KEY,
    DescrProd VARCHAR(30),
    Peso FLOAT
);

INSERT INTO Produto_novo (CodProd, DescrProd, Peso)
SELECT CodProd, DescrProd, Peso
FROM Produto;

DROP TABLE Produto;
ALTER TABLE Produto_novo RENAME TO Produto;

COMMIT;
PRAGMA foreign_keys = ON;