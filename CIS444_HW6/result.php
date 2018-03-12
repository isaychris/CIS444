<!--
  Chris Banci
  CIS444
  11/17/17
  
  result.php
  http://cis444.cs.csusm.edu/banci002/hw6/result.php
--> 

<?php
  // set up connection
  $servername = "localhost";
  $username = "banci002";
  $password = "password";
  $database = "banci002";
  $conn = mysqli_connect($servername, $username, $password, $database);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <title> HW6 - Banci </title>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="styles.css">
</head>

<body>
  <h1> Football Teams </h1>
  <table>
    <caption>2017 Statistics</caption>
    <tr>
      <th scope="col">teamID</th>
      <th scope="col">teamName</th>
      <th scope="col">startYear</th>
      <th scope="col">ownerName</th>
      <th scope="col">GMName</th>
      <th scope="col">coachName</th>
      <th scope="col">startQB</th>
      <th scope="col">officeAddress</th>
      <th scope="col">city</th>
      <th scope="col">state</th>
      <th scope="col">zipCode</th>
      <th scope="col">phone</th>
      <th scope="col">overallRecord</th>
      <th scope="col">confRecord</th>
    </tr>
    <?php
      // make query
      $team = $_POST['ID'];
      $result = mysqli_query($conn, "SELECT * FROM banci002.Teams WHERE teamID = '$team'"); 
      
      // display results
      while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        foreach ($row as $column)
          echo "<td>$column</td>";
        echo "</tr>";
      }

      // display number of rows returned
      $rowcount=mysqli_num_rows($result);
      echo "Returned Results: $rowcount";

      mysqli_close($conn);
    ?>
  </table>
</body>

</html>