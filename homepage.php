<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>HABIB COFFEE</title>
  <link rel="stylesheet" href="homepage.css">
  <script src="script.js" defer></script>
</head>
<body>

  <!-- Header -->
  <header>
    <div class="logo">HABIB COFFEE</div>
    <nav>
      <ul>
        <li><a href="#">Cafés</a></li>
        <li><a href="#">Acessórios</a></li>
        <li><a href="#">Promoções</a></li>
      </ul>
    </nav>
    <div class="user-cart">
      <a href="login.php">Login</a> | <a href="cadastro.php">Cadastro</a>
      <a href="#" class="cart">🛒</a>
    </div>
  </header>

  <!-- Carrossel -->
<section class="carousel">
  <button class="arrow left" onclick="prevSlide()">❮</button>
  <img id="carousel-img" src="img/arabe.png" alt="Café 1">
  <img id="carousel-img" src="img/cafe.png" alt="Café 2">
  <img id="carousel-img" src="img/colheita.png" alt="Café 3">
  <button class="arrow right" onclick="nextSlide()">❯</button>
</section>

  <!-- Produtos -->
  <main>
    <h2>Produtos em Destaque</h2>
    <div class="products">
      <?php
        $produtos = [
          ["nome" => "Café Arábico Premium", "preco" => "R$ 49,90", "img" => "img/prod1.jpg"],
          ["nome" => "Café Gourmet Etíope", "preco" => "R$ 59,90", "img" => "img/prod2.jpg"],
          ["nome" => "Café Libanês Tradicional", "preco" => "R$ 39,90", "img" => "img/prod3.jpg"],
        ];
        foreach ($produtos as $p) {
          echo "<div class='product'>
                  <img src='{$p['img']}' alt='{$p['nome']}'>
                  <h3>{$p['nome']}</h3>
                  <p>{$p['preco']}</p>
                </div>";
        }
      ?>
    </div>
  </main>

  <!-- Footer -->
  <footer>
    <div class="footer-info">
      <p>📍 Rua dos Cedros, 123 - Curitiba, PR</p>
      <p>📞 (41) 99999-9999 | 📱 WhatsApp: (41) 98888-8888</p>
      <p>✉️ contato@habibcoffee.com.br</p>
      <p>💬 Feedbacks: contato@habibcoffee.com.br</p>
    </div>
    <div class="footer-social">
      <a href="#">Instagram</a>
      <a href="#">Facebook</a>
      <a href="#">YouTube</a>
    </div>
  </footer>

</body>
</html>
