-- 1. Membuat Database
CREATE DATABASE toko_db;

-- 2. Menggunakan Database
USE toko_db;

-- 3. Membuat Tabel Produk
CREATE TABLE produk (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100),
    harga INT,
    stok INT
);

-- 4. Menambahkan Data
INSERT INTO produk (nama_produk, harga, stok) VALUES
('Laptop', 8000000, 10),
('Mouse', 150000, 50),
('Keyboard', 300000, 30);

-- 5. Menampilkan Semua Data
SELECT * FROM produk;

-- 6. Filter Data
SELECT * FROM produk WHERE harga > 500000;

-- 7. Update Data
UPDATE produk
SET harga = 7500000
WHERE id = 1;

-- 8. Hapus Data
DELETE FROM produk
WHERE id = 2;

-- 9. Sorting & Limit
SELECT * FROM produk
ORDER BY harga DESC
LIMIT 3;

-- 10. Fungsi Agregat
SELECT COUNT(*) AS total_produk FROM produk;
SELECT AVG(harga) AS rata_rata_harga FROM produk;
SELECT MAX(harga) AS harga_tertinggi FROM produk;

-- 11. Contoh Relasi (JOIN)
-- Buat tabel kategori dulu
CREATE TABLE kategori (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(100)
);

-- Tambah data kategori
INSERT INTO kategori (nama_kategori) VALUES
('Elektronik'),
('Aksesoris');

-- Tambah kolom relasi ke tabel produk
ALTER TABLE produk ADD id_kategori INT;

-- Update relasi
UPDATE produk SET id_kategori = 1 WHERE id = 1;
UPDATE produk SET id_kategori = 2 WHERE id = 3;

-- Join produk dengan kategori
SELECT produk.nama_produk, kategori.nama_kategori
FROM produk
JOIN kategori ON produk.id_kategori = kategori.id;

INSERT INTO produk (kode_produk, no_urut, kategori_produk, nama_produk, harga) VALUES
('prod-01', 1, 'Alat Tulis Kantor', 'Kotak Pensil DQLab', 62500),
('prod-02', 2, 'Aksesoris Komputer', 'Flashdisk DQLab 64 GB', 55000),
('prod-03', 3, 'Gift & Voucher', 'Gift Voucher DQLab 100rb', 100000),
('prod-04', 4, 'Aksesoris Komputer', 'Flashdisk DQLab 32 GB', 40000),
('prod-05', 5, 'Gift & Voucher', 'Gift Voucher DQLab 250rb', 250000),
('prod-06', 6, 'Alat Tulis Kantor', 'Pulpen Multifunction + Laser DQLab', 92500),
('prod-07', 7, 'Gift & Voucher', 'Tas Travel Organizer DigiSkills.id', 48000),
('prod-08', 8, 'Gift & Voucher', 'Gantungan Kunci DQLab', 15800),
('prod-09', 9, 'Alat Tulis Kantor', 'Buku Planner Agenda DQLab', 92000),
('prod-10', 10, 'Alat Tulis Kantor', 'Sticky Notes DQLab 500 sheets', 55000);