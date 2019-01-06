<?php
include "database.php";
    class Customer{
        public $db = new Database();
        function __construct(){  

        }
    
        public function search($departure="stanstead"){
            $query = "SELECT flight.flight_id, destination.destination_name, departure.departure_day 
                    FROM flight 
                    join departure on flight.id=departure.flight_id
                    join flight_type on flight_type.id=flight.type_id
                    join destination on destination.flight_type_id=flight_type.id";
            $stmt = $db->connect()->prepare($query);
            $stmt->execute();

            // this is how to get number of rows returned
            $num = $stmt->rowCount();
            
            if($num>0){
                echo "<table class='table table-hover table-responsive table-bordered'>";//start table
                
                //creating our table heading
                echo "<tr>";
                    echo "<th>Flight</th>";
                    echo "<th>Departure</th>";
                    echo "<th>Destination</th>";
                    echo "<th>Day of the week</th>";
                echo "</tr>";
                    
                // table body will be here

                // end table
                echo "</table>";

                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                    extract($row);
                    echo "<tr>";
                    echo "<td>{$flight_id}</td>";
                    //Always leaves from Stanstead
                    echo "<td>$departure</td>";
                    echo "<td>{$destination}</td>";
                    echo "<td>&#36;{$day}</td>";
                echo "</tr>";

                }
            }
        }
    }

    $customer=new Customer();
    $customer->search();
