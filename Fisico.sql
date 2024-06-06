/*CREATE TABLE grupo (
	ID_Grupo INTEGER PRIMARY KEY,
    Nome VARCHAR(255)
);*/

/*CREATE TABLE unidade (
	ID_Unidade BIGINT,
    ID_Grupo INTEGER,
    Conta_Contrato BIGINT,
    Centro_Custo BIGINT,
    Nome_Unidade VARCHAR(255),
    Endereco_Unidade VARCHAR(255),
    Latitude DOUBLE NOT NULL,
    Longitude DOUBLE NOT NULL,
    PRIMARY KEY(ID_Unidade, ID_Grupo),
    FOREIGN KEY(ID_Grupo) REFERENCES Grupo(ID_Grupo)
);*/

/*CREATE TABLE Modulo (
	ID_Modulo INTEGER PRIMARY KEY,
    Nome VARCHAR(255)
);*/

/*CREATE TABLE usuario (
	ID_Usuario INTEGER PRIMARY KEY,
	Nome VARCHAR(255),
    Email VARCHAR(255),
    Telefone CHAR(9)
);*/

/*CREATE TABLE usuarioModulo (
    ID_Usuario INTEGER,
    ID_Modulo INTEGER,
    PRIMARY KEY(ID_Usuario, ID_Modulo),
    FOREIGN KEY(ID_Modulo) REFERENCES Modulo(ID_Modulo),
    FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID_Usuario)
);*/

/*CREATE TABLE tipo (
	ID_Tipo INTEGER PRIMARY KEY,
    Nome VARCHAR(255),
    Ativo BOOLEAN
);*/



/*CREATE TABLE ocorrencia (
	ID_Ocorrencia INTEGER PRIMARY KEY,
	ID_Usuario INTEGER,
    ID_Unidade BIGINT,
    ID_Tipo INTEGER,
    Relato_Sic TEXT,
    Relato_Alpha TEXT,
    Relato_Abertura TEXT,
    Centro_Custo INTEGER,
    Has_Parada BOOLEAN,
    Pm_Alpha INTEGER,
    Comunicado_Sic INTEGER,
    Numero_Ra INTEGER,
    Numero_Nr INTEGER,
    Falta_Energia BOOLEAN,
    Tipo_Falta TEXT,
    Data_Criacao DATE, 
    Data_Parada DATE,
    Data_Prevista DATE,
    Data_Fechamento DATE,
    Data_Ultima_Edicao DATE,
    Hora_Ocorrencia TIME,
    Hora_Prevista TIME,
    Prot_Energia INTEGER,
    Autor_Abertura TEXT,
    Aberta BOOLEAN,
    Autor_Ultima_Edicao TEXT,
    RelatoFechamento TEXT,
    Has_Reducao_vazao BOOLEAN,
    Inicio_Previsto TIME,
    Termino_Previsto TIME,
    FOREIGN KEY(ID_Usuario) REFERENCES usuario(ID_Usuario),
    FOREIGN KEY(ID_Unidade) REFERENCES unidade(ID_Unidade),
    FOREIGN KEY(ID_Tipo) REFERENCES tipo(ID_Tipo)
);*/

/*CREATE TABLE comentario (
	ID_Comentario INTEGER PRIMARY KEY,
    ID_Ocorrencia INTEGER,
    Autor VARCHAR(255),
    Data_Criacao DATE,
    Comentario TEXT,
    FOREIGN KEY(ID_Ocorrencia) REFERENCES ocorrencia(ID_Ocorrencia)
    );*/
    
                                                   /*INSERTS DAS GRUPOS*/
/*INSERT INTO grupo (ID_Grupo, Nome) VALUES 
(1, 'Recife'),
(2, 'Olinda'),
(3, 'Caruaru'),
(4, 'Petrolina'),
(5, 'Jaboatão dos Guararapes'),
(6, 'Garanhuns'),
(7, 'Cabo de Santo Agostinho'),
(8, 'Paulista'),
(9, 'Camaragibe'),
(10, 'Nazaré da Mata'),
(11, 'Itaquitinga'),
(12, 'Taquaritinga do Norte'),
(13, 'Santa Filomena'),
(14, 'Glória do Goitá'),
(15, 'Exu'),
(16, 'Jardim Jordão'),
(17, 'Gravatá'),
(18, 'Brejão'),
(19, 'Buique');*/


                                                   /*INSERTS DAS UNIDADES*/ 
