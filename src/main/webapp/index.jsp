<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>NEXUS — Premium Commerce</title>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,600;1,300;1,400&family=DM+Mono:wght@300;400;500&family=Bebas+Neue&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
:root{
  --ink:#0b0b0b;
  --paper:#f5f0e8;
  --cream:#ede8dc;
  --gold:#c9a84c;
  --gold-light:#e8c97a;
  --rust:#c25b3a;
  --sage:#4a5e52;
  --muted:#6b6560;
  --card:#ffffff;
  --radius:2px;
}

*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  font-family:'DM Mono',monospace;
  background:var(--paper);
  color:var(--ink);
  -webkit-font-smoothing:antialiased;
  overflow-x:hidden;
}

/* NOISE TEXTURE OVERLAY */
body::before{
  content:'';
  position:fixed;
  inset:0;
  background-image:url("data:image/svg+xml,%3Csvg viewBox='0 0 512 512' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='0.035'/%3E%3C/svg%3E");
  pointer-events:none;
  z-index:9999;
  opacity:.5;
}

a{color:inherit;text-decoration:none}

.container{width:100%;max-width:1280px;margin:0 auto;padding:0 32px}

/* ── HEADER ── */
header{
  position:sticky;top:0;z-index:100;
  background:var(--ink);
  border-bottom:1px solid rgba(201,168,76,0.2);
}
.header-inner{
  display:flex;align-items:center;justify-content:space-between;
  padding:0;
  height:64px;
}
.brand{
  font-family:'Bebas Neue',sans-serif;
  font-size:28px;letter-spacing:4px;
  color:var(--paper);
  display:flex;align-items:center;gap:6px;
}
.brand .dot{color:var(--gold)}
.brand span{font-size:11px;font-family:'DM Mono',monospace;letter-spacing:3px;color:var(--gold);align-self:flex-end;padding-bottom:4px;font-weight:300}

nav.main-nav ul{
  display:flex;gap:0;list-style:none;
}
nav.main-nav li a{
  display:flex;align-items:center;gap:8px;
  padding:0 18px;
  height:64px;
  font-family:'DM Mono',monospace;
  font-size:11px;letter-spacing:2px;
  color:rgba(245,240,232,0.65);
  text-transform:uppercase;
  transition:color .2s,background .2s;
  border-right:1px solid rgba(255,255,255,0.04);
}
nav.main-nav li a:hover{color:var(--gold);background:rgba(201,168,76,0.05)}

.search-wrap{
  display:flex;align-items:center;
  border-left:1px solid rgba(255,255,255,0.07);
  border-right:1px solid rgba(255,255,255,0.07);
  padding:0 20px;height:64px;gap:10px;
}
.search-wrap input{
  background:transparent;border:0;outline:none;
  color:var(--paper);font-family:'DM Mono',monospace;font-size:12px;
  letter-spacing:1px;width:200px;
}
.search-wrap input::placeholder{color:rgba(245,240,232,0.3)}
.search-wrap button{background:transparent;border:0;cursor:pointer;color:rgba(245,240,232,0.5);font-size:13px;transition:color .2s}
.search-wrap button:hover{color:var(--gold)}

.header-actions{display:flex;align-items:center;gap:4px}
.icon-btn{
  background:transparent;border:0;cursor:pointer;
  color:rgba(245,240,232,0.6);font-size:15px;
  padding:0 14px;height:64px;
  display:inline-flex;align-items:center;
  transition:color .2s;
  border-right:1px solid rgba(255,255,255,0.04);
}
.icon-btn:hover{color:var(--gold)}
.cart-wrap{
  position:relative;display:flex;align-items:center;
  padding:0 20px;height:64px;
  border-left:1px solid rgba(255,255,255,0.07);
  cursor:pointer;
  color:var(--paper);transition:background .2s;
}
.cart-wrap:hover{background:rgba(201,168,76,0.08)}
.cart-wrap i{font-size:16px}
.cart-count{
  position:absolute;top:14px;right:10px;
  background:var(--gold);color:var(--ink);
  font-size:9px;font-weight:700;letter-spacing:0;
  width:16px;height:16px;border-radius:50%;
  display:grid;place-items:center;
}
.mobile-toggle{display:none;background:transparent;border:0;cursor:pointer;color:var(--paper);font-size:18px;padding:0 16px;height:64px}

