BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "User" (
	"Nome"	TEXT,
	"Idade"	TEXT,
	"Email"	TEXT,
	"Telefone"	TEXT,
	"Endereco"	TEXT,
	"Descricao"	TEXT,
	"ID_User"	INTEGER NOT NULL,
	PRIMARY KEY("ID_User")
);
CREATE TABLE IF NOT EXISTS "Experiencia Profissional" (
	"Nome da Empresa"	TEXT,
	"Nome do Cargo"	TEXT,
	"Data Inicio"	TEXT,
	"Data Fim"	TEXT,
	"Descricao"	TEXT,
	"ID_Experiencia Profissional"	INTEGER NOT NULL,
	"ID_User"	INTEGER,
	PRIMARY KEY("ID_Experiencia Profissional")
);
CREATE TABLE IF NOT EXISTS "Personalidade" (
	"Nome da Personalidade"	TEXT,
	"Nivel"	TEXT,
	"Descricao"	TEXT,
	"ID_Personalidade"	INTEGER NOT NULL,
	"ID_User"	INTEGER,
	PRIMARY KEY("ID_Personalidade"),
	FOREIGN KEY("ID_User") REFERENCES "User"("ID_User")
);
CREATE TABLE IF NOT EXISTS "Conquistas" (
	"Nome da Conquistas"	TEXT,
	"Data"	TEXT,
	"Descricao"	TEXT,
	"ID_Conquistas"	INTEGER NOT NULL,
	"ID_User"	INTEGER,
	PRIMARY KEY("ID_Conquistas"),
	FOREIGN KEY("ID_User") REFERENCES "User"("ID_User")
);
CREATE TABLE IF NOT EXISTS "Habilidades" (
	"Nome das Habilidades"	TEXT,
	"Nivel Atingido"	TEXT,
	"Descricao"	TEXT,
	"ID_Habilidades"	INTEGER NOT NULL,
	"ID_User"	INTEGER,
	PRIMARY KEY("ID_Habilidades"),
	FOREIGN KEY("ID_User") REFERENCES "User"("ID_User")
);
CREATE TABLE IF NOT EXISTS "Formacao Academica" (
	"Nome da Fundacao"	TEXT,
	"Nome do Curso"	TEXT,
	"Data Inicio"	TEXT,
	"Data Final"	TEXT,
	"Descricao"	TEXT,
	"ID_Formacao Academica"	INTEGER NOT NULL,
	"ID_User"	INTEGER,
	PRIMARY KEY("ID_Formacao Academica")
);
CREATE UNIQUE INDEX IF NOT EXISTS "pk_Personalidade" ON "Personalidade" (
	"ID_Personalidade"
);
COMMIT;
