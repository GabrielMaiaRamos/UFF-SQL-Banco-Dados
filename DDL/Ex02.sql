-- 2. Adicionar restrição na tabela MaqProd, para que Tempo tenha que ser maior que 0.
PRAGMA foreign_keys = OFF;
BEGIN;

CREATE TABLE MaqProd_novo (
    CodMaq INTEGER NOT NULL,
    CodProd INTEGER NOT NULL,
    Tempo INTEGER CHECK (Tempo > 0),
    PRIMARY KEY (CodMaq, CodProd),
    FOREIGN KEY (CodMaq) REFERENCES Maquina (CodMaq),
    FOREIGN KEY (CodProd) REFERENCES Produto (CodProd)
);

INSERT INTO MaqProd_novo (CodMaq, CodProd, Tempo)
SELECT CodMaq, CodProd, Tempo
FROM MaqProd;

DROP TABLE MaqProd;
ALTER TABLE MaqProd_novo RENAME TO MaqProd;

COMMIT;
PRAGMA foreign_keys = ON;