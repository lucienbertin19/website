<?php
include "php/database.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $firstname = $lastname = $dob = $address1 = $address2 = $postcode = $town = $country = $email = $psw = $pswr = "";

    $firstname = test_input($_POST["firstname"]);
    $lastname =  test_input($_POST["lastname"]) ;
    $dob = test_input($_POST["dob"]);
    $address1 = test_input($_POST["address1"]);
    $address2 = test_input($_POST["address2"]);
    $postcode = test_input($_POST["postcode"]);
    $town = test_input($_POST["town"]);
    $country = test_input($_POST["country"]);
    $email = test_input($_POST["email"]);
    $psw = test_input($_POST["psw"]);
    $pswr = test_input($_POST["pswr"]);
    $role_id = 3;

    $sql1 = "INSERT INTO address (city, country, postcode, street_line_1, street_line_2) 
    VALUES (:town, :country, :postcode, :address1, :address2)";
    $stmt = $conn->prepare($sql1);
    $stmt->bindParam(':town', $town);
    $stmt->bindParam(':country', $country);
    $stmt->bindParam(':postcode', $postcode);
    $stmt->bindParam(':address1', $address1);
    $stmt->bindParam(':address2', $address2);
  
    $stmt->execute();

    $last_id = $conn->lastInsertId();
    echo $last_id;

    $sql2 = "INSERT INTO user (first_name, last_name, date_of_birth, address_id, email, role_id)
    VALUES (:firstname, :lastname, :dateofbirth, :addressid, :email, :role_id)";
    $stmt2 = $conn->prepare($sql2);
    $stmt2->bindParam(':firstname',$firstname);
    $stmt2->bindParam(':lastname',$lastname);
    $stmt2->bindParam(':dateofbirth',$dob);
    $stmt2->bindParam(':addressid',$last_id);
    $stmt2->bindParam(':email',$email);
    $stmt2->bindParam(':role_id',$role_id);

    $stmt2->execute();
  }
  function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

?>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <style>
          input[type=text]:focus, input[type=password]:focus,  input[type=email]:focus {
            background-color: #ddd;
            outline: none;
          }

          button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
          }

          button:hover {
            opacity:1;
          }

          .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
          }

          .cancelbtn, .signupbtn {
            float: right;
            width: 50%;
          }

          .clearfix::after {
            content: "";
            clear: both;
            display: table;
          }
  </style>
  </head>
  <body>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" style="border:1px solid #ccc" method="post">
        <div class="container">
          <h1>Sign Up</h1>
          <p>Please fill in this form to create an account.</p>
          

          <label for="first name"><b>First name</b></label>
          <input type="text" placeholder="Enter first name" name="firstname" required>

          <label for="Last name"><b>Last name</b></label>
          <input type="text" placeholder="Enter Last name" name="lastname" required>

          <label for="dateofbirth">date of birth</label>
          <input type="date" placeholder="" name="dob" required>

          <label for="address 1"><b>First line address</b></label>
          <input type="text" placeholder="Enter address" name="address1" required>


          <label for="address 2"><b>Second line address</b></label>
          <input type="text" placeholder="Enter address" name="address2" required>
          
          <label for="postcode"><b>Postcode</b></label>
          <input type="text" placeholder="Enter postcode" name="postcode" pattern="[A-Za-z]{1,2}[0-9Rr][0-9A-Za-z]? [0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}"required>

          <label for="town"><b>Town</b></label>
          <input type="text" placeholder="Town" name="town" required>

          <label for="country">Country</label>
        <select id="country" name="country">
          <option value="unitedkingdom">united kingdom</option>
          <option value="usa">USA</option>
          <option value="paris">Paris</option>
        </select>
      
          <label for="email"><b>Email</b></label>
          <input type="email" placeholder="Enter Email" name="email" required>
      
          <label for="password"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="psw" required>
      
          <label for="password-repeat"><b>Repeat Password</b></label>
          <input type="password" placeholder="Repeat Password" name="pswr" required>
      
          <label>
            <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
          </label>
      
          <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
      
          <div class="clearfix">
            <button type="button" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">Sign Up</button>
          </div>
        </div>
    </form>
  </body>
</html>