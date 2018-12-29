<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Document</title>
</head>        
<body>   
    <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#sign up">Sign up</a></li>
            <li><a href="#register">Register</a></li>
    </ul>
    <div class="form_container">
        <form id="booking_form" action="">
            <div class="row_row1">
                <button class="active return">Return</button>
                <button class="oneway">One-way</button>
            </div> 
            <div class="row row2">
                <div>
                    <label for="leaving from">Departure</label> 
                    <input type="text" placeholder="City or Airport">    
                </div>

                <div>
                    <label for="Arriving from">Destination</label> 
                    <input type="text" placeholder="City or Airport">    
                </div>

                <div>
                    <label for="leaving on">Leaving on</label>  
                    <input type="date" value="2018-11-29"> 
                </div>
                
                <div>
                    <label for="Returning on">Returning on</label>  
                    <input type="date" value="2018-11-29"> 
                </div>

                <div>
                    <label for="Passengers">Passenger</label>
                    <select name="Passengers">
                        <option value="1">1 Adult</option>
                        <option value="2">2 adults</option>
                        <option value="3">3 Adults</option>
                        <option value="4">4 Adults</option>
                    </select>
                </div>

                <div>
                    <input type="submit" value="Find &rarr;">  
                </div>
                
            </div>
        </form>
    </div>
                
    <div class="image_row"> 
        <div class="image_column">
          <img src="img/paris.jpg" style="width:100%">
          <p class="image_text">paris</p>
          <img src="img/dublin.jpg" style="width:100%">
          <p class="image_text">dublin</p>
        </div>
        <div class="image_column">
          <img src="img/manchester.jpg" style="width:100%">
          <p class="image_text">manchester</p>
          <img src="img/stansted.jpg" style="width:100%">
          <p class="image_text">stansted</p>
        </div>  
        <div class="image_column">
          <img src="img/madrid.jpg" style="width:100%">
          <p class="image_text">madrid</p>
          <img src="img/glasgow.jpg" style="width:100%">
          <p class="image_text">glasgow</p>
        </div>
        <div class="image_column">
          <img src="img/brussels.jpg" style="width:100%">
          <p class="image_text">brussels</p>
        </div>
      </div>
      <h2 style="color: dodgerblue;">Fly guys Newsletter</h2>

      <form action=>
        <div class="container">
          <h2 style="color: dodgerblue;">Subscribe to our Newsletter</h2>
        </div>
      
        <div class="container" style="background:transparent">
          <input type="text" placeholder="Name" name="name" required>
          <input type="email" placeholder="Email address" name="email" required>
          <label>
            <input type="checkbox" checked="checked" name="subscribe"> Daily Newsletter
          </label>
        </div>
      
        <div class="container">
          <input type="submit" value="Subscribe">
        </div>
      </form>
      
      <?php
        include_once 'php/class.Customer.php';
        $customer = new Customer();
        $customer->search();
      ?>
      
      
      <div class="footer">
          <p>Footer</p>
      </div>         
        
   

       
</body>




</html>