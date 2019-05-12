create table Books
(
    Name        text,
    Author      text,
    Year        int,
    Genre       text,
    Description text,
    id          int identity
        constraint Books_pk
            primary key nonclustered
)
go

create unique index Books_id_uindex
    on Books (id)
go

INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('In Search of Lost Time', 'Marcel Proust', 1932, 'Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Boneshaker', 'Cherie Priest', 2011, 'Fantasy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('The Anubis Gates', 'Tim Powers', 1997, 'Science Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('The Curious Incident of the Dog in the Night-Time', 'Mark Haddon', 2004, 'Mystery', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 2007, 'Fantasy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('A Wrinkle in Time 1', 'Madeleine L''Engle', 2017, 'Fantasy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('A Wrinkle in Time 2', 'Madeleine L''Engle', 2019, 'Fantasy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Freewill', 'Chris Lynch', 2004, 'Mystery', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Chanda''s Secrets', 'Allan Stratton', 2004, 'Realistic Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Speak part 1', 'Madeleine L''Engle', 2012, 'Young Adult', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Speak part 2', 'Madeleine L''Engle', 2016, 'Young Adult', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('The First Part Last 1', 'Angela Johnson', 2005, 'Realistic Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('The First Part Last 2', 'Angela Johnson', 2009, 'Realistic Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('A Step from Heaven Part 1', 'An Na', 2003, 'Realistic Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('A Step from Heaven Part 2', 'An Na', 2015, 'Realistic Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Many Stones Part 1', 'Carolyn Coman', 2002, 'Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Many Stones Part 2', 'Carolyn Coman', 2012, 'Fiction', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('John Lennon: All I Want is the Truth', 'Elizabeth Partridge', 2005, 'Biography', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('A Wreath for Emmett Till 1', 'Marilyn Nelson', 2005, 'Poetry', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('A Wreath for Emmett Till 2', 'Marilyn Nelson', 2005, 'Poetry', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Your Own, Sylvia: A Verse Portrait of Sylvia Plath 1', 'Stephanie Hemphill', 2008, 'Poetry', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');
INSERT INTO master.dbo.Books (Name, Author, Year, Genre, Description) VALUES ('Your Own, Sylvia: A Verse Portrait of Sylvia Plath 2', 'Stephanie Hemphill', 2015, 'Poetry', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, quidem quos? Eos eum impedit libero magnam molestiae nam odit omnis possimus sapiente temporibus? Amet beatae, commodi consequatur, cupiditate dolorem eveniet itaque iusto natus nemo non odit quibusdam quisquam totam veniam?
');