/*INSERT INTO unidade (ID_Unidade, ID_Grupo, Conta_Contrato, Centro_Custo, Nome_Unidade, Endereco_Unidade, Latitude, Longitude) 
VALUES  
(11, 10, NULL, 9121143002, 'ETA/EEAB/EEAT MURUPÉ', 'Usina Barra, Nazaré da Mata, PE', -7.649805556, -35.26669722), 
(12, 17, NULL, 3112033064, 'EEAB - CLIPER', 'Riacho Clipper, Gravata, PE.', -8.203033333, -35.571175), 
(13, 11, NULL, 1120332342, 'EEAB - ITAQUITINGA', 'Engenho Cutiuba, Itaquitinga, PE', -7.666955556, -35.09405278), 
(14, 12, NULL, 5203300452, 'ESTAÇÃO ELEVATÓRIA 02 TAQUARITINGA DO NORTE', 'Sitio Mateus Vieira, Taquarintinga do Norte, PE', -7.952763889, -36.07598333), 
(15, 13, NULL, 8033054678, 'ETA SANTA FILOMENA', 'Rua Genesio M Falcao s/n, Centro, Santa Filomena, PE.', -8.159822222, -40.61322222), 
(16, 14, NULL, 7411324563, 'ETA GLÓRIA DO GOITÁ', 'Alto da Penha, Gloria do Goita, PE', -8.005108333, -35.29091667), 
(17, 19, NULL, 5886397001, 'ESTAÇÃO ELEVATÓRIA EXU + 7 POÇOS', 'Sitio Brejo de Sao Jose, Buique, PE', -8.5471, -37.21450556), 
(18, 16, NULL, 4122151003, 'RAP JARDIM JORDÃO', 'JABOATAO RUA SARGENTO QUINTAS PORTO N_ 665, JARDIM JORDAO - EEAT - RAP', -8.141613889, -34.93807222), 
(19, 17, NULL, 4122091007, 'RESERVATÓRIO DO CRUZEIRO - GRAVATÁ', 'RUA DO ALECRIM, ALTO DO CRUZEIRO', -8.211769444, -35.57395), 
(20, 18, NULL, 4113111001, 'ETA BREJÃO', 'Rua Joao Pinto Santos, s/n, Brejo, PE.', -9.024444444, -36.56663056), 
(21, 10, 935058015, 9121143002, 'ESTAÇÃO ELEVATÓRIA USINA BARRA (VICÊNCIA)', 'USINA BARRA-NAZARÉ DA MATA - COMPESA - ELEVATORIA 1-NAZARE DA MATA', -7.649805556, -35.26669722), 
(22, 17, 1826144013, 3112033064, 'ELEVATÓRIA CLIPER- GRAVATÁ', 'ENGENHO CLIPER- GRAVATÁ - GRAVATA', -8.203033333, -35.571175), 
(23, 11, 934710010, 1120332342, 'EEAB-ITAQUITINGA', 'ENGENHO GUTIUBA- ITAQUITINGA', -7.666955556, -35.09405278), 
(24, 12, 7002641920, 5203300452, 'EEAT 02 TAQUARITINGA DO NORTE', 'SIT. CACHOEIRA DO ARROZ-TAQ. DO NORTE - EEAT 02 Taquaritinga do Norte', -7.952763889, -36.07598333), 
(25, 13, 1147877028, 8033054678, 'ETA-STA FILOMENA', 'ETA STA FILOMENA - COMPESA - ETA-STA FILOMENA', -8.159822222, -40.61322222), 
(26, 14, 935576016, 7411324563, 'ETA-GLÓRIA DO GOITÁ', 'ALTO DA PENHA- GLÓRIA DO GOITÁ - COMPESA - ETA-GLORIA DO GOITA  (UFV FL VII - 373 KWp)', -8.005108333, -35.29091667), 
(27, 15, 7038242932, 5886397001, 'ELEVATÓRIA DE EXU + 7 POÇOS', 'SITIO STA LUZIA - EXU', -8.5471, -37.21450556), 
(28, 16, 4122151003, 1023443011, 'RAP JARDIM JORDÃO', 'RUA BOA VISTA - 776 - JORDÃO - COMPESA - RES APOIADO - JARDIM JORDAO', -8.141613889, -34.93807222), 
(29, 17, 4122091007, 4001868999, 'RESERVATÓRIO DO CRUZEIRO - GRAVATÁ', 'RUA DO CRUZEIRO 69035 - GRAVATÁ - RESERVATORIO COMPESA', -8.211769444, -35.57395), 
(30, 18, 4113111001, 931790013, 'ETA-BREJÃO', 'RUA NOVA 04-BREJÃO - COMPESA', -9.024444444, -36.56663056);*/

												/*INSERTS DOS MODULOS*/
