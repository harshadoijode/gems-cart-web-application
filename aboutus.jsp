
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
<%@ include file="hometabs.html" %>
<center><br>
<br>

<p>About Us</p>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/1.jpg" style="width:90%" height="500">
  <div class="text" style="font-size:24px; color:red;">Before being set in jewelry, most gemstones are first cut and polished. Facets are cut into the gems in order to reflect light and give the stones the sparkle for which they are known. Alternatively, gems can be cut into a rounded, smooth, cabochon shape. Opaque gems, such as opals, are typically cut into cabochon shapes, while transparent stones are usually faceted, though they are sometimes cut into cabochons as well. Popular cuts vary due to period, as well. The cushion cut, for example, was a prime choice for Victorian era-jewelry. Once cut, the stones are polished to prepare them for use in jewelry.</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/2.jpg" style="width:900%" height="500">
  <div class="text" style="font-size:24px; color:red;"> Ever-popular birthstones are a favorite type of gemstone jewelry. Each month is associated with a different type of gem, which is called the birthstone of anyone who was born during that month. Some months have two or even three birthstones associated with them. Birthstones include both precious gems, such as diamonds and rubies, and semi-precious stones, such as turquoise. Birthstone jewelry makes an excellent gift for a friend or loved one, especially for Christmas, Valentine's Day and, of course, birthdays.</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/3.jpg" style="width:90%"height="500">
  <div class="text" style="font-size:24px; color:red;"> Gemstones symbolize more than your birth month, however. Some are even known to have unique healing properties. In order to feel the energetic vibe of a gem, many people choose to wear certain gems as jewelry. The four most sought-after precious gemstones are diamonds, sapphires, emeralds, and rubies.Diamond is the April birthstone.Associated with eternity, courage and health,Diamond is a symbol of love.May's birthstone is Emerald,The most prized and valuable of the green gemstones.Like Diamond,Emerald is considered to be a symbol of love,and is also associated with godness and fidelity.Ruby is the birthstone for July.one of the big four gemstones and the most precious of the red gemstones,Ruby's lustre and rarity make it one of the most desirable gemstones.Associated with enthusiasm,strength and love, Ruby is also believed toward off evil.Although the most precious of all blue gemstones,September's birthstone,Sapphire,comes in a host of colours.Sapphire is one of the big Four gemstones,and is associated with serenity and truth,as well as warding against evil,especially poison  </div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
</center>

<br>
<br>
<br>
<br>
<br>


<div class="container">
  <div class="jumbotron">
    <h1>Production</h1>
    <p>Production steps are shown in the below</p> 
  </div>
  <div class="row">
    <div class="col-sm-4">
      <h3>Step 1</h3>
    
      <p>After a gemstone is sawed and ground to the desired shape and sanded to remove rough marks left by coarser grits, it is usually polished to a mirror-like finish to aid light reflection from the surface of the stone</p>
    </div>
    <div class="col-sm-4">
      <h3>Step 2</h3>
    
      <p>When a gemcutter desires a hole in or through a gemstone (e.g., a bead), a small rotating rod or tube with a diamond tip, or a slurry of silicon carbide and coolant, is used to drill through the stone.
 Large quantities of roughly shaped stones are often tumbled, i.e., turned at a slow speed in a rotating barrel with abrasives and water for extended periods</p>
    </div>
    <div class="col-sm-4">
      <h3>Step 3</h3>        
     
      <p>Lapping is very similar to grinding and sanding, except that it is performed on one side of a rotating or vibrating flat disk known as a lap, and it is used especially to create flat surfaces on a stone


    </div>
  </div>
</div>
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

</body>
</html> 
