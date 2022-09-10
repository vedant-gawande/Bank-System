<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Bank Login</title>

<style>
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);
 * {
	 box-sizing: border-box;
	 margin: 0;
	 padding: 0;
	 font-weight: 300;
}
 body{
	 font-family: 'Source Sans Pro', sans-serif;
	 color: white;
	 font-weight: 300;
}
 body ::-webkit-input-placeholder {
	 font-family: 'Source Sans Pro', sans-serif;
	 color: white;
	 font-weight: 300;
}
 body :-moz-placeholder {
	 font-family: 'Source Sans Pro', sans-serif;
	 color: white;
	 opacity: 1;
	 font-weight: 300;
}
 body ::-moz-placeholder {
	 font-family: 'Source Sans Pro', sans-serif;
	 color: white;
	 opacity: 1;
	 font-weight: 300;
}
 body :-ms-input-placeholder {
	 font-family: 'Source Sans Pro', sans-serif;
	 color: white;
	 font-weight: 300;
}
 .wrapper {
	 background: #50a3a2;
	 background: -webkit-linear-gradient(top left,#50a3a2 0%,#53e3a6 100%);
	 background: -moz-linear-gradient(top left,#50a3a2 0%,#53e3a6 100%);
	 background: -o-linear-gradient(top left,#50a3a2 0%,#53e3a6 100%);
	 background: linear-gradient(to bottom right,#50a3a2 0%,#53e3a6 100%);
	 position: absolute;
	 top: 374px;
	 left: 0;
	 width: 100%;
	 height: 100%;
	 margin-top: -375px;
	 overflow: hidden;
}
 .wrapper.form-success .container h1 {
	 transform: translateY(85px);
}
 .container {
	 max-width: 600px;
	 margin: 0 auto;
	 padding: 80px 0;
	 height: 100%;
	 text-align: center;
}
 .container h1 {
	 font-size: 40px;
	 transition-duration: 1s;
	 transition-timing-function: ease-in-put;
	 font-weight: 500;
}
 form {
	 padding: 20px 0;
	 position: relative;
	 z-index: 2;
}
 form input {
	 display: block;
	 appearance: none;
	 outline: 0;
	 border: 1px solid rgba(255,255,255,0.4);
	 background-color: rgba(255,255,255,0.2);
	 width: 250px;
	 border-radius: 3px;
	 padding: 10px 15px;
	 margin: 0 auto 10px auto;
	 text-align: center;
	 font-size: 18px;
	 color: white;
	 transition-duration: 0.25s;
	 font-weight: 300;
}
 form input:hover {
	 background-color: rgba(255,255,255,0.4);
}
 form input:focus {
	 background-color: white;
	 width: 300px;
	 color: #53e3a6;
}
 form button {
	 appearance: none;
	 outline: 0;
	 background-color: white;
	 border: 0;
	 padding: 10px 15px;
	 color: #53e3a6;
	 border-radius: 3px;
	 width: 250px;
	 cursor: pointer;
	 font-size: 18px;
	 transition-duration: 0.25s;
}
 form button:hover {
	 background-color: #f5f7f9;
}
 .bg-bubbles {
	 position: absolute;
	 top: 0%;
	 left: 0;
	 width: 100%;
	 height: 100%;
	 z-index: 1;
}
 .bg-bubbles li {
	 position: absolute;
	 list-style: none;
	 display: block;
	 width: 40px;
	 height: 40px;
	 background-color: rgba(255,255,255,0.15);
	 bottom: -160px;
	 -webkit-animation: square 25s infinite;
	 animation: square 25s infinite;
	 -webkit-transition-timing-function: linear;
	 transition-timing-function: linear;
}
 .bg-bubbles li:nth-child(1) {
	 left: 10%;
}
 .bg-bubbles li:nth-child(2) {
	 left: 20%;
	 width: 80px;
	 height: 80px;
	 animation-delay: 2s;
	 animation-duration: 17s;
}
 .bg-bubbles li:nth-child(3) {
	 left: 25%;
	 animation-delay: 4s;
}
 .bg-bubbles li:nth-child(4) {
	 left: 40%;
	 width: 60px;
	 height: 60px;
	 animation-duration: 22s;
	 background-color: rgba(255,255,255,0.25);
}
 .bg-bubbles li:nth-child(5) {
	 left: 70%;
}
 .bg-bubbles li:nth-child(6) {
	 left: 80%;
	 width: 120px;
	 height: 120px;
	 animation-delay: 3s;
	 background-color: rgba(255,255,255,0.2);
}
 .bg-bubbles li:nth-child(7) {
	 left: 32%;
	 width: 160px;
	 height: 160px;
	 animation-delay: 7s;
}
 .bg-bubbles li:nth-child(8) {
	 left: 55%;
	 width: 20px;
	 height: 20px;
	 animation-delay: 15s;
	 animation-duration: 40s;
}
 .bg-bubbles li:nth-child(9) {
	 left: 25%;
	 width: 10px;
	 height: 10px;
	 animation-delay: 2s;
	 animation-duration: 40s;
	 background-color: rgba(255,255,255,0.3);
}
 .bg-bubbles li:nth-child(10) {
	 left: 90%;
	 width: 160px;
	 height: 160px;
	 animation-delay: 11s;
}
 @-webkit-keyframes square {
	 0% {
		 transform: translateY(0);
	}
	 100% {
		 transform: translateY(-700px) rotate(600deg);
	}
}
 @keyframes square {
	 0% {
		 transform: translateY(0);
	}
	 100% {
		 transform: translateY(-700px) rotate(600deg);
	}
}
.locate1{
position:relative;
top:150px;
}
.locate1 h1{
	font-weight:700;
}

 input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0;
}
 
</style>

</head>
<body>

<div class="wrapper">
	<div class="container">
	<h1 style="font-size:50px;">Bank Login</h1>
	<div class="locate1" >
		<h1 style="color:#f5f7f9; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">Welcome</h1>
		
		<form class="form" action="blogin" method="post">
			<input type="email" name="bemail" placeholder="Email" required>
			<input type="password" name="password" placeholder="Password" required>
			<button type="submit" id="login-button">Login</button><br><br>
			<a href="MenuOfLogins.html"><button type="button" >Main Menu</button></a>
		</form>
		</div>
	</div>
	

	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
</body>

</html>