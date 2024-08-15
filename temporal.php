<?php
try{
$servername = "localhost";
$username = "root";
$password = "";
$dbname ="babychat";

$id_bebe = $_GET['id_bebe'];
$email = $_GET['email'];

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";


$sql = "SELECT * FROM bebes where id_bebe = ". $id_bebe ." AND email = '". $email ."';";
$result = $conn->query($sql);

echo "<table><th>id</th><th>nombre</th>";

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td><a href='hola.php?id_bebe=". $row["id_bebe"] . "'>". $row["id_bebe"]."</a></td>";
    echo "<td>". $row["nombres"] . "</td>";
    echo "<tr>";
    //echo "id: " . $row["id_bebe"]. " - Name: " . $row["nombres"]. "<br>";
  }

  echo "</table>";
} else {
  echo "0 results";
}
$conn->close();
} catch (Exception $e) {
    echo $e->getMessage();
    die();
}
?>