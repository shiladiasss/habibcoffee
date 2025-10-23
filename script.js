const images = ["img/cafe1.jpg", "img/cafe2.jpg", "img/cafe3.jpg"];
let currentIndex = 0;
const carouselImg = document.getElementById("carousel-img");

function showSlide(index) {
  carouselImg.src = images[index];
}

function nextSlide() {
  currentIndex = (currentIndex + 1) % images.length;
  showSlide(currentIndex);
}

function prevSlide() {
  currentIndex = (currentIndex - 1 + images.length) % images.length;
  showSlide(currentIndex);
}
