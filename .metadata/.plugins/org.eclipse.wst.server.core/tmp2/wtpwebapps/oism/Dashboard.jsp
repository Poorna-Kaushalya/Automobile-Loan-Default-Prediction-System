<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title> Dashboard</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel="stylesheet" href="./style.css">
</head>
<body>
<!-- partial:index.partial.html -->
<div class="app">
    <header class="app-header">
        <div class="app-header-logo">
            <div class="logo">
                <span class="logo-icon">
                    <img src="images/Picture2.png" />
                </span>
                <h1 class="logo-title">
                    <span>AcademiaLink</span>
                </h1>
            </div>
        </div>

        <div class="app-header-mobile">
            <button class="icon-button large">
                <i class="ph-list"></i>
            </button>
        </div>

    </header>
    <div class="app-body">
        <div class="app-body-navigation">
            <nav class="navigation">
           		 <a href = "home.jsp">
                     <span>Log Out</span>
                 </a>
                <a href="admininsert.jsp">
                    <span>Add Admin</span>
                </a>
                <a href="#" onclick="loadPage('adminaccount.jsp')">
                    <span>Admin</span>
                </a>
               <a href="#" onclick="loadPage('viewtable.jsp')">
                    <span>Contact Us</span>
                </a>
                <a href="subjectinsert.jsp">
                    <span>Add Subject</span>
                </a>
                <a href="#" onclick="loadPage('Subjects.jsp')">
                    <span>Subjects</span>
                </a>
                <a href="MarksEnters.jsp">
                    <span>Enter Marks</span>
                </a>
                <a href="UploadResult.jsp">
                    <span>Search Student</span>
                </a>
                <a href="bookinsert.jsp">
                    <span>Add Books</span>
                </a>
                <a href="Viewbook.jsp">
                    <span>Books</span>
                </a>
            </nav>
        </div>
        <div id="page-content"></div>
    </div>
</div>

<!-- partial -->
<script src='https://unpkg.com/phosphor-icons'></script>
<script  src="./script.js"></script>
<script>
    function loadPage(page) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("page-content").innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", page, true);
        xhttp.send();
    }
</script>
</body>
</html>
