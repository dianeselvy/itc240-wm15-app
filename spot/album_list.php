<?php
/*
customer_list.php

Use this file as a model for making 
more application pages



*/

?>
<?php include 'includes/config.php';?>
<?php include 'includes/header.php';?>
<?php

$sql = "select * from wm16_Albums";



$iConn = @mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) or die(myerror(__FILE__,__LINE__,mysqli_connect_error()));
$result = mysqli_query($iConn,$sql) or die(myerror(__FILE__,__LINE__,mysqli_error($iConn)));
if (mysqli_num_rows($result) > 0)//at least one record!
{//show results
    while ($row = mysqli_fetch_assoc($result))
    {
       echo "<p>";
       echo 'First Name: '; 
       echo '<a href="album_view.php?id=' . $row['AlbumID'] . '">' . $row['Title'] . '</a><br />';
       //echo "FirstName: <b>" . $row['FirstName'] . "</b><br />";
       echo "Artist: <b>" . $row['Artist'] . "</b><br />";
       echo "Year: <b>" . $row['ReleaseYear'] . "</b><br />";
       echo "</p>";
    }
}
else{//no records
    echo '<div align="center">What! No albums?  There must be a mistake!!</div>';
}




@mysqli_free_result($result); #releases web server memory
@mysqli_close($iConn); #close connection to database



?>
<?php include 'includes/footer.php';?>