<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Delete Data</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
   <style type="text/css">
            .blinking:hover {
                animation: blinkingText 0.3s infinite;
            }
            @keyframes blinkingText {
                0% {
                    color: #FFFF00;
                }

                20% {
                    color: #edf03e;
                }

                40% {
                    color: #e64438;
                }

                60% {
                    color: #fa0000;
                }

                80% {
                    color: #00d9ff;
                }

                100% {
                    color: #1519f3;
                }
            }
        </style>
    </head>
    <body style="background-color: #EFE1CE">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light text-white">
                <a class="navbar-brand disabled" href="#">CUSTOMER FORM</a>
                <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"></button>
                <button class="navbar-toggler disabled" type="button" data-toggle="collapse"
                    data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link blinking" href="/">SaveData</a>
                        <a class="nav-item nav-link blinking" href="/search">SearchData</a>
                        <a class="nav-item nav-link blinking" href="/update">UpdateData</a>
                        <a class="nav-item nav-link blinking" href="/delete">DeleteData</a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container mt-5 pt-5 align-items-center">
            <form action="delete" method="post">
                <div class="form-group container mt-4 ">
                    <div style="text-align:center;">
                        <h3> <label for="exampleFormControlInput1">Enter Customer's Phone Number</label></h3>
                    </div>
                     <input type="tel" class="form-control form-control rounded-pill" maxlength="10" pattern="[6789][0-9]{9}" id="phone"
                        placeholder="Enter phone number which data you want to delete" name="phone" required><br>
                    <div style="text-align:center;">
                        <button type="submit" class="btn btn-primary rounded-pill">Delete Data</button>
                    </div>
                </div>
            </form>
        </div>
    </body>

    </html>