<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Converter</title>
</head>
<body>
<div class="container"><br>
    <h2>Currency Convertor App</h2>
    <form action="/converter" method="post">
        <div class="form-group">
            <label for="amount">Amount:</label>
            <input type="number" class="form-control" id="amount" name="amount1">
        </div>
        <div class="form-group">
            <label for ="cur1" class="mb-2 mr-sm-4">From :</label>
            <select class="form-control mb-2 mr-sm-4" id="cur1" name="FromCur1">
                <option>dollar</option>
                <option>rub</option>
                <option>tenge</option>
            </select>
        </div>
        <div class="form-group">
            <label for ="cur2" class="mb-2 mr-sm-4">To :</label>
            <select class="form-control mb-2 mr-sm-4" id="cur2" name="ToCur1">
                <option>dollar</option>
                <option>rub</option>
                <option>tenge</option>
            </select>
        </div>
        <h2>Result: <%= request.getAttribute("result") != null ? request.getAttribute("result") : 0 %></h2>
        <button class="btn btn-success" type="submit">convert</button>
        <a class="btn btn-danger" href="/converter">Clear</a>
    </form>
</div>

</body>
</html>
