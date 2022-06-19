<?php
$PAGE_TITLE = 'ALL POST';
require 'includes/header.inc.php';
?>

<?php

$q = "SELECT * FROM `posts` WHERE `visible`=1 ORDER BY `created_at` DESC";
$result = mysqli_query($conn, $q);

// die(var_dump($_SERVER));

?>

<div class="container mt-4" id="allPost">

  <?php
  // Delete Post Alert
  if (isset($_SESSION["DELETE_POST_ID"]) && $_SESSION["DELETE_POST_ID"] != '') : ?>
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <?= showAlert("Post deleted successfully", "success") ?>
        <?php
          // reset delete post to NULL
          $_SESSION['DELETE_POST_ID'] = '';
          ?>
      </div>
    </div>
  <?php endif; ?>

  <div class="row">

    <?php if (mysqli_num_rows($result) > 0) : ?>

      <!-- // output data of each row -->
      <?php while ($row = mysqli_fetch_assoc($result)) : ?>

        <div class="col-lg-3 offset-lg-0 col-md-4 offset-md-0 col-sm-10 offset-sm-1 mb-5">
          <div class="card">

            <div class="card-header">
              <h4 class="card-title text-primary"><?= $row["title"] ?>
              </h4>
            </div>
            <div class="card-body text-muted">
              <h6 class="card-subtitle mb-1">Tạo bởi:
                <?php
                    $data = findWhere('account', 'account_id', $row["account_id"]);
                    $publisherName = $data['name'];
                    echo $publisherName;
                    ?>
              </h6>

              <p class="small"> Ngày tạo :<?= $row["created_at"]; ?>
              </p>
            </div>
            <div class="card-body overflow-hidden">

              
            </div>
            <div class="card-footer">
              <?php
                  $link = str_replace("index.php", "post.php", $_SERVER["PHP_SELF"]);
                  $link .= '?postid=' . $row['post_id'];
                  ?>
              <a href="<?= $link ?>" class="card-link text-info">Xem thêm ...</a>
            </div>
          </div>
        </div>

      <?php endwhile; ?>

    <?php else : ?>

      <div class="col-md-10 offset-md-1 mt-5">
        <div class="jumbotron">
          <h1 class="display-3">No Public Post</h1>
          <p class="lead">no public post is avalible.</p>
          <hr class="my-4">
          <p class="lead">
            <a class="btn btn-primary btn-lg" href="#" role="button">Create Post</a>
          </p>
        </div>
      </div>

    <?php endif; ?>

  </div>

</div>


<?php require_once 'includes/footer.inc.php';
