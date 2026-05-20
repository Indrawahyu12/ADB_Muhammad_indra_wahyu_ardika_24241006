-- Nama : muhammad indra wahyu ardika
-- NIM  : 24241006
-- Kelas : A 
-- Modul : 3

-- praktek 1
-- nilai literal, 

SELECT 77;

-- praktek 2
SELECT 77 AS angka, true AS nilai_logika, 'PTI' AS teks;

-- NULL
-- berarti tidak memiliki nilai apapun atau kosong
-- menggunakan SELECT untuk menampilkan NULL
SELECT NULL AS kosong;

-- oprator MTK
-- praktek 4

SELECT 5%2 AS sisa_bagi,5/2 AS hasil_bagi1, 5 DIV 2 AS hasil_bagi_2;

-- latihan mandiri
SELECT 4*2 As hasil_kali;
SELECT 4*8 AS sisa_kali, 32%7 AS hasil_bagi_2;

-- praktek 5
-- menggukan database

 USE pti_mart;
 -- operator mtk untuk dua kolom 
 SELECT qty*harga AS total_beli FROM tr_penjualan;
 
 -- 
 -- oprator perbandingan
 -- simbol untuk membandingkan niali dari nila literal maupun hasil 
 SELECT 5=5, 5!=5, 5!=4;
 
 -- latihan mandiri
 -- Operasi perbandingan SQL
SELECT 1 = TRUE;
SELECT 1 = FALSE;
SELECT 5 >= 5;
SELECT 5.2 = 5.20000;
SELECT NULL = 1;
SELECT NULL = NULL;

-- praktek 8
SELECT POW(5.2), ROUND(3.14), ROUND(3.45), ROUND(3.155,1);

-- preraktek 9
SELECT NOW(), YEAR('2022-05-03'), DATEDIFF('2022-07-22', '2022-05-03'), DAY('2022-05-03');
 
 -- latihan mandiri
-- Latihan fungsi tanggal pada SQL

SELECT DATEDIFF('2022-07-23', NOW()) AS selisih_hari;

SELECT YEAR('2022-07-23') AS tahun;

SELECT MONTH('2022-07-23') AS bulan;

SELECT DAY('2022-07-23') AS hari;

SELECT YEAR(NOW()) AS tahun_sekarang;

