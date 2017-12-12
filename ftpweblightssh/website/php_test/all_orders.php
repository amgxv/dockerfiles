<!DOCTYPE html>
<html>  
<head>
  <title>Orders - [Northwind]</title>
  <style>
  .taula
    {
      border: 2px solid #000000;
      background-color: green;
    }
      .taula2
    {
      border: 2px solid #000000;
      font-weight: bold;
      background-color: white;
    }
  </style>
</head>
<body>
  <?php


pg_connect("dbname=northwind user=postgres password=123 host=172.21.0.20") or die("Couldn't Connect: ".pg_last_error());

$query = 'SELECT * FROM orders';
$result = pg_query($query) or die('Query failed: ' . pg_last_error());

echo "<table class=\"taula\">\n";
while ($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
    echo "\t<tr>\n";
    foreach ($line as $col_value) {
        echo "\t\t<td class=\"taula2\">$col_value</td>\n";
    }
    echo "\t</tr>\n";
}
echo "</table>\n";


?>
</body>
</html>
