<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSURED</title>
<style>
/* Set height of body and the document to 100% to enable "full page tabs" */
* {
box-sizing: border-box;
}
body {
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family:sans-serif;
}
form {
  background : #000000;
  opacity : 0.5;
  height: 500px;
  width: 300px;
  margin: 60px auto;
  border-radius: 20px;
  margin-top:180px;
}
button {
box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.58);
}
form h1 {
  text-align: center;
  color: rgba(255, 255, 255, 0.42);
  padding-top: 10px;
}
.input-info {
margin-top: 10px;
margin-bottom: 10px
}
input[type="text"] {
    border: 1px solid #ffffff;
    padding: 8px;
    border-radius: 5px;
    width: 90%;
    background: none;
    color: #ffffff;
    margin: 5px 5px 5px 17px;
    outline: none;
    transition: 0.3s;
    text-indent: 15px;
    overflow: hidden;
}
.input {
    position: absolute;
    margin-top: 14px;
    margin-left: 24px;
    color: #ffffff;
    display: block;
}
.input-info input:hover {
background: #000000;
}
.input-info span {
color: #ffffff;
font-size: 11px;
}
.input-info span>a {
color:#ffffff;
}
.input-info span>a:hover {
color:#808080;
}

.signupbutton{
    padding: 10px;
    margin-top: 1px;
    background: #2D0901;
    color: #ffffff;
    width: 103px;
    border-radius: 6px;
    cursor: pointer;
    transition: 0.5s;
    border: 1px solid #435688;
    outline: none;
}
.signupbutton {
  margin-left : 30%;
  background: purple;
  border: 0.5px solid #ffffff;
}
.sign .signupbutton>a {
color: #fff;
text-decoration: none;
}
.sign button:hover{
    background:none;
    border:1px solid #828999;
    color: #828999;
}


::placeholder {
  color: white;
}

:-ms-input-placeholder {
 color: white;
}

::-ms-input-placeholder {
 color: white;
}
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
  
}
/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 20%;
}
.tablink:hover {
  background-color: #777;
}
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: 100%;
}
#ac {background-color: purple;}
#pc {background-color: purple;}
</style>
<script>
function openPage(pageName, elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}
document.getElementById("defaultOpen").click();
</script>
</head>

<body style="background-image: url('b8.png');">
<button class="tablink" onclick="openPage('AccountCreation', this,'purple')">ACCOUNT CREATION</button>

<button class="tablink" onclick="openPage('viewPolicy', this,'purple')">VIEW POLICY</button>

<div id="AccountCreation" class="tabcontent">
<form id="signupform" action="AccountDetailsServlet" method="POST">
<h1 style = "color : #ffffff; opacity : 1.9;">ACCOUNT CREATION</h1>
    <div class="input-info">
        <i class="input"></i>
        <input type="text" name="UserName" placeholder="User Name" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z ]*"  type="text"  name="InsuredName" placeholder="Insured Name" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="InsuredStreet" placeholder="Insured Street" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="InsuredCity" placeholder="Insured City" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="InsuredState" placeholder="Insured State" required>
		 <i class="input"></i>
        <input type="text" title = "Enter exactly 5 digits."  pattern="^\d{5}$" name="InsuredZip" placeholder="Insured Zip" required>
        <i class="input"></i> 
     <input type="text" name="LOB" placeholder="Business Segment" list="dr">
      <datalist id="dr">>
      <option name = BA value = "BA">Business Auto</option>
      <option name = Restuarant value = "Restuarant">Restaurant</option>
      <option name = Apartment value = "Apartment">Apartment</option>
      <option name = GenerationMerchant value = "Generation Merchant">Generation Merchant</option></select>
      </datalist>
        
    </div>
    <div class="sign">
        <a href="" target="_blank">
            <button class="signupbutton" form="signupform"><i class="input"></i><b>Create</b></button>
        </a>
    </div>
</form>

</div>



<div id="viewPolicy" class="tabcontent">
  <h3>Contact</h3>
  <p>Get in touch, or swing by for a cup of coffee.</p>
</div>

</body>
</html>