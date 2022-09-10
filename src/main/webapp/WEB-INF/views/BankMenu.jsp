<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
 <title>Menu</title>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style>
    *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Lato', sans-serif;
  font-family: 'Oswald', sans-serif;
  
}
.wrapper{
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  /*background: linear-gradient(-135deg, #c850c0, #4158d0);*/
  /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
 /* background: linear-gradient(-45deg, #e3eefe 0%, #efddfb 100%);*/
  /* clip-path: circle(25px at calc(0% + 45px) 45px); */
  background: #000;
  clip-path: circle(25px at calc(100% - 45px) 45px);
  transition: all 0.3s ease-in-out;
}
#active ~ .wrapper{
  clip-path: circle(75%);
}
.menu-btn{
  position: absolute;
  z-index: 2;
  right: 20px;
  /* left: 20px; */
  top: 20px;
  height: 50px;
  width: 50px;
  text-align: center;
  line-height: 50px;
  border-radius: 50%;
  font-size: 20px;
  color: #fff;
  cursor: pointer;
  /*background: linear-gradient(-135deg, #c850c0, #4158d0);*/
  /* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
 /* background: linear-gradient(-45deg, #e3eefe 0%, #efddfb 100%); */
  background: #000;
  transition: all 0.3s ease-in-out;
}
#active:checked ~ .menu-btn{
  color: #fff;
}
#active:checked ~ .menu-btn i:before{
  content: "\f00d";
}
.wrapper ul{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  list-style: none;
  text-align: center;
}
.wrapper ul li{
  margin: 15px 0;
}
.wrapper ul li a{
  color: none;
  text-decoration: none;
  font-size: 30px;
  font-weight: 500;
  padding: 5px 30px;
  color: #fff;
  border-radius: 50px;
  background: #000;
  position: relative;
  line-height: 50px;
  transition: all 0.3s ease;
}
.wrapper ul li a:after{
  position: absolute;
  content: "";
  background: #fff;
   background: linear-gradient(#14ffe9, #ffeb3b, #ff00e0);
  /*background: linear-gradient(375deg, #1cc7d0, #2ede98);*/
  width: 104%;
  height: 110%;
  left: -2%;
  top: -5%; /* if the font is 'Oswald'*/
  border-radius: 50px;
  transform: scaleY(0);
  z-index: -1;
  animation: rotate 1.5s linear infinite;
  transition: transform 0.3s ease;
}
.wrapper ul li a:hover:after{
  transform: scaleY(1);
}
.wrapper ul li a:hover{
  color: #fff;
}
input[type="checkbox"]{
  display: none;
}
.content{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: -1;
  text-align: center;
  width: 100%;
  color: #202020;
}
.content .title{
  font-size: 40px;
  font-weight: 700;
}
.content p{
  font-size: 35px;
  font-weight: 600;
}

@keyframes rotate {
  0%{
    filter: hue-rotate(0deg);
  }
  100%{
    filter: hue-rotate(360deg);
  }
}
    
    </style>
  </head>

  <body>
    <input type="checkbox" id="active">
    <div class="wrapper">
  <h1 style="color:white; position:relative; font-weight:400; font-size:46px; left:48rem; top:5rem; text-shadow:0 0 6px white; ">Bank Menu</h1>
      
      <form>
      <ul>
<li><a href="register">Register</a></li>
<li><a href="deposit">Deposit</a></li>
<li><a href="withdraw">Withdraw</a></li>
<li><a href="transfer">Transfer</a></li>
<li><a href="logout">Logout</a></li>
</ul>
</form>
</div>

</body>
</html>