/* ── HERO ── */
.hero{
  min-height:90vh;
  display:grid;
  grid-template-columns:1fr 1fr;
  position:relative;
  overflow:hidden;
}
.hero-left{
  background:var(--ink);
  display:flex;flex-direction:column;justify-content:flex-end;
  padding:80px 64px;
  position:relative;
  overflow:hidden;
}
.hero-left::before{
  content:'';
  position:absolute;top:0;left:0;right:0;bottom:0;
  background:radial-gradient(ellipse at 20% 80%,rgba(201,168,76,0.12) 0%,transparent 60%);
}
.hero-eyebrow{
  font-family:'DM Mono',monospace;font-size:10px;letter-spacing:4px;text-transform:uppercase;
  color:var(--gold);margin-bottom:24px;display:flex;align-items:center;gap:12px;
}
.hero-eyebrow::before{content:'';display:block;width:32px;height:1px;background:var(--gold)}
.hero h1{
  font-family:'Cormorant Garamond',serif;
  font-size:clamp(56px,7vw,96px);
  font-weight:300;line-height:1.0;
  color:var(--paper);
  letter-spacing:-1px;margin-bottom:28px;
}
.hero h1 em{color:var(--gold);font-style:italic}
.hero-sub{
  font-family:'DM Mono',monospace;font-size:12px;
  color:rgba(245,240,232,0.5);line-height:1.8;
  max-width:380px;margin-bottom:48px;letter-spacing:.5px;
}
.hero-ctas{display:flex;gap:16px;align-items:center;flex-wrap:wrap}
.btn-primary{
  background:var(--gold);color:var(--ink);
  font-family:'DM Mono',monospace;font-size:11px;letter-spacing:3px;text-transform:uppercase;
  padding:16px 32px;border:0;cursor:pointer;
  transition:background .2s,transform .15s;
}
.btn-primary:hover{background:var(--gold-light);transform:translateY(-1px)}
.btn-outline{
  background:transparent;color:var(--paper);
  font-family:'DM Mono',monospace;font-size:11px;letter-spacing:3px;text-transform:uppercase;
  padding:15px 32px;border:1px solid rgba(245,240,232,0.25);cursor:pointer;
  transition:border-color .2s,color .2s;
}
.btn-outline:hover{border-color:var(--gold);color:var(--gold)}

.hero-stats{
  display:flex;gap:40px;margin-top:60px;
  border-top:1px solid rgba(245,240,232,0.08);
  padding-top:32px;
}
.stat-num{font-family:'Bebas Neue',sans-serif;font-size:36px;color:var(--paper);line-height:1}
.stat-label{font-size:10px;letter-spacing:2px;color:rgba(245,240,232,0.4);margin-top:4px;text-transform:uppercase}

.hero-right{
  position:relative;overflow:hidden;
  background:#1a1a1a;
}
.hero-right img{
  width:100%;height:100%;object-fit:cover;
  opacity:.85;display:block;
  transition:transform 8s ease;
}
.hero-right:hover img{transform:scale(1.04)}
.hero-badge{
  position:absolute;top:32px;right:32px;
  background:var(--gold);
  color:var(--ink);
  font-family:'Bebas Neue',sans-serif;font-size:11px;letter-spacing:3px;
  padding:10px 18px;
  writing-mode:vertical-lr;text-orientation:mixed;
  transform:rotate(180deg);
}
.hero-scroll{
  position:absolute;bottom:32px;left:50%;transform:translateX(-50%);
  font-size:10px;letter-spacing:3px;color:rgba(245,240,232,0.4);
  text-transform:uppercase;display:flex;flex-direction:column;align-items:center;gap:8px;
}
.hero-scroll::after{content:'';display:block;width:1px;height:40px;background:rgba(201,168,76,0.4);animation:scrollPulse 2s ease-in-out infinite}
@keyframes scrollPulse{0%,100%{opacity:.3;transform:scaleY(1)}50%{opacity:1;transform:scaleY(1.3)}}

/* ── TICKER ── */
.ticker{
  background:var(--gold);
  overflow:hidden;padding:10px 0;
  white-space:nowrap;
}
.ticker-inner{
  display:inline-flex;gap:0;
  animation:tickerScroll 28s linear infinite;
}
.ticker-item{
  font-family:'Bebas Neue',sans-serif;
  font-size:13px;letter-spacing:3px;
  color:var(--ink);padding:0 32px;
  border-right:1px solid rgba(11,11,11,0.2);
}
@keyframes tickerScroll{0%{transform:translateX(0)}100%{transform:translateX(-50%)}}

/* ── SECTION COMMON ── */
.section{padding:96px 0}
.section-header{
  display:flex;align-items:flex-end;justify-content:space-between;
  margin-bottom:56px;gap:24px;
}
.section-label{
  font-family:'DM Mono',monospace;font-size:10px;letter-spacing:4px;
  text-transform:uppercase;color:var(--gold);margin-bottom:12px;
}
.section-title{
  font-family:'Cormorant Garamond',serif;
  font-size:clamp(32px,4vw,52px);font-weight:300;line-height:1.1;
  color:var(--ink);
}
.section-title em{font-style:italic;color:var(--rust)}
.section-line{width:60px;height:1px;background:var(--gold);margin-top:16px}
.view-all{
  font-family:'DM Mono',monospace;font-size:10px;letter-spacing:3px;text-transform:uppercase;
  color:var(--muted);border-bottom:1px solid currentColor;padding-bottom:2px;
  cursor:pointer;transition:color .2s;white-space:nowrap;align-self:flex-start;margin-top:8px;
}
.view-all:hover{color:var(--gold)}

