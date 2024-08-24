CREATE DATABASE ProjetoBD2;
USE ProjetoBD2;

CREATE TABLE Usuario (
	ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) DEFAULT ('Não informado') UNIQUE,
    Dt_Nasc DATE DEFAULT ('Não informada'),
    Sexo VARCHAR(10) DEFAULT ('Prefiro não dizer'),
    fk_GeneroFav INT NOT NULL
);

CREATE TABLE Filme (
    ID_Filme INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    Ano YEAR NOT NULL,
    Sinopse TEXT DEFAULT ('Sem sinopse'),
    fk_ID_Genero INT NOT NULL,
    fk_ID_Diretor INT DEFAULT ('Desconhecido'),
    fk_ID_Estudio INT DEFAULT ('Desconhecido')
);

CREATE TABLE Genero (
    ID_Genero INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Diretor (
    ID_Diretor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Dt_Nasc DATE DEFAULT ('Desconhecida'),
    Nacionalidade VARCHAR(50) DEFAULT ('Desconhecida')
);

CREATE TABLE Estudio (
    ID_Estudio INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Local VARCHAR(50) DEFAULT ('Desconhecido'),
    Fundacao YEAR DEFAULT ('Desconhecida')
);

CREATE TABLE Ator (
    ID_Ator INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Sexo VARCHAR(10) DEFAULT ('Não informado'),
    Dt_Nasc DATE DEFAULT ('Não informada'),
    Nacionalidade VARCHAR(50) DEFAULT ('Não informada')
);

CREATE TABLE Avalia (
    ID_Avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    Nota INT NOT NULL,
    Dt_Avaliacao DATE,
    Comentario TEXT,
    fk_ID_Usuario INT NOT NULL,
    fk_ID_Filme INT NOT NULL
);

CREATE TABLE Elenco (
    ID_Atuacao INT AUTO_INCREMENT PRIMARY KEY,
    fk_ID_Filme INT NOT NULL,
    fk_ID_Ator INT NOT NULL,
    UNIQUE (fk_ID_Filme, fk_ID_Ator)
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_GeneroFav)
    REFERENCES Genero (ID_Genero)
    ON DELETE RESTRICT;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_2
    FOREIGN KEY (fk_ID_Genero)
    REFERENCES Genero (ID_Genero)
    ON DELETE RESTRICT;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_3
    FOREIGN KEY (fk_ID_Diretor)
    REFERENCES Diretor (ID_Diretor)
    ON DELETE RESTRICT;
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_4
    FOREIGN KEY (fk_ID_Estudio)
    REFERENCES Estudio (ID_Estudio)
    ON DELETE RESTRICT;
 
ALTER TABLE Avalia ADD CONSTRAINT FK_Avalia_2
    FOREIGN KEY (fk_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Avalia ADD CONSTRAINT FK_Avalia_3
    FOREIGN KEY (fk_ID_Filme)
    REFERENCES Filme (ID_Filme)
    ON DELETE RESTRICT;
 
ALTER TABLE Elenco ADD CONSTRAINT FK_Elenco_2
    FOREIGN KEY (fk_ID_Filme)
    REFERENCES Filme (ID_Filme)
    ON DELETE RESTRICT;
 
ALTER TABLE Elenco ADD CONSTRAINT FK_Elenco_3
    FOREIGN KEY (fk_ID_Ator)
    REFERENCES Ator (ID_Ator)
    ON DELETE RESTRICT;
    
INSERT INTO Genero (Nome) VALUES
	('Comédia'), ('Ação'), ('Drama'), ('Aventura'), ('Suspense'), ('Romance'), ('Faroeste'), ('Musical'), ('Terror'), ('Ficção Científica'), ('Fantasia'), ('Animação'), ('Documentário'), ('Thriller'), ('Espionagem');
    
SELECT * FROM Genero;

INSERT INTO Usuario (Nome, Email, Dt_Nasc, Sexo, fk_GeneroFav) VALUES
	('Ana Clara', 'anacl4ra@gmail.com', STR_TO_DATE('22/03/1998', '%d/%m/%Y'), 'Feminino', 3),
	('Paulo Sérgio', 'paulin433@gmail.com', STR_TO_DATE('06/05/2004', '%d/%m/%Y'), 'Masculino', 6),
    ('Carlos', 'carlosppd@yahoo.com', STR_TO_DATE('30/01/1989', '%d/%m/%Y'), 'Masculino', 1),
    ('Pedro Mendes', 'pedromendes12@gmail.com', STR_TO_DATE('15/10/2002', '%d/%m/%Y'), 'Masculino', 8),
    ('Enzo', NULL, STR_TO_DATE('27/08/2005', '%d/%m/%Y'), 'Masculino', 1),
    ('Vitória Freitas', 'vickfrei30@gmail.com', STR_TO_DATE('02/07/2001', '%d/%m/%Y'), 'Feminino', 11),
    ('Rai Alvez', 'raialveees@hotmail.com', STR_TO_DATE('28/11/2000', '%d/%m/%Y'), NULL, 2),
	('Roberta', 'robertavascons2@yahoo.com', STR_TO_DATE('25/02/1981', '%d/%m/%Y'), 'Feminino', 15),
    ('Thiago Prestes', 'th1agoPrr@gmail.com', STR_TO_DATE('08/02/2003', '%d/%m/%Y'), 'Masculino', 1),
    ('Julia Campos', 'jucamp56@gmail.com', NULL, 'Feminino', 12),
    ('Pedro Gustavo', 'pedrokaguuu@gmail.com', STR_TO_DATE('11/09/2004', '%d/%m/%Y'), 'Masculino', 10),
    ('Sky Barbosa', 'skyyybarbie@gmail.com', STR_TO_DATE('26/06/2006', '%d/%m/%Y'), NULL, 2),
    ('Paulo', 'matiaspaulo38@hotmail.com', STR_TO_DATE('01/12/1998', '%d/%m/%Y'), 'Masculino', 13),
    ('Amanda Carvalho', 'mandscarvalho@gmail.com', STR_TO_DATE('14/03/2002', '%d/%m/%Y'), 'Feminino', 3),
    ('Luiz Antônio', 'luiz006kubrick@gmail.com', STR_TO_DATE('08/05/2001', '%d/%m/%Y'), 'Masculino', 14);
    
SELECT * FROM Usuario;

INSERT INTO Diretor (Nome, Dt_Nasc, Nacionalidade) VALUES
	('Greta Gerwig', STR_TO_DATE('04/08/1983', '%d/%m/%Y'), 'Norte-americana'),
    ('Christopher Nolan', STR_TO_DATE('30/07/1970', '%d/%m/%Y'), 'Britânico'),
    ('Quentin Tarantino', STR_TO_DATE('27/03/1963', '%d/%m/%Y'), 'Norte-americano'),
    ('Danny Philippou', STR_TO_DATE('13/11/1992', '%d/%m/%Y'), 'Australiano'),
    ('Bong Joon-ho', STR_TO_DATE('14/09/1969', '%d/%m/%Y'), 'Sul-coreano'),
    ('Peter Ramsey', STR_TO_DATE('23/12/1962', '%d/%m/%Y'), 'Norte-americano'),
    ('Joseph Kosinski', STR_TO_DATE('03/05/1974', '%d/%m/%Y'), 'Norte-americano'),
    ('Daniel Kwan', STR_TO_DATE('10/02/1988', '%d/%m/%Y'), 'Norte-americano'),
    ('Stanley Kubrick', STR_TO_DATE('26/07/1928', '%d/%m/%Y'), 'Norte-americano'),
    ('Steven Spielberg', STR_TO_DATE('18/12/1946', '%d/%m/%Y'), 'Norte-americano'),
    ('Francis Lawrence', STR_TO_DATE('26/03/1971', '%d/%m/%Y'), 'Austríaco'),
    ('Chloé Zhao', STR_TO_DATE('31/03/1982', '%d/%m/%Y'), 'Chinesa'),
    ('Andy Muschietti', STR_TO_DATE('26/08/1973', '%d/%m/%Y'), 'Argentino'),
    ('George Lucas', STR_TO_DATE('14/05/1944', '%d/%m/%Y'), 'Norte-americano'),
    ('Guillermo del Toro', STR_TO_DATE('09/10/1964', '%d/%m/%Y'), 'Mexicano');
    
SELECT * FROM Diretor;

INSERT INTO Estudio (Nome, Local, Fundacao) VALUES
	('Mattel Films', 'Califórnia, EUA', 2013),
    ('Warner Bros.', 'Califórnia, EUA', 1923),
    ('Universal Pictures', 'Nova Iorque, EUA', 1912),
    ('Miramax', 'Nova Iorque, EUA', 1979),
    ('Causeway Films', 'Sydney, Austrália', 2014),
    ('A24', 'Nova Iorque, EUA', 2012),
    ('CJ E&M', 'Seul, Coreia do Sul', 2011),
    ('Sony Pictures', 'Califórnia, EUA', 1987),
    ('Paramount Pictures', 'Los Angeles, EUA', 1912),
    ('Studio Ghibli', 'Tóquio, Japão', 1985),
    ('Lionsgate Films', 'Santa Mônica, EUA', 1997),
    ('Marvel Studios', 'Nova Iorque, EUA', 1993),
    ('New Line Cinema', 'Califórnia, EUA', 1967),
    ('Lucasfilm', 'Califórnia, EUA', 1971),
    ('Netflix Animation', 'Califórnia, EUA', 2018);
    
SELECT * FROM Estudio;

INSERT INTO Filme (Titulo, Ano, Sinopse, fk_ID_Genero, fk_ID_Diretor, fk_ID_Estudio) VALUES
	('Barbie', 2023, 'Depois de ser expulsa da Barbieland por ser uma boneca de aparência menos do que perfeita, Barbie parte para o mundo humano em busca da verdadeira felicidade.', 1, 1, 2),
    ('Oppenheimer', 2023, 'O físico J. Robert Oppenheimer trabalha com uma equipe de cientistas durante o Projeto Manhattan, levando ao desenvolvimento da bomba atômica.', 3, 2, 3),
    ('Kill Bill - Volume 1', 2003, 'A ex-assassina conhecida apenas como Noiva acorda de um coma de quatro anos decidida a se vingar de Bill, seu ex-amante e chefe, que tentou matá-la no dia do casamento.', 2, 3, 4),
    ('Talk to Me', 2023, 'Um grupo de amigos descobre uma mão embalsamada que lhes permite conjurar espíritos. Viciado na emoção, um deles vai longe demais e abre a porta para o mundo espiritual.', 9, 4, 5),
    ('Parasita', 2019, 'Toda a família de Ki-taek está desempregada, vivendo em um porão sujo e apertado. Por obra do acaso, ele começa a dar aulas de inglês para uma garota de família rica.', 14, 5, 7),
    ('Homem-Aranha no Aranhaverso', 2019, 'Após ser atingido por uma teia radioativa, Miles Morales, um jovem negro do Brooklyn, se torna o Homem-Aranha, inspirado no legado do já falecido Peter Parker.', 12, 6, 8),
    ('Top Gun: Maverick', 2022, 'Depois de mais de 30 anos de serviço como um dos principais aviadores da Marinha, Pete "Maverick" Mitchell está de volta, rompendo os limites como um piloto de testes corajoso.', 2, 7, 9),
    ('Tudo em Todo o Lugar ao Mesmo Tempo', 2022, 'Uma ruptura interdimensional bagunça a realidade e uma inesperada heroína precisa usar seus novos poderes para lutar contra os perigos bizarros do multiverso.', 10, 8, 6),
    ('O Iluminado', 1980, 'Jack Torrance se torna caseiro de inverno do isolado Hotel Overlook, nas montanhas do Colorado, na esperança de curar seu bloqueio de escritor. Ele se instala com a esposa Wendy e o filho Danny, que é atormentando por premonições.', 9, 9, 2),
    ('Jogador Nº 1', 2018, 'Em 2045, Wade Watts, assim como o resto da humanidade, prefere a realidade virtual do jogo OASIS ao mundo real. James Halliday, o excêntrico criador do jogo, morre e deixa sua fortuna inestimável para a primeira pessoa que descobrir a chave de um quebra-cabeça diabólico que ele arquitetou.', 10, 10, 2),
    ('Jogos Vorazes - Em Chamas', 2013, 'Após saírem vencedores da última edição dos Jogos Vorazes, as atitudes desafiadoras de Katniss e Peeta acabam inspirando uma rebelião contra a opressiva Capital.', 2, 11, 11),
    ('Eternos', 2021, 'Os Eternos são uma raça de seres imortais que viveram durante a antiguidade da Terra, moldando sua história e suas civilizações enquanto batalhavam os malignos Deviantes.', 11, 12, 12),
    ('It - A Coisa', 2017, 'Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade. Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos.', 9, 13, 13),
    ('Star Wars: Episódio I – A Ameaça Fantasma', 1999, 'Obi-Wan e seu mentor embarcam em uma perigosa aventura na tentativa de salvar o planeta das garras de Darth Sidious. Durante a viagem, eles conhecem um habilidoso menino e decidem treiná-lo para se tornar um Jedi.', 10, 14, 14),
    ('Pinóquio', 2022, 'O desejo de um pai solitário dá vida magicamente a um boneco de madeira, seu nome é Pinóquio. Confuso por ser tão diferente das outras crianças, Pinóquio foge de casa para encontrar seu lugar no mundo e se depara com perigo e aventura.', 11, 15, 15);
    
SELECT * FROM Filme;

INSERT INTO Avalia (Nota, Dt_Avaliacao, Comentario, fk_ID_Usuario, fk_ID_Filme) VALUES
	(8, STR_TO_DATE('05/09/2022', '%d/%m/%Y'), NULL, 8, 9),
    (6, STR_TO_DATE('20/10/2023', '%d/%m/%Y'), 'Não consegui sentir tanto medo com o filme e não gostei do final, mas é mediano', 10, 4),
    (9, STR_TO_DATE('08/09/2023', '%d/%m/%Y'), 'Acho que foi a melhor animação que já vi, adorei o estilo totalmente diferente que criaram.', 12, 6),
    (7, STR_TO_DATE('12/02/2023', '%d/%m/%Y'), 'Gostei, só achei um pouco monótono', 4, 12),
    (9, STR_TO_DATE('09/10/2023', '%d/%m/%Y'), 'AMEI!! Melhor terror de 2023', 6, 4),
    (0, STR_TO_DATE('20/08/2023', '%d/%m/%Y'), 'ODIEI', 5, 1),
    (8, STR_TO_DATE('22/08/2023', '%d/%m/%Y'), 'Filmasso!', 3, 2),
    (5, STR_TO_DATE('12/11/2022', '%d/%m/%Y'), 'Não entendi nada desse filme, mas parece bem feito. Minha filha que falou pra eu assistir.', 8, 5),
    (9, STR_TO_DATE('20/12/2022', '%d/%m/%Y'), 'Sou apaixonado por Star Wars <3', 15, 14),
    (9, STR_TO_DATE('04/05/2023', '%d/%m/%Y'), 'Um dos melhores filmes de terror, amo os personagens.', 1, 13),
    (7, STR_TO_DATE('30/07/2023', '%d/%m/%Y'), NULL, 9, 9),
    (9, STR_TO_DATE('06/09/2023', '%d/%m/%Y'), 'Mereceu o oscar que ganhou <3', 7, 8),
    (2, STR_TO_DATE('21/08/2023', '%d/%m/%Y'), 'Filme chato', 10, 7),
    (9, STR_TO_DATE('23/10/2023', '%d/%m/%Y'), 'QUE FILME F*D4', 11, 2),
    (8, STR_TO_DATE('15/10/2023', '%d/%m/%Y'), 'Filme divertido demais, muito legal de assistir com a família e amigos.', 2, 10);
    
SELECT * FROM Avalia;

INSERT INTO Ator (Nome, Sexo, Dt_Nasc, Nacionalidade) VALUES
	('Margot Robbie', 'Feminino', STR_TO_DATE('02/07/1990', '%d/%m/%Y'), 'Australiana'),
    ('Robert Downey Jr.', 'Masculino', STR_TO_DATE('04/04/1965', '%d/%m/%Y'), 'Norte-americano'),
    ('Cillian Murphy', 'Masculino', STR_TO_DATE('25/05/1976', '%d/%m/%Y'), 'Irlandês'),
    ('Uma Thurman', 'Feminino', STR_TO_DATE('29/04/1970', '%d/%m/%Y'), 'Norte-americana'),
    ('Sophie Wilde', 'Feminino', STR_TO_DATE('05/07/1997', '%d/%m/%Y'), 'Australiana'),
    ('Tom Cruise', 'Masculino', STR_TO_DATE('03/07/1962', '%d/%m/%Y'), 'Norte-americano'),
    ('Michelle Yeoh', 'Feminino', STR_TO_DATE('06/08/1962', '%d/%m/%Y'), 'Malaia-chinesa'),
    ('Ke Huy Quan', 'Masculino', STR_TO_DATE('20/08/1971', '%d/%m/%Y'), 'Vietnamita'),
    ('Jack Nicholson', 'Masculino', STR_TO_DATE('22/04/1937', '%d/%m/%Y'), 'Norte-americano'),
    ('Tye Sheridan', 'Masculino', STR_TO_DATE('11/11/1996', '%d/%m/%Y'), 'Norte-americano'),
    ('Jennifer Lawrence', 'Feminino', STR_TO_DATE('15/08/1990', '%d/%m/%Y'), 'Norte-americana'),
    ('Kit Harington', 'Masculino', STR_TO_DATE('26/12/1986', '%d/%m/%Y'), 'Britânico'),
    ('Angelina Jolie', 'Feminino', STR_TO_DATE('04/06/1975', '%d/%m/%Y'), 'Norte-americana'),
    ('Bill Skarsgård', 'Masculino', STR_TO_DATE('09/08/1990', '%d/%m/%Y'), 'Sueco'),
    ('Natalie Portman', 'Feminino', STR_TO_DATE('09/06/1981', '%d/%m/%Y'), 'Israelense-americana');
    
SELECT * FROM Ator;

INSERT INTO Elenco (fk_ID_Filme, fk_ID_Ator) VALUES
	(1, 1), (2, 2), (2, 3), (3, 4), (4, 5), (7, 6), (8, 7), (8, 8), (9, 9), (10, 10), (11, 11), (12, 12), (12, 13), (13, 14), (14, 15);
    
SELECT * FROM Elenco;

SELECT F.Titulo AS Filme, F.Ano AS 'Data de Lançamento', ROUND(AVG(A.Nota), 1) AS Nota, COUNT(A.ID_Avaliacao) AS 'Quantidade de avaliações'
FROM Filme AS F LEFT JOIN Avalia AS A
ON (F.ID_Filme = A.fk_ID_Filme)
GROUP BY F.ID_Filme
ORDER BY Nota DESC;

SELECT G.Nome AS Gênero, COUNT(F.fk_ID_Genero) AS 'Filmes neste gênero',
		(SELECT COUNT(*)
		 FROM Usuario AS U
         WHERE U.fk_GeneroFav = G.ID_Genero) 'Quantidade de usuários que gostam deste gênero'
FROM Genero AS G LEFT JOIN Filme AS F
ON (G.ID_Genero = F.fk_ID_Genero)
GROUP BY G.ID_Genero
ORDER BY COUNT(F.fk_ID_Genero) DESC;

SELECT U.Nome AS Usuário, COUNT(A.ID_avaliacao) AS 'Total de avaliações feitas', F.Titulo AS Filme, A.Nota AS 'Nota do usuário'
FROM Usuario AS U LEFT JOIN Avalia AS A ON (U.ID_Usuario = A.fk_ID_Usuario)
	 LEFT JOIN Filme AS F ON (A.fk_ID_Filme = F.ID_Filme)
GROUP BY U.ID_Usuario, F.ID_Filme;

SELECT U.Nome AS 'Usuário', T.TotalAvaliacoes AS 'Total de avaliações feitas', F.Titulo AS Filme, A.Nota AS 'Nota do usuário'
FROM Usuario AS U JOIN
    (
		SELECT fk_ID_Usuario, COUNT(*) AS TotalAvaliacoes
        FROM Avalia
        GROUP BY fk_ID_Usuario
    ) AS T ON (U.ID_Usuario = T.fk_ID_Usuario)
	LEFT JOIN Avalia AS A ON (U.ID_Usuario = A.fk_ID_Usuario)
	LEFT JOIN Filme AS F ON (A.fk_ID_Filme = F.ID_Filme)
ORDER BY T.TotalAvaliacoes DESC, U.Nome;

SELECT 
    F.Titulo AS 'Título do Filme',
    G.Nome AS 'Gênero',
    D.Nome AS 'Diretor',
    E.Nome AS 'Estúdio'
FROM Filme AS F
INNER JOIN Genero AS G ON F.fk_ID_Genero = G.ID_Genero
INNER JOIN Diretor AS D ON F.fk_ID_Diretor = D.ID_Diretor
INNER JOIN Estudio AS E ON F.fk_ID_Estudio = E.ID_Estudio;

SELECT
    U.Nome AS 'Usuário',
    F.Titulo AS 'Filme',
    A.Nota AS 'Nota do Usuário',
    A.Comentario AS 'Comentário'
FROM Avalia AS A
INNER JOIN Usuario AS U ON A.fk_ID_Usuario = U.ID_Usuario
INNER JOIN Filme AS F ON A.fk_ID_Filme = F.ID_Filme
WHERE A.fk_ID_Filme = 4; -- ID do filme desejado

SELECT
    F.Titulo AS 'Filme',
    A.Nome AS 'Nome do Ator',
    A.Sexo AS 'Sexo',
    DATE_FORMAT(A.Dt_Nasc, '%d/%m/%Y') AS 'Data de Nascimento',
    A.Nacionalidade AS 'Nacionalidade',
    TIMESTAMPDIFF(YEAR, A.Dt_Nasc, NOW()) AS Idade
FROM Ator AS A
INNER JOIN Elenco AS E ON A.ID_Ator = E.fk_ID_Ator
INNER JOIN Filme AS F ON E.fk_ID_Filme = F.ID_Filme
WHERE E.fk_ID_Filme = 1; -- ID do filme desejado

DELIMITER $$
CREATE PROCEDURE CalculaMediaAvaliacao(IN ID_Filme INT, OUT MediaAvaliacao FLOAT, OUT NomeFilme VARCHAR(50))
BEGIN
    SELECT ROUND(AVG(A.Nota), 1) INTO MediaAvaliacao
    FROM Avalia AS A
    WHERE A.fk_ID_Filme = ID_Filme;
    
    SELECT F.Titulo INTO NomeFilme
    FROM Filme AS F
    WHERE F.ID_Filme = ID_Filme;
END $$
DELIMITER ;
-- Exemplo de chamada
CALL CalculaMediaAvaliacao(1, @MediaAvaliacao, @NomeFilme);
SELECT @NomeFilme AS 'Nome do Filme', @MediaAvaliacao AS 'Média de Avaliação';

DELIMITER $$
CREATE TRIGGER ValidarNota BEFORE INSERT ON Avalia FOR EACH ROW
BEGIN
    IF NEW.Nota < 0 OR NEW.Nota > 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ocorreu um erro! Não é possível fazer uma avaliação com esse valor.';
    END IF;
END$$
DELIMITER ;
INSERT INTO Avalia (Nota, fk_ID_Usuario, fk_ID_Filme) VALUES (13, 1, 3); -- Exemplo inválido
INSERT INTO Avalia (Nota, fk_ID_Usuario, fk_ID_Filme) VALUES (9, 1, 3); -- Exemplo válido
