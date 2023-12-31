<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
        body {
        	background-image: url('https://i.pinimg.com/originals/eb/86/c6/eb86c6b0026e51aef59062ee50a8fbce.jpg');
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 50px auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 5px;
        }

        th, td {
        	position: relative;
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            border-right: 1px solid #ddd;
        }

        th:last-child, td:last-child {
            border-right: none; /* Son sütundaki hücrelerin sağ kenarlığını kaldır */
        }

        th {
            background-color: #4CAF50;
            color: white;
            border-right: 1px solid #ddd; /* Başlık hücrelerinin sağ kenarlık */
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
     <style>
        button {
        	margin-left: 100px;
            padding: 15px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
    <style>

        .menu {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 200px;
            height: 100%;
            background-color: #333;
            padding-top: 50px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }

        .menu a {
            padding: 15px;
            color: white;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s;
        }

        .menu a:hover {
            background-color: #555;
        }

        .menu-icon {
            font-size: 24px;
            cursor: pointer;
            margin-left: 20px;
        }
        
         .close-button {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 20px;
            color: white;
            cursor: pointer;
        }
        
         .edit {
            padding: 8px;
            cursor: pointer;
            position: absolute;
            top: 0;
            right: 0;
        }
        h1 {
            border: 2px solid white; /* Kenarlık eklemek için */
            background-color:#74e937; /* Saydamlık eklemek için rgba kullanabilirsiniz */
            padding: 20px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Gölge eklemek için */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8); /* Metin gölgesi eklemek için */
        }
          .login-btn {
            background-color: #e67e22; /* Turuncu tonu */
            color: #ecf0f1;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
           .register-btn-container {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="register-btn-container">
        <button type="button" class="login-btn" onclick="redirectToRegisterPage()">Kayıt Ol</button>
    </div>
<div class="menu-icon" onclick="toggleMenu()">☰</div>
    
    <div class="menu" id="menu">
        <span class="close-button" onclick="toggleMenu()">✖</span>
        <a href="/newmovie">Film Ekle</a>
    </div>
    <script>
        function toggleMenu() {
            var menu = document.getElementById('menu');
            menu.style.display = (menu.style.display === 'block' || menu.style.display === '') ? 'none' : 'block';
        }
    </script>
<h1 style="text-align: center;">Movie Listesi</h1>

<table>
<th style="width: 200px;" height="50px"><b>Film Adı</b></th>
<th style="width: 200px" height="50px"><b>Konusu</b></th>
<th style="width: 200px" height="50px"><b>Fotoğrafı</b></th>
<th style="width: 200px" height="50px"><b>Bilet Ücreti</b></th>

<c:forEach items="${movieList}" var="movie">
<tr style="text-align: center;">
<td style="width: 200px;" height="50px" >${movie.title}<button class="edit" ><a href="/editmovie/${movie.id}">✎</a></button></td>
<td style="width: 200px;" height="50px">${movie.description}</td>
<td style="width: 200px;" height="50px"><img  src="${movie.imageUrl}" width="200px"  height="50px"></td>
<td style="width: 200px;" height="50px" >${movie.moviePrice}$</td>


</tr>
</c:forEach>
</table>
<br>
   
</body>
</html>