/* ── CATEGORIES ── */
.categories-bg{background:var(--ink);padding:80px 0}
.cat-grid{
  display:grid;
  grid-template-columns:repeat(6,1fr);
  gap:1px;
  border:1px solid rgba(201,168,76,0.15);
}
.cat-card{
  background:rgba(245,240,232,0.03);
  padding:40px 20px;text-align:center;
  cursor:pointer;
  transition:background .25s;
  border-right:1px solid rgba(201,168,76,0.08);
  position:relative;overflow:hidden;
}
.cat-card::before{
  content:'';
  position:absolute;bottom:0;left:0;right:0;height:2px;
  background:var(--gold);
  transform:scaleX(0);transform-origin:left;
  transition:transform .3s ease;
}
.cat-card:hover::before{transform:scaleX(1)}
.cat-card:hover{background:rgba(201,168,76,0.06)}
.cat-icon{
  font-size:22px;color:var(--gold);
  margin-bottom:16px;
  display:block;
}
.cat-name{
  font-family:'Cormorant Garamond',serif;font-size:15px;font-weight:400;
  color:var(--paper);margin-bottom:6px;
}
.cat-sub{font-size:9px;letter-spacing:2px;color:rgba(245,240,232,0.35);text-transform:uppercase}

/* ── PRODUCTS ── */
.prod-grid{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:24px;
}
.product{
  background:var(--card);
  display:flex;flex-direction:column;
  cursor:pointer;
  position:relative;
  overflow:hidden;
  border:1px solid rgba(11,11,11,0.06);
  transition:border-color .25s,box-shadow .25s;
}
.product:hover{border-color:rgba(201,168,76,0.3);box-shadow:0 20px 60px rgba(11,11,11,0.08)}
.prod-img-wrap{
  position:relative;overflow:hidden;
  aspect-ratio:3/4;
  background:var(--cream);
}
.prod-img-wrap img{
  width:100%;height:100%;object-fit:cover;
  transition:transform .5s ease;display:block;
}
.product:hover .prod-img-wrap img{transform:scale(1.06)}
.prod-badge{
  position:absolute;top:16px;left:0;
  font-family:'DM Mono',monospace;font-size:9px;letter-spacing:2px;text-transform:uppercase;
  padding:6px 12px;font-weight:500;
}
.prod-badge.new{background:var(--ink);color:var(--gold)}
.prod-badge.sale{background:var(--rust);color:white}
.prod-overlay{
  position:absolute;inset:0;
  background:rgba(11,11,11,0.55);
  display:flex;align-items:center;justify-content:center;gap:12px;
  opacity:0;transition:opacity .3s;
}
.product:hover .prod-overlay{opacity:1}
.overlay-btn{
  background:var(--paper);color:var(--ink);
  border:0;cursor:pointer;
  font-family:'DM Mono',monospace;font-size:10px;letter-spacing:2px;text-transform:uppercase;
  padding:12px 20px;
  transition:background .2s;
}
.overlay-btn.primary{background:var(--gold)}
.overlay-btn:hover{background:var(--gold-light)}
.prod-body{padding:20px 20px 16px}
.prod-cat{font-size:9px;letter-spacing:3px;text-transform:uppercase;color:var(--muted);margin-bottom:8px}
.prod-name{
  font-family:'Cormorant Garamond',serif;font-size:18px;font-weight:400;
  color:var(--ink);line-height:1.3;margin-bottom:12px;
}
.prod-footer{
  display:flex;align-items:center;justify-content:space-between;
  padding:14px 20px;border-top:1px solid rgba(11,11,11,0.05);
  margin-top:auto;
}
.prod-price{
  font-family:'Cormorant Garamond',serif;font-size:22px;font-weight:600;
  color:var(--ink);
}
.prod-old{font-size:13px;color:var(--muted);text-decoration:line-through;margin-left:6px;font-weight:300}
.prod-rating{font-size:11px;color:var(--gold);letter-spacing:1px}
.wish-btn{
  background:transparent;border:1px solid rgba(11,11,11,0.1);cursor:pointer;
  width:36px;height:36px;display:grid;place-items:center;
  color:var(--muted);transition:all .2s;
}
.wish-btn:hover{background:var(--ink);color:var(--gold);border-color:var(--ink)}

