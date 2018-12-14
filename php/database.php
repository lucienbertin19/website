<?php
class Database{
    private $servername ;
    private $username ;
    private $password ;
    private $database ;

     function __construct(){

        $this->servername = "localhost";
        $this->username = "root";
        $this->password = "";
        $this->database = "ars";
    }

    function  connect(){
        try {
            $conn = new PDO("mysql:host=$this->servername;dbname=$this->database", $this->username, $this->password);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "Connected successfully"; 
            }
        catch(PDOException $e)
            {
            echo "Connection failed: " . $e->getMessage();
            }
    }
}
$conn = new Database();
$conn->connect();
?>