/*INSERT INTO Modulo (ID_Modulo, Nome) 
VALUES  
(1, 'Configuração'),
(2, 'Manutenção'),
(3, 'Ocorrência');*/

                                               /*INSERTS DOS TIPOS DE FALTA DE ENERGIA*/
/*INSERT INTO tipo (ID_Tipo, Nome, Ativo) 
VALUES  
(1, 'Total (maior que 3 minutos)', true),
(2, 'Fase (maior que 3 minutos)', true),
(3, 'Oscilação de tensão (Piscada)', true),
(4, 'Desbalanceamento/Nível tensão', true),
(5, 'Religar unidade (furto, manutenção)', true),
(6, 'Desligamento Programado Neoenergia', true),
(7, 'Problema Interno', true);*/
											 /*INSERTS DE USUARIOS DE EXEMPLO APENAS PARA GERAR AS OCORRENCIAS*/
/*INSERT INTO usuario (ID_Usuario, Nome, Email, Telefone) VALUES
(1, 'João Silva', 'joao@example.com', '123456789'),
(2, 'Maria Santos', 'maria@example.com', '987654321'),
(3, 'Pedro Oliveira', 'pedro@example.com', '234567890'),
(4, 'Ana Costa', 'ana@example.com', '876543219'),
(5, 'Lucas Pereira', 'lucas@example.com', '345678901'),
(6, 'Fernanda Almeida', 'fernanda@example.com', '765432198'),
(7, 'Gustavo Souza', 'gustavo@example.com', '456789012'),
(8, 'Carla Lima', 'carla@example.com', '654321987'),
(9, 'Mariana Rodrigues', 'mariana@example.com', '567890123'),
(10, 'Rafael Oliveira', 'rafael@example.com', '543219876');*/



                                             /*INSERTS DAS OCORRENCIAS*/