/* ── DEAL SECTION ── */
.deal-section{background:var(--cream);padding:0}
.deal-grid{display:grid;grid-template-columns:5fr 7fr;min-height:560px}
.deal-img{position:relative;overflow:hidden}
.deal-img img{width:100%;height:100%;object-fit:cover;display:block}
.deal-img-overlay{
  position:absolute;inset:0;
  background:linear-gradient(to right,rgba(11,11,11,0.3),transparent);
}
.deal-content{
  padding:80px 72px;
  display:flex;flex-direction:column;justify-content:center;
  background:var(--ink);
}
.deal-tag{
  display:inline-flex;align-items:center;gap:12px;
  font-family:'DM Mono',monospace;font-size:10px;letter-spacing:4px;text-transform:uppercase;
  color:var(--gold);margin-bottom:24px;
}
.deal-tag::after{content:'';display:block;width:40px;height:1px;background:var(--gold)}
.deal-title{
  font-family:'Cormorant Garamond',serif;
  font-size:clamp(36px,5vw,64px);font-weight:300;line-height:1.05;
  color:var(--paper);margin-bottom:16px;
}
.deal-desc{font-size:12px;color:rgba(245,240,232,0.5);line-height:1.8;margin-bottom:40px;max-width:420px}
.timer{display:flex;gap:12px;margin-bottom:40px}
.time-box{
  text-align:center;
  border:1px solid rgba(201,168,76,0.25);
  padding:16px 20px;min-width:80px;
}
.time-num{font-family:'Bebas Neue',sans-serif;font-size:40px;line-height:1;color:var(--paper)}
.time-lbl{font-size:9px;letter-spacing:3px;text-transform:uppercase;color:rgba(245,240,232,0.4);margin-top:4px}
.deal-price-row{display:flex;align-items:baseline;gap:14px;margin-bottom:36px}
.deal-price{font-family:'Cormorant Garamond',serif;font-size:48px;font-weight:300;color:var(--gold)}
.deal-old{font-family:'Cormorant Garamond',serif;font-size:24px;color:rgba(245,240,232,0.3);text-decoration:line-through}
.deal-save{
  background:var(--rust);color:white;
  font-family:'DM Mono',monospace;font-size:10px;letter-spacing:2px;
  padding:6px 12px;align-self:center;
}

/* ── TESTIMONIALS ── */
.test-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:24px}
.testimonial{
  background:white;padding:36px;
  border:1px solid rgba(11,11,11,0.05);
  position:relative;
  transition:border-color .25s;
}
.testimonial:hover{border-color:rgba(201,168,76,0.3)}
.test-stars{color:var(--gold);font-size:13px;margin-bottom:20px;letter-spacing:2px}
.test-quote{
  font-family:'Cormorant Garamond',serif;font-size:17px;font-weight:300;
  line-height:1.7;color:var(--ink);margin-bottom:28px;
  font-style:italic;
}
.test-author{display:flex;align-items:center;gap:14px}
.test-avatar{width:44px;height:44px;border-radius:0;object-fit:cover;filter:grayscale(30%)}
.test-name{font-size:12px;letter-spacing:1px;color:var(--ink);font-weight:500}
.test-role{font-size:10px;letter-spacing:2px;color:var(--muted);margin-top:3px;text-transform:uppercase}
.test-num{
  position:absolute;top:24px;right:24px;
  font-family:'Bebas Neue',sans-serif;font-size:60px;
  color:rgba(11,11,11,0.04);line-height:1;
}

/* ── NEWSLETTER ── */
.newsletter-section{background:var(--sage);padding:80px 0}
.newsletter-inner{
  display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center;
}
.news-left .section-title{color:var(--paper)}
.news-left .section-title em{color:var(--gold-light)}
.news-left p{font-size:12px;color:rgba(245,240,232,0.6);line-height:1.8;margin-top:16px}
.news-form{display:flex;flex-direction:column;gap:12px}
.news-form input{
  background:rgba(245,240,232,0.08);border:1px solid rgba(245,240,232,0.2);
  color:var(--paper);font-family:'DM Mono',monospace;font-size:12px;letter-spacing:1px;
  padding:16px 20px;outline:none;
  transition:border-color .2s;
}
.news-form input:focus{border-color:var(--gold-light)}
.news-form input::placeholder{color:rgba(245,240,232,0.35)}
.news-form button{
  background:var(--gold);color:var(--ink);
  font-family:'DM Mono',monospace;font-size:11px;letter-spacing:3px;text-transform:uppercase;
  padding:16px;border:0;cursor:pointer;
  transition:background .2s;
  align-self:flex-start;padding:16px 40px;
}
.news-form button:hover{background:var(--gold-light)}
.news-msg{font-size:11px;color:var(--gold-light);letter-spacing:1px;display:none;margin-top:4px}

