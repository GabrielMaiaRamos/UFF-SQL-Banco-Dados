-- Preparação: apagar a tabela demo e criar as tabelas do esquema.
PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS demo;

CREATE TABLE Maquina (
    CodMaq INTEGER NOT NULL PRIMARY KEY,
    NomeMaq VARCHAR(30)
);

CREATE TABLE Produto (
    CodProd INTEGER NOT NULL PRIMARY KEY,
    DescrProd VARCHAR(30),
    Peso FLOAT
);

CREATE TABLE MaqProd (
    CodMaq INTEGER NOT NULL,
    CodProd INTEGER NOT NULL,
    Tempo INTEGER,
    PRIMARY KEY (CodMaq, CodProd),
    FOREIGN KEY (CodMaq) REFERENCES Maquina (CodMaq),
    FOREIGN KEY (CodProd) REFERENCES Produto (CodProd)
);

CREATE TABLE ComposProd (
    CodProdComposto INTEGER NOT NULL,
    CodProdComponente INTEGER NOT NULL,
    Quant INTEGER,
    PRIMARY KEY (CodProdComposto, CodProdComponente),
    FOREIGN KEY (CodProdComposto) REFERENCES Produto (CodProd),
    FOREIGN KEY (CodProdComponente) REFERENCES Produto (CodProd)
);

PRAGMA foreign_keys = ON;