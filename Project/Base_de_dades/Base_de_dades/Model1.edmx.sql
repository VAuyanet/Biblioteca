
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/23/2018 17:52:14
-- Generated from EDMX file: Z:\GitHubProjects\Biblioteca\Project\Base_de_dades\Base_de_dades\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Biblioteca];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SociPrestec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Prestec] DROP CONSTRAINT [FK_SociPrestec];
GO
IF OBJECT_ID(N'[dbo].[FK_SancióPrestec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sanció] DROP CONSTRAINT [FK_SancióPrestec];
GO
IF OBJECT_ID(N'[dbo].[FK_LlibreCopia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Copia] DROP CONSTRAINT [FK_LlibreCopia];
GO
IF OBJECT_ID(N'[dbo].[FK_LlibreLlistatEspera]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Llibre] DROP CONSTRAINT [FK_LlibreLlistatEspera];
GO
IF OBJECT_ID(N'[dbo].[FK_CopiaPrestec]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Copia] DROP CONSTRAINT [FK_CopiaPrestec];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Llibre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Llibre];
GO
IF OBJECT_ID(N'[dbo].[Copia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Copia];
GO
IF OBJECT_ID(N'[dbo].[Bilbiotecari]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bilbiotecari];
GO
IF OBJECT_ID(N'[dbo].[Prestec]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prestec];
GO
IF OBJECT_ID(N'[dbo].[Soci]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Soci];
GO
IF OBJECT_ID(N'[dbo].[Sanció]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sanció];
GO
IF OBJECT_ID(N'[dbo].[LlistatEspera]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LlistatEspera];
GO
IF OBJECT_ID(N'[dbo].[DiesNoHabils]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DiesNoHabils];
GO
IF OBJECT_ID(N'[dbo].[Autor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Autor];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Llibre'
CREATE TABLE [dbo].[Llibre] (
    [ISBN] int IDENTITY(1,1) NOT NULL,
    [titol] nvarchar(max)  NOT NULL,
    [numPagines] smallint  NOT NULL,
    [disponible] bit  NOT NULL,
    [genere] nvarchar(max)  NOT NULL,
    [editorial] nvarchar(max)  NOT NULL,
    [dataIntroduccio] nvarchar(max)  NOT NULL,
    [dataBaixa] nvarchar(max)  NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Copia'
CREATE TABLE [dbo].[Copia] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL,
    [dataBaixa] nvarchar(max)  NOT NULL,
    [dataIntroduccio] nvarchar(max)  NOT NULL,
    [Llibre_ISBN] int  NOT NULL
);
GO

-- Creating table 'Bilbiotecari'
CREATE TABLE [dbo].[Bilbiotecari] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [cognom] nvarchar(max)  NOT NULL,
    [dataIntroduccio] nvarchar(max)  NOT NULL,
    [dataBaixa] nvarchar(max)  NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Prestec'
CREATE TABLE [dbo].[Prestec] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [dataInici] datetime  NOT NULL,
    [dataFi] datetime  NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL,
    [Soci_Id] int  NOT NULL,
    [Copia_Id] int  NOT NULL
);
GO

-- Creating table 'Soci'
CREATE TABLE [dbo].[Soci] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [cognom] nvarchar(max)  NOT NULL,
    [dataIntroduccio] nvarchar(max)  NOT NULL,
    [dataBaixa] nvarchar(max)  NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Sanció'
CREATE TABLE [dbo].[Sanció] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [dataSancio] datetime  NOT NULL,
    [dataAlta] nvarchar(max)  NOT NULL,
    [dataBaixa] nvarchar(max)  NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL,
    [Prestec_Id] int  NOT NULL
);
GO

-- Creating table 'LlistatEspera'
CREATE TABLE [dbo].[LlistatEspera] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [posicio] int  NOT NULL,
    [dataIntroduccio] nvarchar(max)  NOT NULL,
    [dataBaixa] nvarchar(max)  NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL,
    [Llibre_ISBN] int  NOT NULL
);
GO

-- Creating table 'DiesNoHabils'
CREATE TABLE [dbo].[DiesNoHabils] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [data] datetime  NOT NULL,
    [motiu] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Autor'
CREATE TABLE [dbo].[Autor] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [cognom] nvarchar(max)  NOT NULL,
    [dataIntroduccio] nvarchar(max)  NOT NULL,
    [dataBaixa] nvarchar(max)  NOT NULL,
    [dataModificacio] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AutorLlibre'
CREATE TABLE [dbo].[AutorLlibre] (
    [Autor_Id] int  NOT NULL,
    [Llibre_ISBN] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ISBN] in table 'Llibre'
ALTER TABLE [dbo].[Llibre]
ADD CONSTRAINT [PK_Llibre]
    PRIMARY KEY CLUSTERED ([ISBN] ASC);
GO

-- Creating primary key on [Id] in table 'Copia'
ALTER TABLE [dbo].[Copia]
ADD CONSTRAINT [PK_Copia]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Bilbiotecari'
ALTER TABLE [dbo].[Bilbiotecari]
ADD CONSTRAINT [PK_Bilbiotecari]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Prestec'
ALTER TABLE [dbo].[Prestec]
ADD CONSTRAINT [PK_Prestec]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Soci'
ALTER TABLE [dbo].[Soci]
ADD CONSTRAINT [PK_Soci]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sanció'
ALTER TABLE [dbo].[Sanció]
ADD CONSTRAINT [PK_Sanció]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LlistatEspera'
ALTER TABLE [dbo].[LlistatEspera]
ADD CONSTRAINT [PK_LlistatEspera]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DiesNoHabils'
ALTER TABLE [dbo].[DiesNoHabils]
ADD CONSTRAINT [PK_DiesNoHabils]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Autor'
ALTER TABLE [dbo].[Autor]
ADD CONSTRAINT [PK_Autor]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Autor_Id], [Llibre_ISBN] in table 'AutorLlibre'
ALTER TABLE [dbo].[AutorLlibre]
ADD CONSTRAINT [PK_AutorLlibre]
    PRIMARY KEY CLUSTERED ([Autor_Id], [Llibre_ISBN] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Soci_Id] in table 'Prestec'
ALTER TABLE [dbo].[Prestec]
ADD CONSTRAINT [FK_SociPrestec]
    FOREIGN KEY ([Soci_Id])
    REFERENCES [dbo].[Soci]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SociPrestec'
CREATE INDEX [IX_FK_SociPrestec]
ON [dbo].[Prestec]
    ([Soci_Id]);
GO

-- Creating foreign key on [Copia_Id] in table 'Prestec'
ALTER TABLE [dbo].[Prestec]
ADD CONSTRAINT [FK_CopiaPrestec]
    FOREIGN KEY ([Copia_Id])
    REFERENCES [dbo].[Copia]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CopiaPrestec'
CREATE INDEX [IX_FK_CopiaPrestec]
ON [dbo].[Prestec]
    ([Copia_Id]);
GO

-- Creating foreign key on [Llibre_ISBN] in table 'Copia'
ALTER TABLE [dbo].[Copia]
ADD CONSTRAINT [FK_LlibreCopia]
    FOREIGN KEY ([Llibre_ISBN])
    REFERENCES [dbo].[Llibre]
        ([ISBN])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LlibreCopia'
CREATE INDEX [IX_FK_LlibreCopia]
ON [dbo].[Copia]
    ([Llibre_ISBN]);
GO

-- Creating foreign key on [Llibre_ISBN] in table 'LlistatEspera'
ALTER TABLE [dbo].[LlistatEspera]
ADD CONSTRAINT [FK_LlibreLlistatEspera]
    FOREIGN KEY ([Llibre_ISBN])
    REFERENCES [dbo].[Llibre]
        ([ISBN])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LlibreLlistatEspera'
CREATE INDEX [IX_FK_LlibreLlistatEspera]
ON [dbo].[LlistatEspera]
    ([Llibre_ISBN]);
GO

-- Creating foreign key on [Autor_Id] in table 'AutorLlibre'
ALTER TABLE [dbo].[AutorLlibre]
ADD CONSTRAINT [FK_AutorLlibre_Autor]
    FOREIGN KEY ([Autor_Id])
    REFERENCES [dbo].[Autor]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Llibre_ISBN] in table 'AutorLlibre'
ALTER TABLE [dbo].[AutorLlibre]
ADD CONSTRAINT [FK_AutorLlibre_Llibre]
    FOREIGN KEY ([Llibre_ISBN])
    REFERENCES [dbo].[Llibre]
        ([ISBN])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AutorLlibre_Llibre'
CREATE INDEX [IX_FK_AutorLlibre_Llibre]
ON [dbo].[AutorLlibre]
    ([Llibre_ISBN]);
GO

-- Creating foreign key on [Prestec_Id] in table 'Sanció'
ALTER TABLE [dbo].[Sanció]
ADD CONSTRAINT [FK_PrestecSanció]
    FOREIGN KEY ([Prestec_Id])
    REFERENCES [dbo].[Prestec]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PrestecSanció'
CREATE INDEX [IX_FK_PrestecSanció]
ON [dbo].[Sanció]
    ([Prestec_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------