/* ── FOOTER ── */
footer{background:var(--ink);color:var(--paper);padding:72px 0 36px}
.footer-grid{
  display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:48px;
  padding-bottom:60px;border-bottom:1px solid rgba(245,240,232,0.06);
  margin-bottom:32px;
}
.footer-brand{
  font-family:'Bebas Neue',sans-serif;font-size:32px;letter-spacing:4px;
  color:var(--paper);margin-bottom:16px;
}
.footer-brand span{color:var(--gold)}
.footer-desc{font-size:11px;color:rgba(245,240,232,0.4);line-height:1.9;max-width:300px}
.footer-socials{display:flex;gap:12px;margin-top:28px}
.footer-social{
  width:36px;height:36px;display:grid;place-items:center;
  border:1px solid rgba(245,240,232,0.12);
  color:rgba(245,240,232,0.5);font-size:13px;cursor:pointer;
  transition:all .2s;
}
.footer-social:hover{border-color:var(--gold);color:var(--gold)}
.footer-col-title{
  font-family:'DM Mono',monospace;font-size:10px;letter-spacing:3px;text-transform:uppercase;
  color:var(--gold);margin-bottom:24px;
}
.footer-col ul{list-style:none}
.footer-col li{margin-bottom:12px}
.footer-col a{font-size:12px;color:rgba(245,240,232,0.45);transition:color .2s;letter-spacing:.5px}
.footer-col a:hover{color:var(--paper)}
.footer-bottom{
  display:flex;justify-content:space-between;align-items:center;
  font-size:10px;letter-spacing:2px;color:rgba(245,240,232,0.25);
}

/* ── MOBILE MENU ── */
#mobileMenu{display:none;background:var(--ink);border-top:1px solid rgba(201,168,76,0.1)}
#mobileMenu ul{list-style:none;padding:20px 32px}
#mobileMenu li a{
  display:block;padding:12px 0;
  font-family:'DM Mono',monospace;font-size:12px;letter-spacing:3px;text-transform:uppercase;
  color:rgba(245,240,232,0.7);
  border-bottom:1px solid rgba(255,255,255,0.04);
}

/* ── ANIMATIONS ── */
@keyframes fadeUp{from{opacity:0;transform:translateY(24px)}to{opacity:1;transform:translateY(0)}}
.fade-up{opacity:0;animation:fadeUp .6s ease forwards}
.fade-up:nth-child(1){animation-delay:.05s}
.fade-up:nth-child(2){animation-delay:.15s}
.fade-up:nth-child(3){animation-delay:.25s}
.fade-up:nth-child(4){animation-delay:.35s}
.fade-up:nth-child(5){animation-delay:.45s}
.fade-up:nth-child(6){animation-delay:.55s}
.fade-up:nth-child(7){animation-delay:.65s}
.fade-up:nth-child(8){animation-delay:.75s}

