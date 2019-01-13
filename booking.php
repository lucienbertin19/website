<?php
//array to hold validation errors
    $errors=array();

//array to hold data being passed back
    $data=array();

if ($_SERVER["REQUEST_METHOD"]==="POST"){

   if (empty($_POST["destination"])){

       $errors["destination"] = "destination is required";

    }
    
    if (empty($_POST["departure"])){

        $errors["departure"] = "departure is required";
 
     }

     if (empty($_POST["departure_date"])){

        $errors["departure_date"] = "departure_date is required";
 
     }

     if (empty($_POST["return_date"])){

        $errors["return_date"] = "return_date is required";
 
     }

     if (!empty($errors)){
        $data["success"] = false;
        $data["errors"] = $errors;
     }

     else{

        $data["success"] = true;
        $data["message"] = "success";
     }

}
echo json_encode($data);



    // foreach($_SERVER as $x=>$y){
    //     print_r($x."=".$y."<br>");
    // }
    
?>