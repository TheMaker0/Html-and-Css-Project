<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>User Registration</title>
</head>
<body>

    <div class="container">
        <div class="box form-box">

            <?php
                include("php/config.php");
                if (isset($_POST['submit'])) {
                    $username = $_POST['username'];
                    $email = $_POST['email'];
                    $age = $_POST['age'];
                    $password = $_POST['password'];
                    $phone = $_POST['phone'];
                  
                    // Verify the unique email
                    $verify_query = mysqli_query($con, "SELECT Email FROM users WHERE Email='$email'");
                  
                    if (mysqli_num_rows($verify_query) != 0) {
                      echo "<div class='message'>
                            <p>This email is used, Try another One Please!</p>
                          </div> <br>";
                      echo "<a href='javascript:self.history.back()'><button class='btn'>Go Back</button>";
                    } else {
                      // Check if the 'Phone' column already exists
                      $column_check_query = mysqli_query($con, "SHOW COLUMNS IN users LIKE 'Phone'");
                  
                      if (mysqli_num_rows($column_check_query) == 0) {
                        // Add the 'Phone' column if it doesn't exist
                        mysqli_query($con, "ALTER TABLE users ADD Phone varchar(15) NOT NULL AFTER Age");
                      }
                  
                      // Insert the new user into the database
                      mysqli_query($con, "INSERT INTO users(Username, Email, Age, Password, Phone) VALUES('$username', '$email', '$age', '$password', '$phone')") or die("Error Occured");
                  
                      echo "<div class='message'>
                            <p>Registration successfully!</p>
                          </div> <br>";
                      echo "<a href='index.php'><button class='btn'>Login Now</button>";
                    }
                  }
                  
                else{
            ?>

            <header>Sign Up</header>
            <form action="" method="post">
                <div class="field input">
                    <label for="username">Username</label>
                    <input type="text" name="username" id="username" autocomplete="off" required>
                </div>

                <div class="field input">
                    <label for="email">Email</label>
                    <input type="text" name="email" id="email" autocomplete="off" required>
                </div>

                <div class="field input">
                    <label for="age">Age</label>
                    <input type="number" name="age" id="age" autocomplete="off" required>
                </div>

                <div class="field input">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" autocomplete="off" required>
                </div>

                <div class="field input">
                    <label for="phone">Phone Number</label>
                    <input type="tel" name="phone" id="phone" autocomplete="off" required>
                </div>

                <div class="field">
                    <input type="submit" class="btn" name="submit" value="Register" required>
                </div>

                <a href="javascript:self.history.back()">Go Back</a>

            </form>
            <?php
                }
            ?>

        </div>
    </div> 
   
</body>
</html>
