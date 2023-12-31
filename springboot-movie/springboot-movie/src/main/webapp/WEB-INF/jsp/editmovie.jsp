<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
        background-image: url('https://i.pinimg.com/originals/eb/86/c6/eb86c6b0026e51aef59062ee50a8fbce.jpg'); /* Resmin dosya adını ve uzantısını belirtin */
            background-size: cover; /* Resmi kaplamak için */
            background-position: center; /* Resmin ortalanması için */
            background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        table {
            width: 70%;
            margin: 20px;
            border-collapse: separate;
            border-spacing: 0 15px;
            background-color: #fff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            overflow: hidden;
        }

        th, td {
            padding: 20px;
            border-bottom: 2px solid #ddd;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            font-weight: bold;
        }

        textarea {
            width: calc(100% - 40px);
            padding: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 16px;
            resize: none; /* Yatay boyut değişimi için: none; Dikey boyut değişimi için: vertical; Her iki yönde değişim için: both; */
        }

        input[type="submit"] , input[type="reset"]{
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            padding: 15px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
        }

        input[type="submit"]:hover , input[type="reset"]:hover {
            background-color: #45a049;
        }
         h1 {
            border: 2px solid white; /* Kenarlık eklemek için */
            background-color:#74e937; /* Saydamlık eklemek için rgba kullanabilirsiniz */
            padding: 20px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Gölge eklemek için */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8); /* Metin gölgesi eklemek için */
        }
        
    </style>
</head>
<body>
 <form:form method="POST" action="/editSaveMovie">
<table>
<tr>
<form:hidden path="id"/>
</tr>
<tr>
	<td><b>Title</b></td>
	<td><form:input path="title"/></td>
</tr>
<tr>
	<td><b>Description</b></td>
	<td><form:input path="description"/></td>
</tr>
<tr>
	<td><b>ImageUrl</b></td>
	<td><form:input path="imageUrl"/></td>
</tr>
<tr>
	<td><b>MoviePrice</b></td>
	<td><form:input path="moviePrice"/></td>
</tr>
</table>
<tr>
	<td>&nbsp;</td>
	<td><input type="submit" value="Güncelle"></td>
	<td><input type="reset" value="Sıfırla"></td>
</tr>
</form:form>
</body>
</html>