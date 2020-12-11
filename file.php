<?php
    // $Name = $_POST['Name'];
    // $email = $_POST['email'];
    // $Age = $_POST['Age'];
    // $role = $_POST['role'];
    // $rating = $_POST['rating'];
    // $mostLike = $_POST['mostLike'];
    // $improve = $_POST['improve'];
    // $comments = $_POST['comments'];
    if(isset($_POST['Name'])){ $Name = $_POST['Name']; }
    if(isset($_POST['email'])){ $email = $_POST['email']; }
    if(isset($_POST['Age'])){ $Age = $_POST['Age']; }
    if(isset($_POST['role'])){ $role = $_POST['role']; }
    if(isset($_POST['rating'])){ $rating = $_POST['rating']; }
    if(isset($_POST['mostLike'])){ $mostLike = $_POST['mostLike']; }
    if(isset($_POST['improve'])){ $improve = $_POST['improve']; }
    if(isset($_POST['comments'])){ $comments = $_POST['comments']; }
    // Database connection
    $mysqli = new mysqli("localhost", "root", "", "surveyform"); 
    
    if ($mysqli == false) { 
        die("ERROR: Could not connect. " 
                            .$mysqli->connect_error); 
    } 
    else{
        $stmt = $mysqli->prepare("insert into surveyformtable(Name, Email, Age, role, rating, mostLike, improve, comments) values(?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssisssss", $Name, $email, $Age, $role, $rating, $mostLike, $improve, $comments);
        $stmt->execute();
        echo "Registration Done!";
        $stmt->close();
        $mysqli->close();
        }
    ?>