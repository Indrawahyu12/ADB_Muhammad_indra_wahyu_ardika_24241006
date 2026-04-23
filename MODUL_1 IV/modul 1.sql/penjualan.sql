-- 1. Buat Database
CREATE DATABASE toko_dqlab;
USE toko_dqlab;

-- 2. Buat Tabel Produk
CREATE TABLE produk (
    kode_produk VARCHAR(10) PRIMARY KEY,
    no_urut INT,
    kategori_produk VARCHAR(50),
    nama_produk VARCHAR(100),
    harga INT
);

-- 3. Buat Tabel Transaksi
CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    kode_produk VARCHAR(10),
    qty INT
);

-- 4. Insert Data Produk
INSERT INTO produk VALUES
('prod-01', 1, 'Alat Tulis Kantor', 'Kotak Pensil DQLab', 62500),
('prod-02', 2, 'Aksesoris Komputer', 'Flashdisk DQLab 64 GB', 55000),
('prod-03', 3, 'Gift & Voucher', 'Gift Voucher DQLab 100rb', 100000),
('prod-04', 4, 'Aksesoris Komputer', 'Flashdisk DQLab 32 GB', 40000);

-- 5. Insert Data Transaksi
INSERT INTO transaksi (kode_produk, qty) VALUES
('prod-01', 3),
('prod-02', 5),
('prod-03', 2);

-- 6. JOIN + WHERE + ORDER BY
SELECT p.nama_produk, p.kategori_produk, p.harga, t.qty
FROM produk p
JOIN transaksi t ON p.kode_produk = t.kode_produk
WHERE p.harga > 50000
ORDER BY t.qty DESC;

-- 7. LEFT JOIN (tampilkan semua produk)
SELECT p.nama_produk, t.qty
FROM produk p
LEFT JOIN transaksi t ON p.kode_produk = t.kode_produk;

-- 8. UNION (gabungkan hasil query)
SELECT nama_produk FROM produk
UNION
SELECT nama_produk FROM produk;

-- 9. UNION ALL
SELECT nama_produk FROM produk
UNION ALL
SELECT nama_produk FROM produk;
