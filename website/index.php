<table width="400" border="0" align="center" cellpadding="3" cellspacing="0">
</table>
<br>
<?php

$host="student.ikdoeict.be"; // Host name
$username="st1088021"; // Mysql username
$password="Q2d3q53S2E"; // Mysql password
$db_name="db1088021"; // Database name
$tbl_name="menu"; // Table name

// Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect server ");
mysql_select_db("$db_name")or die("cannot select DB");

$sql="SELECT * FROM $tbl_name";
$result=mysql_query($sql);

while($rows=mysql_fetch_array($result)){
?>
<table width="400" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<td><table width="400" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
<tr>
<td>ID</td>
<td>:</td>
<td><? echo $rows['id']; ?></td>
</tr>
<tr>
<td width="117">Name</td>
<td width="14">:</td>
<td width="357"><a href="menu.php?id=<? $rows['id']; ?>"><? echo $rows['name']; ?></a></td>
</tr>
</table></td>
</tr>
</table>
<BR>
<?
}
mysql_close(); //close database
?>