/* ── RESPONSIVE ── */
@media(max-width:1100px){
  .prod-grid{grid-template-columns:repeat(3,1fr)}
  .cat-grid{grid-template-columns:repeat(3,1fr)}
  .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:900px){
  nav.main-nav{display:none}
  .mobile-toggle{display:inline-flex}
  .hero{grid-template-columns:1fr;min-height:auto}
  .hero-right{height:50vw}
  .hero-left{padding:60px 32px}
  .deal-grid{grid-template-columns:1fr}
  .deal-content{padding:48px 40px}
  .newsletter-inner{grid-template-columns:1fr}
  .test-grid{grid-template-columns:1fr}
  .prod-grid{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:640px){
  .container{padding:0 20px}
  .prod-grid{grid-template-columns:1fr}
  .cat-grid{grid-template-columns:repeat(2,1fr)}
  .footer-grid{grid-template-columns:1fr}
  .search-wrap{display:none}
  .timer{gap:8px}
  .time-box{min-width:64px;padding:12px}
}
</style>
</head>
<body>

<!-- HEADER -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:0">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">NEXUS<span class="dot">.</span><span>SHOP</span></a>
    </div>
    <nav class="main-nav">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Collections</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#deal-section">Deals</a></li>
        <li><a href="#about">About</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center">
      <div class="search-wrap">
        <i class="fas fa-search" style="color:rgba(245,240,232,0.3);font-size:12px"></i>
        <input type="search" id="searchInput" placeholder="SEARCH PRODUCTS...">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <div class="header-actions">
        <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
        <a class="icon-btn" title="Wishlist" href="#"><i class="far fa-heart"></i></a>
        <a class="cart-wrap" href="#" id="cartBtn" title="Cart">
          <i class="fas fa-bag-shopping"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Collections</a></li>
      <li><a href="#">Trending</a></li>
      <li><a href="#deal-section">Deals</a></li>
      <li><a href="#about">About</a></li>
    </ul>
  </div>
</header>

<!-- HERO -->
<section class="hero">
  <div class="hero-left">
    <div class="hero-eyebrow">Winter Collection 2025</div>
    <h1>Crafted for<br>the <em>Bold</em><br>& Refined.</h1>
    <p class="hero-sub">Discover curated pieces at the intersection of luxury and function — from cutting-edge technology to premium fashion.</p>
    <div class="hero-ctas">
      <button class="btn-primary" id="shopNow">Explore Collection</button>
      <button class="btn-outline" id="exploreDeals">View Deals &rarr;</button>
    </div>
    <div class="hero-stats">
      <div>
        <div class="stat-num">2.4K+</div>
        <div class="stat-label">Products</div>
      </div>
      <div>
        <div class="stat-num">98%</div>
        <div class="stat-label">Satisfaction</div>
      </div>
      <div>
        <div class="stat-num">140+</div>
        <div class="stat-label">Brands</div>
      </div>
    </div>
    <div class="hero-scroll">Scroll</div>
  </div>
  <div class="hero-right">
    <img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1200&q=80" alt="Hero fashion">
    <div class="hero-badge">NEW ARRIVALS</div>
  </div>
</section>

<!-- TICKER -->
<div class="ticker" aria-hidden="true">
  <div class="ticker-inner">
    <span class="ticker-item">FREE SHIPPING OVER $150</span>
    <span class="ticker-item">NEW COLLECTION JUST DROPPED</span>
    <span class="ticker-item">PREMIUM QUALITY GUARANTEED</span>
    <span class="ticker-item">EASY 30-DAY RETURNS</span>
    <span class="ticker-item">MEMBERS GET 15% OFF</span>
    <span class="ticker-item">LIMITED EDITION PIECES</span>
    <span class="ticker-item">FREE SHIPPING OVER $150</span>
    <span class="ticker-item">NEW COLLECTION JUST DROPPED</span>
    <span class="ticker-item">PREMIUM QUALITY GUARANTEED</span>
    <span class="ticker-item">EASY 30-DAY RETURNS</span>
    <span class="ticker-item">MEMBERS GET 15% OFF</span>
    <span class="ticker-item">LIMITED EDITION PIECES</span>
  </div>
</div>

<!-- CATEGORIES -->
<section class="categories-bg">
  <div class="container">
    <div class="section-header">
      <div>
        <div class="section-label">Browse</div>
        <h2 class="section-title">Shop by<br><em>Category</em></h2>
        <div class="section-line"></div>
      </div>
      <div class="view-all">View all categories →</div>
    </div>
    <div class="cat-grid" id="categoriesGrid" aria-live="polite"></div>
  </div>
</section>

<!-- PRODUCTS -->
<section class="section container" id="products-section">
  <div class="section-header">
    <div>
      <div class="section-label">Curated</div>
      <h2 class="section-title">Trending<br><em>Products</em></h2>
      <div class="section-line"></div>
    </div>
    <div class="view-all">View all products →</div>
  </div>
  <div class="prod-grid" id="productsGrid" aria-live="polite"></div>
</section>

<!-- DEAL -->
<section class="deal-section" id="deal-section">
  <div class="deal-grid">
    <div class="deal-img">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2">
      <div class="deal-img-overlay"></div>
    </div>
    <div class="deal-content">
      <div class="deal-tag">Flash Sale</div>
      <h2 class="deal-title">MacBook Air<br>M2 Chip</h2>
      <p class="deal-desc">Featherlight engineering meets relentless performance. Now available at an unprecedented price — for a limited time only.</p>
      <div class="timer">
        <div class="time-box">
          <div class="time-num" id="dealDays">00</div>
          <div class="time-lbl">Days</div>
        </div>
        <div class="time-box">
          <div class="time-num" id="dealHours">00</div>
          <div class="time-lbl">Hrs</div>
        </div>
        <div class="time-box">
          <div class="time-num" id="dealMinutes">00</div>
          <div class="time-lbl">Min</div>
        </div>
        <div class="time-box">
          <div class="time-num" id="dealSeconds">00</div>
          <div class="time-lbl">Sec</div>
        </div>
      </div>
      <div class="deal-price-row">
        <div class="deal-price">$999</div>
        <div class="deal-old">$1,199</div>
        <div class="deal-save">-17% OFF</div>
      </div>
      <button class="btn-primary" id="buyDeal" style="align-self:flex-start">Add to Cart →</button>
    </div>
  </div>
</section>

<!-- TESTIMONIALS -->
<section class="section container">
  <div class="section-header">
    <div>
      <div class="section-label">Reviews</div>
      <h2 class="section-title">What Our<br><em>Clients</em> Say</h2>
      <div class="section-line"></div>
    </div>
  </div>
  <div class="test-grid">
    <div class="testimonial">
      <div class="test-num">01</div>
      <div class="test-stars">★★★★★</div>
      <p class="test-quote">"Fast shipping and exceptional customer support. The product exceeded every expectation I had. Truly premium."</p>
      <div class="test-author">
        <img class="test-avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin">
        <div>
          <div class="test-name">Ava Martin</div>
          <div class="test-role">Verified Buyer</div>
        </div>
      </div>
    </div>
    <div class="testimonial">
      <div class="test-num">02</div>
      <div class="test-stars">★★★★★</div>
      <p class="test-quote">"The curation is unmatched. Every item feels hand-picked with care. The checkout experience is seamless too."</p>
      <div class="test-author">
        <img class="test-avatar" src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="Michael Lee">
        <div>
          <div class="test-name">Michael Lee</div>
          <div class="test-role">Frequent Buyer</div>
        </div>
      </div>
    </div>
    <div class="testimonial">
      <div class="test-num">03</div>
      <div class="test-stars">★★★★★</div>
      <p class="test-quote">"I've shopped here for two years. The quality is consistent and the customer experience is genuinely world-class."</p>
      <div class="test-author">
        <img class="test-avatar" src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80" alt="Priya Sharma">
        <div>
          <div class="test-name">Priya Sharma</div>
          <div class="test-role">Loyal Member</div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- NEWSLETTER -->
<section class="newsletter-section">
  <div class="container">
    <div class="newsletter-inner">
      <div class="news-left">
        <div class="section-label">Stay Ahead</div>
        <h2 class="section-title" style="color:var(--paper)">Get Exclusive<br><em>Access</em> First.</h2>
        <p>Join our inner circle for early access to new arrivals, members-only pricing, and curated editorial drops — delivered to your inbox.</p>
      </div>
      <div>
        <form class="news-form" id="newsletterForm" onsubmit="return false">
          <input type="text" placeholder="Full name">
          <input type="email" id="newsletterEmail" placeholder="Email address" required>
          <button type="submit" id="subscribeBtn">Subscribe Now</button>
          <div class="news-msg" id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </div>
</section>

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="footer-brand">NEXUS<span>.</span>SHOP</div>
        <p class="footer-desc">A modern editorial commerce experience — curating the finest in technology, fashion, and lifestyle accessories.</p>
        <div class="footer-socials">
          <a class="footer-social" href="#"><i class="fab fa-instagram"></i></a>
          <a class="footer-social" href="#"><i class="fab fa-twitter"></i></a>
          <a class="footer-social" href="#"><i class="fab fa-pinterest"></i></a>
          <a class="footer-social" href="#"><i class="fab fa-linkedin"></i></a>
        </div>
      </div>
      <div class="footer-col">
        <div class="footer-col-title">Company</div>
        <ul>
          <li><a href="#">About</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Press</a></li>
          <li><a href="#">Sustainability</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <div class="footer-col-title">Support</div>
        <ul>
          <li><a href="#">Help Center</a></li>
          <li><a href="#">Shipping & Returns</a></li>
          <li><a href="#">Track Order</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <div class="footer-col-title">Legal</div>
        <ul>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">Terms of Service</a></li>
          <li><a href="#">Cookie Settings</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>© <span id="year"></span> NEXUS.SHOP — ALL RIGHTS RESERVED</span>
      <span>CRAFTED WITH INTENTION</span>
    </div>
  </div>
</footer>

<script>
const CATEGORIES=[
  {id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button',sub:'32 items'},
  {id:'laptops',name:'Laptops',icon:'fa-laptop',sub:'18 items'},
  {id:'clothing',name:'Clothing',icon:'fa-shirt',sub:'94 items'},
  {id:'gadgets',name:'Gadgets',icon:'fa-headphones',sub:'45 items'},
  {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',sub:'27 items'},
  {id:'accessories',name:'Accessories',icon:'fa-watch',sub:'61 items'}
];
const PRODUCTS=[
  {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',category:'phones'},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',category:'laptops'},
  {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'-25%',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',category:'footwear'},
  {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',category:'gadgets'},
  {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',category:'gadgets'}
];

let cartCount=0;
const cartCountEl=document.getElementById('cartCount');
const searchInput=document.getElementById('searchInput');

function esc(t){return String(t).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]))}

function renderCategories(){
  const g=document.getElementById('categoriesGrid');
  g.innerHTML='';
  CATEGORIES.forEach((cat,i)=>{
    const el=document.createElement('div');
    el.className='cat-card fade-up';
    el.innerHTML=`<i class="fas ${cat.icon} cat-icon"></i><div class="cat-name">${cat.name}</div><div class="cat-sub">${cat.sub}</div>`;
    el.addEventListener('click',()=>{searchInput.value=cat.name;filterProducts(cat.name);document.getElementById('products-section').scrollIntoView({behavior:'smooth',block:'start'})});
    g.appendChild(el);
  });
}

function renderProducts(list){
  const g=document.getElementById('productsGrid');
  g.innerHTML='';
  list.forEach((p,i)=>{
    const el=document.createElement('article');
    el.className='product fade-up';
    const badge=p.badge?`<div class="prod-badge ${p.badge.startsWith('-')?'sale':'new'}">${esc(p.badge)}</div>`:'';
    el.innerHTML=`
      <div class="prod-img-wrap">
        ${badge}
        <img src="${p.img}" alt="${esc(p.title)}" loading="lazy">
        <div class="prod-overlay">
          <button class="overlay-btn add-btn" data-id="${p.id}"><i class="fas fa-bag-shopping"></i> Add to Bag</button>
          <button class="overlay-btn wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        </div>
      </div>
      <div class="prod-body">
        <div class="prod-cat">${esc(p.category)}</div>
        <div class="prod-name">${esc(p.title)}</div>
      </div>
      <div class="prod-footer">
        <div>
          <span class="prod-price">$${p.price.toLocaleString()}</span>
          ${p.oldPrice?`<span class="prod-old">$${p.oldPrice.toLocaleString()}</span>`:''}
        </div>
        <div class="prod-rating">${'★'.repeat(Math.round(p.rating))}</div>
      </div>`;
    g.appendChild(el);
  });
  g.querySelectorAll('.add-btn').forEach(btn=>{
    btn.addEventListener('click',e=>{e.stopPropagation();addToCart(Number(btn.dataset.id))});
  });
}

function addToCart(id){
  const p=PRODUCTS.find(x=>x.id===id);if(!p)return;
  cartCount++;cartCountEl.textContent=cartCount;
  const btn=document.querySelector(`.add-btn[data-id="${id}"]`);
  if(btn){const orig=btn.innerHTML;btn.innerHTML='<i class="fas fa-check"></i> Added';btn.disabled=true;setTimeout(()=>{btn.innerHTML=orig;btn.disabled=false},1400)}
}

function filterProducts(q){
  const query=String(q||'').trim().toLowerCase();
  renderProducts(query?PRODUCTS.filter(p=>p.title.toLowerCase().includes(query)||p.category.toLowerCase().includes(query)):PRODUCTS);
}

document.getElementById('searchBtn').addEventListener('click',()=>filterProducts(searchInput.value));
searchInput.addEventListener('keydown',e=>{if(e.key==='Enter')filterProducts(e.target.value)});
document.getElementById('mobileToggle').addEventListener('click',()=>{
  const m=document.getElementById('mobileMenu');
  m.style.display=m.style.display==='block'?'none':'block';
});
document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('products-section').scrollIntoView({behavior:'smooth'}));
document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deal-section').scrollIntoView({behavior:'smooth'}));
document.getElementById('buyDeal').addEventListener('click',()=>{cartCount++;cartCountEl.textContent=cartCount;document.getElementById('buyDeal').textContent='Added ✓';setTimeout(()=>document.getElementById('buyDeal').textContent='Add to Cart →',1500)});

document.getElementById('newsletterForm').addEventListener('submit',e=>{
  e.preventDefault();
  const email=document.getElementById('newsletterEmail').value.trim();
  const msg=document.getElementById('newsletterMsg');
  if(!email||!email.includes('@')){msg.style.display='block';msg.style.color='#ffb3b3';msg.textContent='Please enter a valid email.';return}
  msg.style.display='block';msg.style.color='var(--gold-light)';msg.textContent='You\'re in. Welcome to the inner circle.';
  document.getElementById('newsletterEmail').value='';
  setTimeout(()=>msg.style.display='none',4000);
});

(function dealTimer(){
  const target=new Date(Date.now()+(24*60+36)*60*1000);
  function tick(){
    const d=target-new Date();
    if(d<=0)return;
    document.getElementById('dealDays').textContent=String(Math.floor(d/(24*3600*1000))).padStart(2,'0');
    document.getElementById('dealHours').textContent=String(Math.floor((d%(24*3600*1000))/(3600*1000))).padStart(2,'0');
    document.getElementById('dealMinutes').textContent=String(Math.floor((d%(3600*1000))/(60*1000))).padStart(2,'0');
    document.getElementById('dealSeconds').textContent=String(Math.floor((d%(60*1000))/1000)).padStart(2,'0');
  }
  tick();setInterval(tick,1000);
})();

// Intersection Observer for fade-up animations on scroll
const obs=new IntersectionObserver((entries)=>{
  entries.forEach(e=>{if(e.isIntersecting){e.target.style.animationPlayState='running'}});
},{threshold:.1});

document.getElementById('year').textContent=new Date().getFullYear();
renderCategories();
renderProducts(PRODUCTS);
document.querySelectorAll('.fade-up').forEach(el=>{el.style.animationPlayState='paused';obs.observe(el)});
</script>
</body>
</html>
