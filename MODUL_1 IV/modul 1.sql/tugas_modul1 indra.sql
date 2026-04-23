-- Nama : muhammad indra wahyu ardika
-- NIM  : 24241006
-- Kelas : A

-- Menyiapkan database
show databases;

-- Membuat database
create database pti_mart;

-- Menggunakan database
use pti_mart;

-- Membuat tabel pelanggan
CREATE TABLE prlanggan (
kode_pelanggan varchar (20) PRIMARY KEY,
no_urut int NOT NULL,
nama_pelanggan varchar(30),
alamat varchar(50)
);

-- Mengisi table pelanggan
insert into pelanggan(
kode_pelanggan,
no_uurt,
nama_pelanggan) values
("dqlabcust00", 0, "pelanggan nom member");

-- cek hasil insert
select * from pelanggan;

-- mengisi multiple input ke table pelanggan
insert into pelanggan(
kode_pelanggan,
no_urut,
nama_pelanggan,
alamat) values
('dqlabcust01', 1,  'Eva Novianti, S.H.',   'Vila Sempilan, No. 67 - Kota B'),
('dqlabcust02', 2,  'Heidi Goh',            'Vila Sempilan, No. 11 - Kota B'),
('dqlabcust03', 3,  'Unang Handoko',         'Vila Sempilan, No. 1 - Kota B'),
('dqlabcust04', 4,  'Jokolono Sukarman',     'Vila Permata Intan Berkilau, Blok C5-7'),
('dqlabcust05', 5,  'Tommy Sinaga',          'Vila Permata Intan Berkilau, Blok A1/2'),
('dqlabcust06', 6,  'Irwan Setianto',        'Vila Gunung Seribu, Blok O1 - No. 1 - Kota C'),
('dqlabcust07', 7,  'Agus Cahyono',          'Vila Gunung Seribu, Blok F4 - No. 8'),
('dqlabcust08', 8,  'Maria Sirait',          'Vila Bukit Sagitarius, Gang. Sawit No. 3'),
('dqlabcust09', 9,  'Ir. Ita Nugraha',       'Vila Bukit Sagitarius, Gang Kelapa No. 6'),
('dqlabcust10', 10, 'Djoko Wardoyo, Drs.',   'Vila Bukit Sagitarius, Blok A1 No. 1');
