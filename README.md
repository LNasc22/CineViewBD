||||
| :- | :-: | -: |

**PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ**

PROJETO DE BANCO DE DADOS 

2ª PARTE

**CineView**

Equipe:

Ana Julia Rocha Cezanoski,

Léo Tony Zwieczykowski,

Lucas Nascimento da Silva,

Luiz Eduardo Leal de Oliveira.

Curitiba

Novembro de 2023
||||
| :- | :-: | -: |

Sumário

[1	Domínio de Aplicação para o Banco de Dados	3](#_toc393516977)

[1.1	Identificação do Projeto	3](#_toc2006750816)

[1.2	Tema do Projeto	3](#_toc1908440452)

[1.3	Usuários do sistema	3](#_toc672272216)

[1.4	Funcionalidade 1 do Projeto	3](#_toc1351567607)

[1.5	Funcionalidade 2 do Projeto	3](#_toc1281303573)

[2	Modelo Conceitual	4](#_toc42559530)

[3	Modelo Lógico (3FN)	5](#_toc2133822257)

[4	Modelo Lógico (3FN)	6](#_toc1392738563)

[5	Modelo Físico (3FN)	7](#_toc663449489)

[5.1	SQL para criação de tabelas e restrições	7](#_toc685451885)

[5.2	SQL para inserção de pelo menos 15 registros para cada tabela	10](#_toc1777438470)

[6	Consultas e Programação	17](#_toc1388994099)

[6.1	SQL para 3 consultas com AGREGAÇÃO de recuperação de dados	17](#_toc674087307)

[6.2	SQL para 3 consultas com IR (PK + FK) de recuperação de dados	19](#_toc559110447)

[6.3	1 Stored procedure	22](#_toc1123440608)

[6.4	1 Trigger	24](#_toc780368612)
||||
| :- | :-: | -: |

1. # <a name="_toc393516977"></a>**Domínio de Aplicação para o Banco de Dados**
   1. ## <a name="_toc2006750816"></a>**Identificação do Projeto**
      Nome Projeto: *CineView*

      Logomarca:

      ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.001.png)

   2. ## <a name="_toc1908440452"></a>**Tema do Projeto**
      Explicar em detalhes qual o objetivo do sistema que precisa de BD.

      A área de negócio do nosso sistema é a de avaliação de filmes, que combina entretenimento e recomendações personalizadas baseadas no gênero preferido dos usuários, para melhorar a experiência daqueles que amam cinema. Esse sistema permite que os usuários acessem várias informações sobre uma grande variedade de filmes, como títulos, ano de lançamento, sinopse, gênero do filme, diretor, estúdio, elenco e avaliações sobre ele, além de poderem avaliar os filmes que assistiram e compartilhar opiniões sobre. O usuário também pode pesquisar por gênero, diretor, estúdio e ator. O sistema manterá sempre um banco de dados atualizado e organizado de filmes e recomendações baseadas nos gêneros mais apreciados pelos usuário e nos filmes com melhores avaliações.
      
   3. ## <a name="_toc672272216"></a>**Usuários do sistema**  
      Indicar quais os potenciais usuários do sistema (usuário que precisar realizar LOGIN).

      A princípio terá 2 usuários: o *cliente*, que fará cadastro e utilizará o sistema, e o *administrador*, que será responsável por gerenciar todo o sistema, como na constante atualização do catálogo de filmes.
      
   4. ## **<a name="_toc1351567607"></a>Funcionalidade 1 do Projeto**
      Indicar uma funcionalidade (requisito funcional) que deve ser implementada para atender uma necessidade do usuário, utilizando os dados em BD.

      A primeira funcionalidade do projeto é a de cadastro do usuário e do administrador.
      
   5. ## **<a name="_toc1281303573"></a>Funcionalidade 2 do Projeto**
      Indicar uma funcionalidade (requisito funcional) que deve ser implementada para atender uma necessidade do usuário, utilizando os dados em BD.

      A segunda funcionalidade do projeto é a de o usuário conseguir fazer a avaliação de um filme, adicionando uma nota (de 0 a 9) para ele e um comentário.
      
||||
| :- | :-: | -: |

2. # <a name="_toc42559530"></a>**Modelo Conceitual**
   Imagem de boa resolução do Modelo Conceitual (**Modelo Entidade-Relacionamento - MER**) na **3FN**

   ![Diagrama](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.002.png)
   
||||
| :- | :-: | -: |

3. # <a name="_toc2133822257"></a>**Modelo Lógico (3FN)**
   Imagem de boa resolução do Modelo Lógico (**Modelo Relacional - MR**) na **3FN**, feito com o **brModelo**.

   ![DiagramaD](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.003.png)
   
4. # <a name="_toc1392738563"></a>**Modelo Lógico (3FN)**
   Imagem de boa resolução do Modelo Lógico (**Modelo Relacional - MR**) na **3FN**, feito com o **ENGENHARIA REVERSA do MySQL Workbench**.

   ![Interface gráfica do usuário, Diagrama](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.004.png)

||||
| :- | :-: | -: |

5. # <a name="_toc663449489"></a>**Modelo Físico (3FN)**
   1. ## <a name="_toc685451885"></a>**SQL para criação de tabelas e restrições** 
      ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.005.png)
      ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.006.png)
      ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.007.png)

   2. ## <a name="_toc1777438470"></a>**SQL para inserção de pelo menos 15 registros para cada tabela**  
      Importante: Indicar em imagens de boa resolução, o resultado de cada comando de INSERT.

      |<p>INSERT INTO Genero (Nome) VALUES</p><p> ('Comédia'), ('Ação'), ('Drama'), ('Aventura'), ('Suspense'), ('Romance'), ('Faroeste'), ('Musical'), ('Terror'), ('Ficção          Científica'), ('Fantasia'), ('Animação'), ('Documentário'), ('Thriller'), ('Espionagem');</p><p>    </p><p>SELECT \* FROM Genero;</p>|
      | :- |

      ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.008.png)
      
      |<p>INSERT INTO Usuario (Nome, Email, Dt\_Nasc, Sexo, fk\_GeneroFav) VALUES</p><p> ('Ana Clara', 'anacl4ra@gmail.com', STR\_TO\_DATE('22/03/1998', '%d/%m/%Y'), 'Feminino', 3),</p><p> ('Paulo Sérgio', 'paulin433@gmail.com', STR\_TO\_DATE('06/05/2004', '%d/%m/%Y'), 'Masculino', 6),</p><p> ('Carlos', 'carlosppd@yahoo.com', STR\_TO\_DATE('30/01/1989', '%d/%m/%Y'), 'Masculino', 1),</p><p> ('Pedro Mendes', 'pedromendes12@gmail.com', STR\_TO\_DATE('15/10/2002', '%d/%m/%Y'), 'Masculino', 8),</p><p> ('Enzo', NULL, STR\_TO\_DATE('27/08/2005', '%d/%m/%Y'), 'Masculino', 1),</p><p> ('Vitória Freitas', 'vickfrei30@gmail.com', STR\_TO\_DATE('02/07/2001', '%d/%m/%Y'), 'Feminino', 11),</p><p> ('Rai Alvez', 'raialveees@hotmail.com', STR\_TO\_DATE('28/11/2000', '%d/%m/%Y'), NULL, 2),</p><p> ('Roberta', 'robertavascons2@yahoo.com', STR\_TO\_DATE('25/02/1981', '%d/%m/%Y'), 'Feminino', 15),</p><p> ('Thiago Prestes', 'th1agoPrr@gmail.com', STR\_TO\_DATE('08/02/2003', '%d/%m/%Y'), 'Masculino', 1),</p><p> ('Julia Campos', 'jucamp56@gmail.com', NULL, 'Feminino', 12),</p><p> ('Pedro Gustavo', 'pedrokaguuu@gmail.com', STR\_TO\_DATE('11/09/2004', '%d/%m/%Y'), 'Masculino', 10),</p><p> ('Sky Barbosa', 'skyyybarbie@gmail.com', STR\_TO\_DATE('26/06/2006', '%d/%m/%Y'), NULL, 2),</p><p> ('Paulo', 'matiaspaulo38@hotmail.com', STR\_TO\_DATE('01/12/1998', '%d/%m/%Y'), 'Masculino', 13),</p><p> ('Amanda Carvalho', 'mandscarvalho@gmail.com', STR\_TO\_DATE('14/03/2002', '%d/%m/%Y'), 'Feminino', 3),</p><p> ('Luiz Antônio', 'luiz006kubrick@gmail.com', STR\_TO\_DATE('08/05/2001', '%d/%m/%Y'), 'Masculino', 14);</p><p>    </p><p>SELECT \* FROM Usuario;</p>|
      | :- |

      ![Interface gráfica do usuário, Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.009.png)

      |<p>INSERT INTO Diretor (Nome, Dt\_Nasc, Nacionalidade) VALUES</p><p> ('Greta Gerwig', STR\_TO\_DATE('04/08/1983', '%d/%m/%Y'), 'Norte-americana'),</p><p> ('Christopher Nolan', STR\_TO\_DATE('30/07/1970', '%d/%m/%Y'), 'Britânico'),</p><p> ('Quentin Tarantino', STR\_TO\_DATE('27/03/1963', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Danny Philippou', STR\_TO\_DATE('13/11/1992', '%d/%m/%Y'), 'Australiano'),</p><p> ('Bong Joon-ho', STR\_TO\_DATE('14/09/1969', '%d/%m/%Y'), 'Sul-coreano'),</p><p> ('Peter Ramsey', STR\_TO\_DATE('23/12/1962', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Joseph Kosinski', STR\_TO\_DATE('03/05/1974', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Daniel Kwan', STR\_TO\_DATE('10/02/1988', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Stanley Kubrick', STR\_TO\_DATE('26/07/1928', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Steven Spielberg', STR\_TO\_DATE('18/12/1946', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Francis Lawrence', STR\_TO\_DATE('26/03/1971', '%d/%m/%Y'), 'Austríaco'),</p><p> ('Chloé Zhao', STR\_TO\_DATE('31/03/1982', '%d/%m/%Y'), 'Chinesa'),</p><p> ('Andy Muschietti', STR\_TO\_DATE('26/08/1973', '%d/%m/%Y'), 'Argentino'),</p><p> ('George Lucas', STR\_TO\_DATE('14/05/1944', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Guillermo del Toro', STR\_TO\_DATE('09/10/1964', '%d/%m/%Y'), 'Mexicano');</p><p>    </p><p>SELECT \* FROM Diretor;</p>|
      | :- |

      ![Interface gráfica do usuário, Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.010.png)

      |<p>INSERT INTO Estudio (Nome, Local, Fundacao) VALUES </p><p> ('Mattel Films', 'Califórnia, EUA', 2013),</p><p> ('Warner Bros.', 'Califórnia, EUA', 1923),</p><p> ('Universal Pictures', 'Nova Iorque, EUA', 1912),</p><p> ('Miramax', 'Nova Iorque, EUA', 1979),</p><p> ('Causeway Films', 'Sydney, Austrália', 2014),</p><p> ('A24', 'Nova Iorque, EUA', 2012),</p><p> ('CJ E&M', 'Seul, Coreia do Sul', 2011),</p><p> ('Sony Pictures', 'Califórnia, EUA', 1987),</p><p> ('Paramount Pictures', 'Los Angeles, EUA', 1912),</p><p> ('Studio Ghibli', 'Tóquio, Japão', 1985),</p><p> ('Lionsgate Films', 'Santa Mônica, EUA', 1997),</p><p> ('Marvel Studios', 'Nova Iorque, EUA', 1993),</p><p> ('New Line Cinema', 'Califórnia, EUA', 1967),</p><p> ('Lucasfilm', 'Califórnia, EUA', 1971),</p><p> ('Netflix Animation', 'Califórnia, EUA', 2018);</p><p>    </p><p>SELECT \* FROM Estudio;</p>|
      | :- |

      ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.011.png)

      |<p>INSERT INTO Filme (Titulo, Ano, Sinopse, fk\_ID\_Genero, fk\_ID\_Diretor, fk\_ID\_Estudio) VALUES</p><p> ('Barbie', 2023, 'Depois de ser expulsa da Barbieland por ser uma boneca de aparência menos do que perfeita, Barbie parte para o mundo humano em busca da verdadeira felicidade.', 1, 1, 2),</p><p> ('Oppenheimer', 2023, 'O físico J. Robert Oppenheimer trabalha com uma equipe de cientistas durante o Projeto Manhattan, levando ao desenvolvimento da bomba atômica.', 3, 2, 3),</p><p> ('Kill Bill - Volume 1', 2003, 'A ex-assassina conhecida apenas como Noiva acorda de um coma de quatro anos decidida a se vingar de Bill, seu ex-amante e chefe, que tentou matá-la no dia do casamento.', 2, 3, 4),</p><p> ('Talk to Me', 2023, 'Um grupo de amigos descobre uma mão embalsamada que lhes permite conjurar espíritos. Viciado na emoção, um deles vai longe demais e abre a porta para o mundo espiritual.', 9, 4, 5),</p><p> ('Parasita', 2019, 'Toda a família de Ki-taek está desempregada, vivendo em um porão sujo e apertado. Por obra do acaso, ele começa a dar aulas de inglês para uma garota de família rica.', 14, 5, 7),</p><p> ('Homem-Aranha no Aranhaverso', 2019, 'Após ser atingido por uma teia radioativa, Miles Morales, um jovem negro do Brooklyn, se torna o Homem-Aranha, inspirado no legado do já falecido Peter Parker.', 12, 6, 8),</p><p> ('Top Gun: Maverick', 2022, 'Depois de mais de 30 anos de serviço como um dos principais aviadores da Marinha, Pete "Maverick" Mitchell está de volta, rompendo os limites como um piloto de testes corajoso.', 2, 7, 9),</p><p> ('Tudo em Todo o Lugar ao Mesmo Tempo', 2022, 'Uma ruptura interdimensional bagunça a realidade e uma inesperada heroína precisa usar seus novos poderes para lutar contra os perigos bizarros do multiverso.', 10, 8, 6),</p><p> ('O Iluminado', 1980, 'Jack Torrance se torna caseiro de inverno do isolado Hotel Overlook, nas montanhas do Colorado, na esperança de curar seu bloqueio de escritor. Ele se instala com a esposa Wendy e o filho Danny, que é atormentando por premonições.', 9, 9, 2),</p><p> ('Jogador Nº 1', 2018, 'Em 2045, Wade Watts, assim como o resto da humanidade, prefere a realidade virtual do jogo OASIS ao mundo real. James Halliday, o excêntrico criador do jogo, morre e deixa sua fortuna inestimável para a primeira pessoa que descobrir a chave de um quebra-cabeça diabólico que ele arquitetou.', 10, 10, 2),</p><p> ('Jogos Vorazes - Em Chamas', 2013, 'Após saírem vencedores da última edição dos Jogos Vorazes, as atitudes desafiadoras de Katniss e Peeta acabam inspirando uma rebelião contra a opressiva Capital.', 2, 11, 11),</p><p> ('Eternos', 2021, 'Os Eternos são uma raça de seres imortais que viveram durante a antiguidade da Terra, moldando sua história e suas civilizações enquanto batalhavam os malignos Deviantes.', 11, 12, 12),</p><p> ('It - A Coisa', 2017, 'Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade. Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos.', 9, 13, 13),</p><p> ('Star Wars: Episódio I – A Ameaça Fantasma', 1999, 'Obi-Wan e seu mentor embarcam em uma perigosa aventura na tentativa de salvar o planeta das garras de Darth Sidious. Durante a viagem, eles conhecem um habilidoso menino e decidem treiná-lo para se tornar um Jedi.', 10, 14, 14),</p><p> ('Pinóquio', 2022, 'O desejo de um pai solitário dá vida magicamente a um boneco de madeira, seu nome é Pinóquio. Confuso por ser tão diferente das outras crianças, Pinóquio foge de casa para encontrar seu lugar no mundo e se depara com perigo e aventura.', 11, 15, 15);</p><p>    </p><p>SELECT \* FROM Filme;</p>|
      | :- |

      ![Interface gráfica do usuário, Texto, Aplicativo](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.012.png)

      |<p>INSERT INTO Avalia (Nota, DT\_Avaliacao, Comentario, fk\_ID\_Usuario, fk\_ID\_Filme) VALUES</p><p> (8, STR\_TO\_DATE('05/09/2022', '%d/%m/%Y'), NULL, 8, 9),</p><p> (6, STR\_TO\_DATE('20/10/2023', '%d/%m/%Y'), 'Não consegui sentir tanto medo com o filme e não gostei do final, mas é mediano', 10, 4),</p><p> (9, STR\_TO\_DATE('08/09/2023', '%d/%m/%Y'), 'Acho que foi a melhor animação que já vi, adorei o estilo totalmente diferente que criaram.', 12, 6),</p><p> (7, STR\_TO\_DATE('12/02/2023', '%d/%m/%Y'), 'Gostei, só achei um pouco monótono', 4, 12),</p><p> (9, STR\_TO\_DATE('09/10/2023', '%d/%m/%Y'), 'AMEI!! Melhor terror de 2023', 6, 4),</p><p> (0, STR\_TO\_DATE('20/08/2023', '%d/%m/%Y'), 'ODIEI', 5, 1),</p><p> (8, STR\_TO\_DATE('22/08/2023', '%d/%m/%Y'), 'Filmasso!', 3, 2),</p><p> (5, STR\_TO\_DATE('12/11/2022', '%d/%m/%Y'), 'Não entendi nada desse filme, mas parece bem feito. Minha filha que falou pra eu assistir.', 8, 5),</p><p> (9, STR\_TO\_DATE('20/12/2022', '%d/%m/%Y'), 'Sou apaixonado por Star Wars <3', 15, 14),</p><p> (9, STR\_TO\_DATE('04/05/2023', '%d/%m/%Y'), 'Um dos melhores filmes de terror, amo os personagens.', 1, 13),</p><p> (7, STR\_TO\_DATE('30/07/2023', '%d/%m/%Y'), NULL, 9, 9),</p><p> (9, STR\_TO\_DATE('06/09/2023', '%d/%m/%Y'), 'Mereceu o oscar que ganhou <3', 7, 8),</p><p> (2, STR\_TO\_DATE('21/08/2023', '%d/%m/%Y'), 'Filme chato', 10, 7),</p><p> (9, STR\_TO\_DATE('23/10/2023', '%d/%m/%Y'), 'QUE FILME F\*D4', 11, 2),</p><p> (8, STR\_TO\_DATE('15/10/2023', '%d/%m/%Y'), 'Filme divertido demais, muito legal de assistir com a família e amigos.', 2, 10);</p><p>    </p><p>SELECT \* FROM Avalia;</p>|
      | :- |

      ![Interface gráfica do usuário, Texto, Aplicativo, Email](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.013.png)

      |<p>INSERT INTO Ator (Nome, Sexo, Dt\_Nasc, Nacionalidade) VALUES</p><p> ('Margot Robbie', 'Feminino', STR\_TO\_DATE('02/07/1990', '%d/%m/%Y'), 'Australiana'),</p><p> ('Robert Downey Jr.', 'Masculino', STR\_TO\_DATE('04/04/1965', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Cillian Murphy', 'Masculino', STR\_TO\_DATE('25/05/1976', '%d/%m/%Y'), 'Irlandês'),</p><p> ('Uma Thurman', 'Feminino', STR\_TO\_DATE('29/04/1970', '%d/%m/%Y'), 'Norte-americana'),</p><p> ('Sophie Wilde', 'Feminino', STR\_TO\_DATE('05/07/1997', '%d/%m/%Y'), 'Australiana'),</p><p> ('Tom Cruise', 'Masculino', STR\_TO\_DATE('03/07/1962', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Michelle Yeoh', 'Feminino', STR\_TO\_DATE('06/08/1962', '%d/%m/%Y'), 'Malaia-chinesa'),</p><p> ('Ke Huy Quan', 'Masculino', STR\_TO\_DATE('20/08/1971', '%d/%m/%Y'), 'Vietnamita'),</p><p> ('Jack Nicholson', 'Masculino', STR\_TO\_DATE('22/04/1937', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Tye Sheridan', 'Masculino', STR\_TO\_DATE('11/11/1996', '%d/%m/%Y'), 'Norte-americano'),</p><p> ('Jennifer Lawrence', 'Feminino', STR\_TO\_DATE('15/08/1990', '%d/%m/%Y'), 'Norte-americana'),</p><p> ('Kit Harington', 'Masculino', STR\_TO\_DATE('26/12/1986', '%d/%m/%Y'), 'Britânico'),</p><p> ('Angelina Jolie', 'Feminino', STR\_TO\_DATE('04/06/1975', '%d/%m/%Y'), 'Norte-americana'),</p><p> ('Bill Skarsgård', 'Masculino', STR\_TO\_DATE('09/08/1990', '%d/%m/%Y'), 'Sueco'),</p><p> ('Natalie Portman', 'Feminino', STR\_TO\_DATE('09/06/1981', '%d/%m/%Y'), 'Israelense-americana');</p><p>    </p><p>SELECT \* FROM Ator;</p>|
      | :- |

      ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.014.png)

      |<p>INSERT INTO Elenco (fk\_ID\_Filme, fk\_ID\_Ator) VALUES</p><p>(1, 1), (2, 2), (2, 3), (3, 4), (4, 5), (7, 6), (8, 7), (8, 8), (9, 9), (10, 10), (11, 11), (12, 12), (12, 13), (13, 14), (14, 15);</p><p>    </p><p>SELECT \* FROM Elenco;</p>|
      | :- |

      ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.015.png)
      
6. # <a name="_toc1388994099"></a>**Consultas e Programação**
   Para consultas com referências entre tabelas, usar apenas JOIN.
   1. ## <a name="_toc674087307"></a>**SQL para 3 consultas com AGREGAÇÃO de recuperação de dados**
      **Consulta 1**: 

      1) Descreva por qual razão a consulta é importante para o usuário.

          A consulta é importante pois mostra a média das notas dos filmes, da maior para a menor, e a quantidade de avaliações feitas por filme.

      2) Código SQL 

         |<p>SELECT F.Titulo AS Filme, F.Ano AS 'Data de Lançamento', ROUND(AVG(A.Nota), 1) AS Nota, COUNT(A.ID\_Avaliacao) AS 'Quantidade de avaliações'</p><p>FROM Filme AS F LEFT JOIN Avalia AS A</p><p>ON (F.ID\_Filme = A.fk\_ID\_Filme)</p><p>GROUP BY F.ID\_Filme</p><p>ORDER BY Nota DESC;</p>|
         | :- |

      3) Resultado da consulta.

         ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.016.png)

      **Consulta 2**: 

      1) Descreva por qual razão a consulta é importante para o usuário.

         A consulta é importante porque mostra a quantidade de filmes de cada gênero disponíveis, ordenados dos com mais opções para os com menos opções, e a quantidade de usuários que têm este gênero como favorito.

      2) Código SQL.

         |<p>SELECT G.Nome AS Gênero, COUNT(F.fk\_ID\_Genero) AS 'Filmes neste gênero',</p><p>(SELECT COUNT(\*) 	FROM Usuario AS U</p><p>WHERE U.fk\_GeneroFav = G.ID\_Genero) 'Quantidade de usuários que gostam deste gênero'</p><p>FROM Genero AS G LEFT JOIN Filme AS F</p><p>ON (G.ID\_Genero = F.fk\_ID\_Genero)</p><p>GROUP BY G.ID\_Genero</p><p>ORDER BY COUNT(F.fk\_ID\_Genero) DESC;</p>|
         | :- |

      3) Resultado da consulta.

         ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.017.png)

      **Consulta 3**: 

      1) Descreva por qual razão a consulta é importante para o usuário.

         A consulta é importante pois mostra todos os usuário que fizeram avaliações no sistema, do que mais fez para o que menos fez, os filmes que eles avaliaram e as notas que deram para cada filme.

      2) Código SQL.

         |<p>SELECT U.Nome AS 'Usuário', T.TotalAvaliacoes AS 'Total de avaliações feitas', F.Titulo AS Filme, A.Nota AS 'Nota do usuário'</p><p>FROM Usuario AS U JOIN</p><p> (	SELECT fk\_ID\_Usuario, COUNT(\*) AS TotalAvaliacoes</p><p> FROM Avalia</p><p> GROUP BY fk\_ID\_Usuario</p><p>) AS T ON (U.ID\_Usuario = T.fk\_ID\_Usuario)</p><p>LEFT JOIN Avalia AS A ON (U.ID\_Usuario = A.fk\_ID\_Usuario)</p><p>LEFT JOIN Filme AS F ON (A.fk\_ID\_Filme = F.ID\_Filme)</p><p>ORDER BY T.TotalAvaliacoes DESC, U.Nome;</p>|
         | :- |

      3) Resultado da consulta.

         ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.018.png)

   2. ## <a name="_toc559110447"></a>**SQL para 3 consultas com IR (PK + FK) de recuperação de dados** 
      **Consulta 1**: 

      1) Descreva por qual razão a consulta é importante para o usuário.

         A consulta é importante pois permite uma visão completa de informações sobre um filme, incluindo seu gênero, diretor e o estúdio responsável por sua produção.

      2) Código SQL.

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.019.png)

      3) Resultado da consulta.

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.020.png)

      **Consulta 2**: 

      1) Descreva por qual razão a consulta é importante para o usuário.

         A consulta é importante pois permite que um usuário veja todas as avaliações de um filme 		específico, como a popularidade e as opiniões dos usuários. 

      2) Código SQL.

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.021.png)

      3) Resultado da consulta.

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.022.png)

      **Consulta 3**: 

      1) Descreva por qual razão a consulta é importante para o usuário.

         A consulta é importante para o usuário que deseja obter informações sobre o elenco do filme. 

      2) Código SQL.

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.023.png)

      3) Resultado da consulta.

         ![Tabela](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.024.png)

   3. ## <a name="_toc1123440608"></a>**1 Stored procedure**
      **SP 1**: 

      1) Descreva o que a *Stored Produceure* (SP) faz (valores de INPUT e de OUTPUT).

         Essa Stored Produceure é projetada para calcular a média de avaliação de um filme com base 		em seu ID e recuperar o nome desse filme.

         INPUT: ID\_Filme - Este é o ID do filme para o qual o usuário deseja calcular a média de 			avaliação.

         OUTPUT: MediaAvaliacao - Este é o valor de saída que conterá a média das notas de avaliação 		para o filme especificado.

         OUTPUT: NomeFilme - Este é o valor de saída que conterá o nome do filme.

      2) Descreva por qual razão a SP é importante para o usuário.

         É importante para o usuário porque fornece a média das avaliações e o nome do filme, o que é 	útil para dar contexto ao usuário sobre qual filme a média se refere.

      3) Código SQL

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.025.png)

      4) Resultado da execução da SP

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.026.png)

   4. ## <a name="_toc780368612"></a>**1 Trigger**
      **Trigger 1**: 

      1) Descreva o que o *Trigger* faz para as operações de INSERT / UPDATE / DELETE.

         Este trigger é disparado antes de uma operação de um INSERT na tabela "Avalia". Ele verifica se 	o valor da coluna "Nota" está dentro do intervalo válido de 1 a 10. Se o valor estiver fora desse 		intervalo, o trigger gera um erro personalizado.

      2) Descreva por qual razão o *Trigger* é importante para o usuário.

         Este trigger é importante para garantir a integridade dos dados na tabela "Avalia". Os usuários 		que inserem avaliações de filmes devem fornecer notas válidas dentro do intervalo especificado 	(1 a 10). Se alguém tentar inserir uma nota fora desse intervalo, o trigger impedirá a inserção e 		fornecerá uma mensagem de erro indicando o motivo. Isso ajuda a manter a qualidade das		avaliações e evita a entrada de dados incorretos.

      3) Código SQL	

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.027.png)

      4) Resultado da execução do *Trigger*

         ![](files/Aspose.Words.ba37472d-a545-40c5-936a-ec2541f212cd.028.png)
