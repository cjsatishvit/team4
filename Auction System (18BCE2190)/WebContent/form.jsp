<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
    <title>form</title>
</head>

<body>
    <h1> Fill Your Details </h1> <br>
    <form action="submit.jsp" method="POST">
     <!--    <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Name">
        </div> -->
        
                     <div class="form-group">
                        <label for="name">Full name</label>
                        <input type="text"  class="form-control" name="name" id="name" required/>
                    </div>  
        <div class="form-group">
            <label for="phone">Phone number</label>
            <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone Number">
        </div>
        <div class="form-group">
            <label for="amount">Bid Amount</label>
            <input type="text" class="form-control" name="amount" id="amount" placeholder="Amount">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>

</html>