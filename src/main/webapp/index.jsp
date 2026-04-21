```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop - Premium UI</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

<style>
:root {
    --bg: #0f172a;
    --primary: #e2e8f0;
    --accent: #6366f1;
    --accent2: #22c55e;
    --card: #1e293b;
    --muted: #94a3b8;
}

* {
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Poppins, sans-serif;
    transition: all 0.2s ease;
}

body {
    background: var(--bg);
    color: var(--primary);
}

/* HEADER */
header {
    position: sticky;
    top: 0;
    backdrop-filter: blur(12px);
    background: rgba(15,23,42,0.7);
    padding: 15px 30px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo {
    font-size: 22px;
    font-weight: 700;
}

.search {
    padding:8px 12px;
    border-radius:20px;
    border:none;
    background: rgba(255,255,255,0.05);
    color:white;
}

/* HERO */
.hero {
    height: 60vh;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    text-align:center;
    background: linear-gradient(120deg,#6366f1,#22c55e);
    border-radius:0 0 40px 40px;
}

.hero h1 {
    font-size: 40px;
    animation: fadeUp 1s ease;
}

@keyframes fadeUp {
    from {opacity:0; transform:translateY(20px);}
    to {opacity:1; transform:translateY(0);}
}

.btn {
    margin-top:20px;
    padding:10px 20px;
    border:none;
    border-radius:20px;
    background: linear-gradient(135deg,#6366f1,#22c55e);
    color:white;
    cursor:pointer;
}

/* GRID */
.section {
    padding:40px;
}

.grid {
    display:grid;
    grid-template-columns: repeat(auto-fit,minmax(220px,1fr));
    gap:20px;
}

/* CARD */
.card {
    background: var(--card);
    border-radius:16px;
    overflow:hidden;
    text-align:center;
    padding-bottom:15px;
}

.card img {
    width:100%;
    height:180px;
    object-fit:cover;
}

.card:hover {
    transform: translateY(-10px) scale(1.03);
}

/* PRODUCT */
.product img {
    transition:0.4s;
}

.product:hover img {
    transform: scale(1.1);
}

.price {
    font-weight:600;
}

/* FOOTER */
footer {
    text-align:center;
    padding:20px;
    color:var(--muted);
}
</style>
</head>

<body>

<header>
    <div class="logo">NexusShop</div>
    <input type="text" class="search" placeholder="Search products...">
</header>

<section class="hero">
    <h1>Premium Shopping Experience</h1>
    <button class="btn">Shop Now</button>
</section>

<section class="section">
    <h2>Categories</h2>
    <div class="grid">
        <div class="card">Phones</div>
        <div class="card">Laptops</div>
        <div class="card">Clothing</div>
        <div class="card">Accessories</div>
    </div>
</section>

<section class="section">
    <h2>Products</h2>
    <div class="grid">

        <div class="card product">
            <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb">
            <h3>iPhone 14</h3>
            <p class="price">$999</p>
            <button class="btn">Add to Cart</button>
        </div>

        <div class="card product">
            <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45">
            <h3>MacBook</h3>
            <p class="price">$1999</p>
            <button class="btn">Add to Cart</button>
        </div>

        <div class="card product">
            <img src="https://images.unsplash.com/photo-1542272604-787c3835535d">
            <h3>Shoes</h3>
            <p class="price">$150</p>
            <button class="btn">Add to Cart</button>
        </div>

    </div>
</section>

<footer>
    © 2026 NexusShop
</footer>

</body>
</html>
```
