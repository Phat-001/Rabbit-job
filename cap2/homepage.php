<?php
    session_start();
    require('./include/connection.php');
    if(!isset($_SESSION['username'])){
        header('location:index.php');
    }
    
    $job_list = "select * from job_information order by job_date DESC limit 8";

?>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="candidates, career, employment, freelance, glassdoor, Human Resource Management, indeed, job board, job listing, job portal, job postings, jobs, listings, recruitment, resume">
    <meta name="CreativeLayers" content="ATFN">
    <!-- css file -->

    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="stylemain.css">
    <!-- Responsive stylesheet -->

    <link rel="stylesheet" href="./assets/css/responsive.css">
    <!-- Title -->
    <title>IT rabbit
    </title>
    <!-- Favicon -->

    <!-- <link href="./assets/images/favicon.ico" sizes="128x128" rel="shortcut icon" type="image/x-icon" /> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <!-- link slick slider -->
    
    <!-- end slick slider -->


    <!-- <link href="./assets/images/favicon.ico" sizes="128x128" rel="shortcut icon" /> -->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js">
</script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js">
</script><![endif]-->
        <style>
            .search_job_a{
                background: #fff;
                padding: 5px 35px;
                border-radius: 10px;
                box-shadow: 20px 20px 50px grey !important;
            }
            #search_result{
                margin-top: 20px;
                display: flex;
                flex-wrap: wrap;
                gap: 20px;
            }
            .item_job{
                margin-top: 10px;
            }
            
            .img_search{
                width: 65px !important;
            }
            .profile_icon{
                position: absolute !important;
                top: 10% !important;
                right: 10px !important;
                color: black;
            }
            .hover-icon{
                color: 422e2e;
                font-size: 34px;
            }
            .hover-icon:hover{
                color: #fff;
            }
            .chat_sp{
                position: absolute !important;
                top: 28px !important;
                right: 40% !important;
                color: black;
                font-weight: bold;
            }
            .chat_sp:hover{
                
                color: black;
            }
            .avata_img{
                max-width: 50px;
            }
        </style>
</head>

<body>
    <div class="header-login" id="fixed-top-menu" style="box-shadow:none !important; height:80px !important; ">
    <div class="logo-header1">
                <a href="#wrapper"><img src="./assets/images/rabbit/logo-cap2.png" class="logo-cap2" alt="" ><span style="line-height: 80px;
    font-size: 34px;
    color: rgb(27, 46, 32);">Rabbit Job</span></a>
            </div>
        <div class="item-menu">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <span><a href="chat_page.php" class="chat_sp"><i style="font-size: 20px; color: black; margin-right: 5px;" class="fa-solid fa-circle-arrow-right"></i> Gửi câu hỏi</a></span>
        <span class="guess_name"><img class="avata_img" src="./images/avata/<?php 
$stmt = $conn->prepare("select * from account where account_id = ?");
$stmt->bind_param("s", $_SESSION["id_user"]);
$stmt->execute();
$data = $stmt->get_result()->fetch_assoc();
$id_account = $data ? $data['account_id'] : null;


$stmt = $conn->prepare("select * from account where account_id = ?");
$stmt->bind_param("s", $id_account);
$stmt->execute();
$data = $stmt->get_result()->fetch_assoc();
$value = $data ? $data['img'] : null;
echo  $value;

