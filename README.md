# D2C Skincare E-Commerce — SQL Analytics Learning Journey

Repo ini adalah dokumentasi proses belajar SQL saya menggunakan dataset
**D2C Skincare E-Commerce Analytics** (synthetic dataset). Tujuannya bukan
cuma latihan query, tapi juga membiasakan diri berpikir seperti data
analyst: dari pertanyaan bisnis → query SQL → insight.

## 📦 Tentang Dataset

Dataset ini mensimulasikan bisnis skincare D2C dengan 6 tabel relational:

| Tabel | Deskripsi |
|---|---|
| `customers` | Data demografi & akuisisi customer |
| `products` | Data produk skincare (harga, kategori, tipe kulit) |
| `orders` | Transaksi order (status, channel, pembayaran) |
| `order_items` | Detail item per order (qty, diskon, revenue) |
| `returns` | Data retur & refund |
| `reviews` | Rating & review customer |

**Relasi antar tabel:**
```
customers 1───N orders 1───N order_items N───1 products
orders 1───N returns N───1 products
customers 1───N reviews N───1 products (via orders)
```

## 🎯 Tujuan Belajar

- [ ] Menguasai query dasar (SELECT, WHERE, ORDER BY, LIMIT)
- [ ] Memahami berbagai jenis JOIN dan kapan pakai masing-masing
- [ ] Aggregation & GROUP BY untuk ringkasan bisnis
- [ ] Window functions (RANK, ROW_NUMBER, running total, dsb.)
- [ ] Subquery & CTE untuk query bertingkat
- [ ] Studi kasus bisnis nyata: revenue trend, RFM, CLV, return rate

## 🛠️ Tools

- Database: PostgreSQL (port 5432)
- Client: *(isi: DBeaver / pgAdmin / psql / dll)*
- Dataset source: *(isi link Kaggle/sumber dataset)*

## 📁 Struktur Repo

```
queries/
├── 01_basic_queries/      → SELECT, WHERE, ORDER BY, LIMIT, DISTINCT
├── 02_joins/               → INNER, LEFT, RIGHT, FULL, SELF JOIN
├── 03_aggregation/         → GROUP BY, HAVING, agregat function
├── 04_window_functions/    → RANK, LAG/LEAD, running total
├── 05_subquery_cte/        → subquery, CTE, recursive CTE
└── 06_business_case/       → studi kasus end-to-end (lihat di bawah)

insights/
└── findings.md             → ringkasan insight dari studi kasus

LEARNING_LOG.md              → catatan progress harian/mingguan
```

## 💼 Studi Kasus Bisnis yang Dikerjakan

| Case | Status | File |
|---|---|---|
| Revenue trend (bulanan/kanal) | ⏳ | `06_business_case/revenue_analysis.sql` |
| RFM segmentation | ⏳ | `06_business_case/rfm_segmentation.sql` |
| Customer Lifetime Value (CLV) | ⏳ | `06_business_case/clv_analysis.sql` |
| Return rate & alasan retur | ⏳ | `06_business_case/return_rate_analysis.sql` |
| Product profitability (margin) | ⏳ | `06_business_case/product_profitability.sql` |
| Acquisition channel performance | ⏳ | `06_business_case/acquisition_channel.sql` |

Status: ⏳ belum dikerjakan · 🔄 sedang dikerjakan · ✅ selesai

## 📝 Cara Saya Mendokumentasikan Tiap Query

Setiap file `.sql` diberi komentar di bagian atas dengan format:

```sql
-- =========================================
-- Judul: Revenue bulanan per sales channel
-- Pertanyaan bisnis: Channel mana yang paling
--   berkontribusi ke revenue tiap bulan?
-- Tabel yang dipakai: orders
-- Konsep SQL: GROUP BY, DATE_TRUNC, aggregation
-- =========================================

SELECT
    DATE_TRUNC('month', order_date) AS bulan,
    sales_channel,
    SUM(final_amount) AS total_revenue
FROM orders
WHERE order_status = 'Delivered'
GROUP BY 1, 2
ORDER BY 1, 2;
```

Format ini bikin query gampang dipahami ulang oleh saya sendiri (atau
orang lain) beberapa bulan ke depan.

## 📚 Progress Belajar

Lihat detail harian/mingguan di [`LEARNING_LOG.md`](./LEARNING_LOG.md).

---

*Dataset ini adalah data sintetis untuk tujuan edukasi, bukan data bisnis nyata.*
