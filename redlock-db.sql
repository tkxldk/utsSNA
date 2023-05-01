CREATE DATABASE Redlock;

USE Redlock;

CREATE TABLE users (
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nama VARCHAR(255) NOT NULL,
    Alamat VARCHAR(255) NOT NULL,
    Jabatan VARCHAR(255) NOT NULL
);

INSERT INTO users (Nama, Alamat, Jabatan) VALUES
    ('Jupri Kunairi', 'Jl. Sudirman No. 123, Jakarta', 'Dosen'),
    ('Jempi Redondo', 'Jl. Thamrin No. 456, Jakarta', 'Asisten Dosen'),
    ('Boni Saputra', 'Jl. Gajah Mada No. 789, Jakarta', 'Mahasiswa'),
    ('Alyssa White Jr', 'Jl. Hayam Wuruk No. 1011, Jakarta', 'Mahasiswa'),
    ('Pitra Parker', 'Jl. Kebon Jeruk No. 1213, Jakarta', 'Asisten Laboratorium'),
    ('Ferdi Kuswadi', 'Jl. Kemang No. 1415, Jakarta', 'Dosen'),
    ('Oping Sambo', 'Jl. Darmo No. 1617, Surabaya', 'Dosen'),
    ('Michael Virya', 'Jl. Raya Barat No. 1819, Bandung', 'Mahasiswa'),
    ('Toni Mantawijaya', 'Jl. Gatot Subroto No. 2021, Jakarta', 'Dosen'),
    ('Bigbram Wyses', 'Jl. Merdeka No. 2223, Jakarta', 'Asisten Dosen');
