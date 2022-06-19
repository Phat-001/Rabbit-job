<?php
require('../include/connection.php');
if(isset($_REQUEST['file_ids']) and $_REQUEST['file_ids']!=""){
$sql = "DELETE FROM cv_file WHERE file_id='{$_GET['file_ids']}'";
if ($conn->query($sql) === TRUE) {
echo "Xoá thành công!";
header('location:index.php');
} else {
echo "Error updating record: " . $conn->error;
}
$conn->close();
}
?>