?>" alt=""> <?php if(isset($_SESSION['name'])){ echo $_SESSION['name'];}?> </span>
            <a href="logout.php" id="logoutss"><i class="fa-solid fa-right-from-bracket"></i>Đăng xuất</a>
            <span class="profile_icon" style=""><a class="hover-icon" href="profile.php?"><i style="font-size: 20px; color: black;" class="fa-solid fa-user-gear"></i></a></span>
            
        
        
    </div>
    <div class="wrapper" id="wrapper">

        <div class="preloader">
        </div>
        <!-- Main Header Nav -->

        
        <!-- Modal -->

        
        
        <!-- Home Design -->
        <section class="home-six parallax ulockd_bgi3" data-stellar-background-ratio="0.3">

            <div class="container">

                <div class="row home-content">

                    <div class="col-lg-8">

                        <div class="home-text">
                            <h2 class="fz40">Tìm kiếm công việc cho bạn</h2>

                            <p class="color-white">Từ khóa nổi bật: Mobile, Web, PHP, Android, IOS,...</p>
                            
                        </div>
                    </div>

                    <div class="col-lg-12">

                        

                            <form class="form-inline">

                            <div class="input-group col-9">
                                <input type="text" class="form-control" placeholder="Hot Keyword(Java,PHP ...),Job Title..." aria-label="Recipient's username" id="search_job" name="search_job" aria-describedby="basic-addon2">
                                <!-- <div class="input-group-append">
                                    <button class="btn btn-success" type="button">Tìm kiếm</button>
                                </div> -->
                            </div>
                            <div class="input-group col-3">
                                
                                <select style="margin-left: 5px;" class="custom-select" id="address_search" name="address_search">
                                    <option value=""> Thành phố</option>
                                    <option value="Ha Noi">Ha Noi</option>
                                    <option value="Da Nang">Da Nang</option>
                                    <option value="Binh Dinh">Binh Dinh</option>
                                    <option value="Ho Chi Minh">Ho Chi Minh</option>
                                </select>
                               
                            </div>
                            </form>
                        </div>

                        <!-- <p class="color-white">Từ khóa nổi bật: Mobile, DesignCer, Developer, Web, IOS, PHP, Senior, Engineer
                        </p> -->
                    <div class="row">
                        <div id="search_result" class="col-12">
                            
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Features Job List Design -->
        <section class="popular-job pb30">
            <div class="container">

                <div class="row">

                    <div class="col-lg-12">

                        <div class="feature_job_list row">

                            <div class="col-lg-6 offset-lg-3 text-center">

                                <div class="nav_container">
                                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                        <li class="nav-item" style="color: #fff;">Việc làm mới nhất</li>
                                       
                                    </ul>
                                </div>
                            </div>

                            <div class="tab-content row" id="pills-tabContent">

                                <div class="tab-pane fade show active col-lg-12" id="pills-home" role="tabpanel"
                                    aria-labelledby="pills-home-tab">

                                    <div class="row">
                                        <?php 
                                            foreach($conn->query($job_list) as $value){
                                        ?>
                                        <div class="col-sm-6 col-lg-6">

                                            <div class="fj_post home6">

                                                <a href="detail_job.php?hr_id=<?php echo $value['account_id'];?>&job_id=<?php echo $value['job_id']?>">
                                                <div class="details">

<div class="thumb fn-smd"><img class="img-fluid"
        src="images/logo_company/<?php echo $value['logo'];?>" alt="1.jpg">
</div>
<h5 class="job_chedule text-thm2 mt0"><?php echo $value['job_type'];?></h5>
<h4 class="mt0 pt0"><?php echo $value['job_title'];?></h4>

<p class="text-thm4">$<?php echo $value['salary'];?></p>

<i class="fa-solid fa-location-dot"></i>
</span><a href="#"><?php echo $value['address'];?></a>
<p><?php 
    $start_time=$value['job_date'];
    // $start_end = date('Y-m-d H:i:s');
    $a = getdate(strtotime($start_time));
    // $timeStamp = $start_time->getTimestamp();
    // $k = $start_end - $start_time;
    // echo $a[0];
    $b = time();
    $seconds = $b - $a[0];
    $minutes = floor($seconds / 60);
    $hours = floor($minutes / 60);
    $days = floor($hours / 24);
    $months = floor($days / 30);
    if($seconds <= 60){
        echo $seconds. " giây trước";
    }else if($minutes <=60){
        echo $minutes. " phút trước";
    }else if($hours <=24){
        echo $hours. " giờ trước";
    }else if($days <=30){
        echo $days. " ngày trước";
    }else if($months <= 31){
        echo $months. " tháng trước";
    }
    ?></p>
</div>
                                                </a>
                                            </div>
                                        </div>

                                        <?php }?>

                                        
                                    </div>
                                </div>

                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php
            $q = "SELECT * FROM `posts` WHERE `visible`=1 ORDER BY `created_at` DESC Limit 8";
            $results = mysqli_query($conn, $q);
        ?>
        <section class="popular-job home6 pb30">

            <div class="container">

                <div class="row">

                    <div class="col-lg-12">

                        <div class="ulockd-main-title">
                            <h3 class="mt0">Bài viết nổi bật</h3>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <?php if(mysqli_num_rows($results) > 0){?>
                        <?php while($row1 = mysqli_fetch_assoc($results)):?>
                            <div class="col-sm-6 col-lg-3">
                            <a href="detail_post.php?post_id=<?php echo $row1['post_id'];?>">
<div class="icon_hvr_img_box sbbg1 home6"
    style="background-image: url(./assets/images/service/3.jpg);">

    <div class="overlay">

        <div class="details">
            <h5><?php echo $row1['title']?></h5>

            <p></p>
            <p>Đọc bài viết</p>
        </div>
    </div>
</div>
</a>
</div>
                        <?php endwhile;?>
                    <?php }?>
                </div>
            </div>
        </section>
        <!-- Popular Job Categories -->
       
       <!-- slick slider -->
        <section></section>
        
       <!-- end slick slider -->
        
        <!-- Our Footer Bottom Area -->
        <section class="footer_bottom_area home6 p0">

            <div class="container">

                <div class="row pt30 pb20">

                    <div class="col-lg-4">

                        <div class="copyright-widget tac-smd">

                            <p>© 2022 Capstone 2. All Rights <a href="http://www.bootstrapmb.com/"
                                target="_blank"    title="bootstrapmb">Team 21</a>.</p>
                        </div>
                    </div>

                    <div class="col-lg-8">

                        <div class="footer_social_widget home6">
                            <ul>
                                <li class="list-inline-item"><a href="https://www.facebook.com/phat8888.77"
                                        target="_blank"><i class="fa-brands fa-facebook"></i></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section><a class="scrollToHome text-thm" href="#"><i class="flaticon-rocket-launch"></i></a>
        
    </div>
    <!-- Wrapper End -->
    
    

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <script type="text/javascript" src="./assets/js/home-page.js">
    </script>
    <script type="text/javascript" src="./assets/js/bootstrap.min.js">
    </script>
    
    <script type="text/javascript" src="./assets/js/ace-responsive-menu.js">
    </script>
    <script type="text/javascript" src="./assets/js/bootstrap-select.min.js">
    </script>
  
    <script type="text/javascript" src="./assets/js/parallax.js">
    </script>
    
    <script type="text/javascript" src="./assets/js/jquery.counterup.js">
    </script>
    <script type="text/javascript" src="./assets/js/wow.min.js">
    </script>
    <script type="text/javascript" src="./assets/js/progressbar.js">
    </script>
    <script type="text/javascript" src="./assets/js/slider.js">
    </script>
    <script type="text/javascript" src="./assets/js/timepicker.js">
    </script>
    <!-- Custom script for all pages -->
    <script type="text/javascript" src="./assets/js/script.js">
    </script>
</body>

</html>