/*INSERT INTO ocorrencia (ID_Ocorrencia, ID_Usuario, ID_Unidade, ID_Tipo, Relato_Sic, Relato_Alpha, Relato_Abertura, Centro_Custo, Has_Parada, Pm_Alpha, Comunicado_Sic, Numero_Ra, Numero_Nr, Falta_Energia, Tipo_Falta, Data_Criacao, Data_Parada, Data_Prevista, Data_Fechamento, Data_Ultima_Edicao, Hora_Ocorrencia, Hora_Prevista, Prot_Energia, Autor_Abertura, Aberta, Autor_Ultima_Edicao, RelatoFechamento, Has_Reducao_vazao, Inicio_Previsto, Termino_Previsto) 
VALUES (13217, 6, 11, 1, 'Conserto de Vazamento em adutora DN600mm Parada emergencial, unidades fora de operação para retirar vazamento na adutora de 600mm, adutora de Trindade. A ação provocará o desabastecimento das áreas citadas (Ipubi, Trindade e Araripina).', 'vazamento na adutora de 600mm, chegada de trindade.', 'vazamento de agua', NULL, false, 2123, NULL, 54, 1, false, NULL,'2024-05-15', '2024-05-15', '2024-05-15', '2024-05-15', '2024-05-15', '09:00:00', '18:00:00', NULL, 'Fernanda Almeida', false, 'Fenanda Almeida', 'Ocorrencia Finalizada', true, '08:00:00', '12:00:00'), 
(56853, 2, 12, 1, 'GNR MS - EEAB TAPACURA - REDUÇÃO DE VAZÃO Redução de vazão de chegada na Eta Vitória da EEAB Tapacurá de aproximadamente 6 l/s.', 'GNR MS - EEAB TAPACURA - REDUÇÃO DE VAZÃO Redução de vazão de chegada na Eta Vitória da EEAB Tapacurá de aproximadamente 6 l/s.', 'Redução de vazão', NULL, true, '215', NULL, '5516', '20054', true, '4', '2024-05-15', '2024-05-15', '2024-05-16', '2024-05-16', '2024-05-16', '08:25:49', '12:00:00', '525651', 'Maria Santos', true, 'Maria Santos', 'Ocorrencia finalizada com Sucesso!', true, '08:40:00', '12:00:00'),
(2254886, 3, 13, 1, 'EEAT 08 JUCAZINHO: REDUÇÃO DE VAZÃO NA CHEGADA E8 JUCAZINHO REDUÇÃO NA CHEGADA DA E1 JUCAZINHO PARA E8 JUCAZINHO: O OPERADOR DA E1 INFORMOU QUE A SAÍDA ESTAVA EM 250 A 260, MAS A CHEGADA NA E8 180 A 190. (POSSIVEL ESTOURAMENT)', 'EEAT 08 JUCAZINHO: REDUÇÃO DE VAZÃO NA CHEGADA E8 JUCAZINHO REDUÇÃO NA CHEGADA DA E1 JUCAZINHO PARA E8 JUCAZINHO: O OPERADOR DA E1 INFORMOU QUE A SAÍDA ESTAVA EM 250 A 260, MAS A CHEGADA NA E8 180 A 190. (POSSIVEL ESTOURAMENT)', NULL, NULL, false, NULL, NULL, NULL, NULL, false, NULL, '2024-05-14', '2024-05-15', '2024-05-15', '2024-05-15', '2024-05-15', '09:20:00', '11:02:00', NULL, NULL, false, NULL, NULL, true, '09:26:36', '12:00:00'),
(13216, 5, 14, 2, 'Conserto de Rompimento em rede DN superior 100 mm e inferior a 300mm Devido rompimento da rede de distribuição no centro de Belo Jardim o sistema foi desligado para serviço de reparo, causando o desabastecimento das localidades citadas.', 'Conserto de Rompimento em rede DN superior 100 mm e inferior a 300mm Devido rompimento da rede de distribuição no centro de Belo Jardim o sistema foi desligado para serviço de reparo, causando o desabastecimento das localidades citadas.', NULL, NULL, false, NULL, NULL, NULL, NULL, false, NULL, '2024-05-15', '2024-05-15', '2024-05-15', '2024-05-15', '2024-05-15', '08:00:00', '12:00:00', NULL, NULL, false, NULL, NULL, true, '08:00:00', '12:00:00'),
(13219, 4, 15, 3, 'Sistema parado por falta de fase na EEAB Riacho da Palha.', 'Sistema parado por falta de fase na EEAB Riacho da Palha.', NULL, NULL, false, NULL, NULL, NULL, NULL, false, NULL, '2024-05-14', '2024-05-15', '2024-05-15', '2024-05-15', '2024-05-15', '04:25:39', '14:02:08', NULL, NULL, false, NULL, NULL, true, '08:00:00', '12:00:00'),
(13218, 1, 17, 4, 'Manutenção em CMB Unidade operando com sua capacidade reduzida devido a falha eletromecânica no CMB (conjunto motobomba). O Conjunto Motor Bomba precisará passar por manutenção especializada. A ação provocará o desabastecimento temporário da população.', 'Manutenção em CMB Unidade operando com sua capacidade reduzida devido a falha eletromecânica no CMB (conjunto motobomba). O Conjunto Motor Bomba precisará passar por manutenção especializada. A ação provocará o desabastecimento temporário da população.', NULL, NULL, false, NULL, NULL, NULL, NULL, false, NULL, '2024-05-13', '2024-05-15', '2024-05-15', '2024-05-15', '2024-05-15', '06:59:00', '05:00:00', NULL, NULL, false, NULL, NULL, true, '12:45:00', '20:10:00'
);
											/*INSERTS DE COMENTARIOS*/
/*INSERT INTO comentario (ID_Comentario, ID_Ocorrencia, Autor, Data_Criacao, Comentario)
VALUES
(1, 13217, 'Fernanda Almeida', '2024-05-15', 'É necessario mais mão de obra.' );*/
