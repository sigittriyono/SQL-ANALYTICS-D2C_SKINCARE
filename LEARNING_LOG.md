# 📚 Learning Log — Belajar SQL dengan D2C Skincare Dataset

---

## Rabu, 15 Juli 2026

**Yang saya pelajari:**
1. Setup PostgreSQL dan membuat database `skincare_sql`.
2. Import dataset CSV ke dalam PostgreSQL.
3. Membuat tabel dan menyesuaikan tipe data berdasarkan struktur dataset.
4. Basic Query:
   - SELECT
   - FROM
   - LIMIT
   - DISTINCT
5. Filtering Data:
   - WHERE
   - Operator perbandingan (=, >, <, >=, <=, !=)
   - AND, OR, NOT
   - IN
   - BETWEEN
   - LIKE
   - IS NULL
6. Aggregate Function:
   - COUNT()
   - SUM()
   - AVG()
   - MAX()
   - MIN()
7. Data Grouping:
   - GROUP BY
   - ORDER BY
   - HAVING

**Query yang saya buat:**
- `queries/01_basic_queries/modul_1A.sql`
- `queries/01_basic_queries/modul_1B.sql`
- `queries/01_basic_queries/modul_1C.sql`
-  [`modul_1C.sql`](.queries/01_basic_queries/modul_1C.sql).
  
**Insight / hasil menarik:**
1. PostgreSQL tidak dapat langsung mengimpor file CSV menjadi tabel. Struktur tabel dan tipe data harus dibuat terlebih dahulu agar proses import berhasil.
2. SQL bukan hanya menghafal sintaks, tetapi memahami kebutuhan atau pertanyaan bisnis kemudian menerjemahkannya menjadi sebuah query.
3. Aggregate Function menjadi lebih bermanfaat ketika dikombinasikan dengan `GROUP BY` untuk menghasilkan ringkasan data berdasarkan suatu kategori.

**Kesulitan yang saya temui:**
1. Awalnya saya mengira file CSV dapat langsung diimpor menjadi tabel, tetapi ternyata perlu menyesuaikan struktur tabel dan tipe data terlebih dahulu.
2. Saya masih belum lancar mengingat sintaks SQL sehingga masih perlu sering melihat referensi.
3. Terkadang saya salah memahami pertanyaan sehingga bingung menentukan query yang harus ditulis.

**Yang perlu dipelajari lagi:**
1. Lebih memahami kebutuhan atau pertanyaan bisnis sebelum mulai menulis query SQL.
2. Lebih sering berlatih agar sintaks SQL menjadi lebih familiar dan tidak perlu selalu melihat referensi.
3. Mempelajari berbagai jenis JOIN (INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN) untuk menggabungkan data dari beberapa tabel.

---
