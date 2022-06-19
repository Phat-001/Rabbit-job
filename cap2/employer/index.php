<?php
    session_start();
    $curre_hr=$_SESSION['id_user'];
    if(!isset($_SESSION['username'])){
        header('location:../index.php');
    }
    require('../include/connection.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- Responsive stylesheet -->

    


<link rel="stylesheet" href="../stylemain.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="../js/jquery.dataTables.min.css">
    <title>Hr</title>
    <style>
        button>a{
            color: #fff;
            text-decoration: none;
        }
        button>a:hover{
            color: #fff;
            text-decoration: none;
        }
        
        .item{
          
          display: flex;
    align-items: center;
    width: 230px;
    justify-content: space-between;

        }
        h2{
          text-align: center;
        }
        .logo-header1{
          position: relative;
        }
        .item{
          position:absolute;
          right: 10px;
          top: 50%;
          transform: translateY(-50%);
        }
    </style>
</head>

<body>
<div class="logo-header1" style="background: #79b530;">
                <a href="../homepage.php"><img src="../assets/images/rabbit/logo-cap2.png" class="logo-cap2" alt="" ><span style="line-height: 80px;
    font-size: 34px;
    color: rgb(27, 46, 32);">Rabbit Job</span></a>
    <div class="item">
    <span>Chào! <?php if(isset($_SESSION['name'])){ echo $_SESSION['name'];}?></span>
      <a href="../logout.php" style="color: black; text-decoration:none;"><i class="fa-solid fa-right-from-bracket"></i>đăng xuất</a>
    </div>
    </div>
    
    
<h2>Những công việc đã đăng</h2>
    <table class="table table-striped" id="my-table3">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Tiêu đề</th>
            <th scope="col">Ngày đăng</th>
            <th scope="col">địa chỉ</th>
            <th scope="col">lương</th>
            <th scope="col">Cấp độ</th>
            <th scope="col">thể loại</th>
            <th><button type="button" class="btn btn-success"><a href="add_job.php">Thêm mới</a></button></th>
        </tr>
        </thead>
        <tbody>
            <?php
            $query="select * from job_information where account_id='{$curre_hr}'";
            foreach($conn->query($query) as $row){
            ?>
            <tr>
                <td><?php echo $row['job_title']; ?></td>
                <td><?php echo $row['job_date']; ?></td>
                <td><?php echo $row['address']; ?></td>
                <td><?php echo "$".$row['salary']; ?></td>
                <td><?php echo $row['level']; ?></td>
                <td><?php echo $row['job_type']; ?></td>
                <td>
                    <button type="button" class="btn btn-danger"><a href="update_job.php?ida=<?php echo $row['job_id']; ?>">sửa</a></button>
                    

                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#xampleModal">
                            Xóa
                    </button>

                    <div class="modal fade" id="xampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Xóa công việc</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                Bạn có chắc muốn xóa công việc này?
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                <a type="submit" name="deletePost" href="delete_job.php?ida=<?php echo $row['job_id']; ?>" class="btn btn-primary">Xóa</a>
                                </div>
                            </div>
                            </div>
                    </div>
                </td>
                
            </tr>
            <?php
            }
            ?>
        </tbody>
    </table>



    <h2>Những ứng viên đã nộp CV</h2>
    <table class="table table-striped" id="cv-file">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Tên ứng viên</th>
            <th scope="col">Điểm mạnh bản thân</th>
            <th>Job</th>
            <th scope="col">Email</th>
            <th scope="col">Facebook</th>
            <th scope="col">File CV</th>
            <th scope="col">Tải về</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
            <?php
                $query_cv = "select * from cv_file where hr_id='{$curre_hr}' order by file_id DESC limit 10";
                foreach($conn->query($query_cv) as $row2){
            ?>
            <tr>
                <td><?php echo $row2['name_candidate'];?></td>
                <td><?php echo $row2['strong_point'];?></td>
                <td><?php $stmta = $conn->prepare("select * from job_information where job_id = ?");
$stmta->bind_param("s", $row2['job_id']);
$stmta->execute();
$dataa = $stmta->get_result()->fetch_assoc();
$valuea = $dataa ? $dataa['job_title'] : null;
echo  $valuea;?></td>
                <td><?php echo $row2['email'];?></td>
                <td><a target="_blank" href="<?php $stmt = $conn->prepare("select * from account where account_id = ?");
$stmt->bind_param("s", $row2['account_id']);
$stmt->execute();
$data = $stmt->get_result()->fetch_assoc();
$value = $data ? $data['link'] : null;
echo  $value;?>">facebook</a> </td>
                <td><?php echo $row2['uploadfile'];?></td>
                <td><button class="btn btn-primary" data-toggle="modal" data-target="#xampleModal10">Download</button></td>
                <td>
                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#xampleModal9">
                            Xóa
                    </button>

                    <div class="modal fade" id="xampleModal9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Xóa cv ứng viên</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                Bạn có chắc muốn xóa thông tin người này?
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                <a type="submit" name="deletePost" href="delete_cv.php?file_ids=<?php echo $row2['file_id']; ?>" class="btn btn-primary">Xóa</a>
                                </div>
                            </div>
                            </div>
                    </div>
                    <div class="modal fade" id="xampleModal10" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">download cv</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                Bạn có chắc muốn tải xuống?
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                <a type="submit" name="deletePost" href="download.php?nama=<?php echo $row2['uploadfile'];?>" class="btn btn-primary">Tải</a>
                                </div>
                            </div>
                            </div>
                    </div>
                </td>
            </tr>
            <?php }?>
            
        </tbody>
    </table>
    




    <script type="text/javascript">

    $(document).ready( function () {
      $('#my-table3').DataTable({
        "pageLength": 5,
        "lengthMenu": [6 , 12 , 15 , 20 , 25, 30]
      });
      
} );
$(document).ready(function(){
    $('#cv-file').DataTable({
        "pageLength": 5,
        "lengthMenu": [6 , 12 , 15 , 20 , 25, 30]
      });
});

</script>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="../js/jquery.dataTables.min.js"></script>
</html>