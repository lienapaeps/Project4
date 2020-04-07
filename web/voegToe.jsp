<%--
  Created by IntelliJ IDEA.
  User: paeps
  Date: 7/04/2020
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style/style.css">
    <title>Voeg toe</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a id="current" href="voegToe.jsp">Voeg toe</a></li>
            <li><a href="Servlet">Overzicht</a></li>
        </ul>
    </nav>
    <h1>Voeg een film toe</h1>
</header>

<main>
    <form method="POST" action="Servlet" novalidate>
        <label for="titel">Titel:*</label>
        <input type="text" name="titel" id="titel" value="" required>

        <label for="genre">Genre:*</label>
        <select id="genre" name="genre" value="" required>
            <option value="Actie">Actie</option>
            <option value="Animatie">Animatie</option>
            <option value="Avontuur">Avontuur</option>
            <option value="Doc">Documentaire</option>
            <option value="Drama">Drama</option>
            <option value="Fantasy">Fantasy</option>
            <option value="Historisch">Historisch</option>
            <option value="Horror">Horror</option>
            <option value="Kind">Kind</option>
            <option value="Komedie">Komedie</option>
            <option value="Misdaad">Misdaad</option>
            <option value="Mysterie">Mysterie</option>
            <option value="Oorlog">Oorlog</option>
            <option value="Sf">Sciencefiction</option>
            <option value="Thriller">Thriller</option>
        </select>

        <label for="speelduur">Speelduur:*</label>
        <input type="number" name="speelduur" value="" id="speelduur">

        <label for="rating">Rating:* <output id="amount" name="amount" for="rating">5</output>/10</label>
        <input type="range" id="rating" name="rating" required min="0" max="10" value="5" oninput="amount.value=rating.value">

        <input type="submit" value="Voeg toe">
    </form>
</main>

<footer class="footer">
    <p>Liena Paeps - Webontwikkeling 2 - 2019-2020</p>
</footer>

</body>
</html>
