<?php

include_once('../../session.php');
include_once('../../login_controller.php');
confirm_login('../../index.php');
if(isset($_GET['logout'])){

    logout();
}

include_once('bus_controller.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Home Page</title>

    <!--    CSS STUFF-->
    <!-- Bootstrap Core CSS -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../../css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../index.php">Bus Ticket Management System
            </a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="../change_password.php"><i class="fa fa-user fa-fw"></i> Admin Profile</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="../session_controller.php?logout=yes"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="../index.php"><i class="fa fa-dashboard fa-2x"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="../driver/index.php"><i class="fa fa-user fa-2x"></i> Drivers</a>
                    </li>
                    <li>
                        <a class="alert-danger" href="index.php"><i class="fa fa-automobile fa-2x"></i> Buses</a>
                    </li>
                    <li>
                        <a href="../origin/index.php"><i class="fa fa-location-arrow fa-2x"></i> Origins</a>
                    </li>
                    <li>
                        <a href="../destination/index.php"><i class="fa fa-anchor fa-2x"></i> Destinations</a>
                    </li>
                    <li>
                        <a href="../route/index.php"><i class="fa fa-road fa-2x"></i> Routes</a>
                    </li>
                    <li>
                        <a href="../journey/index.php"><i class="fa fa-plane fa-2x"></i> Journeys</a>
                    </li>
                    <li>
                        <a href="../user/index.php"><i class="fa fa-users fa-2x"></i> Users</a>
                    </li>
                    <li>
                        <a href="../coupon/index.php"><i class="fa fa-credit-card fa-2x"></i> Coupons</a>
                    </li>
                    <li>
                        <a href="../information/index.php"><i class="fa fa-info fa-2x"></i> Information</a>
                    </li>
                    <li>
                        <a href="../comment/index.php"><i class="fa fa-comments-o fa-2x"></i> Comments</a>
                    </li>
                    <li>
                        <a href="../report/index.php"><i class="fa fa-bar-chart-o fa-2x"></i> Reports</a>
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Bus List</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Bus List
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <a class="btn btn-primary" href="add_bus.php">Add Bus</a>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Bus Plate Number</th>
                                            <th>Seat Capacity</th>
                                            <th>Driver</th>
                                            <th>Route</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                            <?php

                                            for($i=0; $i < count(Bus::get_all_buses()); $i++){

                                                //echo    var_dump(Bus::get_all_buses());

                                                echo "<tr>";

                                                    echo "<td>".Bus::get_all_buses()[$i]['id']."</td>";
                                                    echo "<td>".Bus::get_all_buses()[$i]['plate_number']."</td>";
                                                    echo "<td>".Bus::get_all_buses()[$i]['number_of_seats']."</td>";
                                                    echo "<td>".check_driver_assign(Bus::get_all_buses()[$i]['id'])."</td>";
                                                    echo "<td>".check_route_assign(Bus::get_all_buses()[$i]['id'])."</td>";
                                                    echo "<td><a class='btn btn-primary' href='assign_driver.php?bus_id=".Bus::get_all_buses()[$i]['id']."'>Assign Driver</a></td>";
                                                    echo "<td><a class='btn btn-success' href='assign_route.php?bus_id=".Bus::get_all_buses()[$i]['id']."'>Assign Route</a></td>";
                                                    echo "<td><a class='btn btn-danger' data-toggle='modal' data-target='#myModal".$i."' >Delete Bus</a></td>";
                                                    echo "<div class='modal fade' id='myModal".$i."' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'>
  <div class='modal-dialog' role='document'>
    <div class='modal-content'>
      <div class='modal-header'>
        <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
        <h4 class='modal-title' id='myModalLabel'>Alert!</h4>
      </div>
      <div class='modal-body'>
        Are you sure?
      </div>
      <div class='modal-footer'>
        <a href='bus_controller.php?type=delete&bus_id=".Bus::get_all_buses()[$i]['id']."' class='btn btn-danger'>Yes</a>
        <button type='button' class='btn btn-default' data-dismiss='modal'>No</button>
      </div>
    </div>
  </div>
</div>";
                                                echo "</tr>";
                                            }

                                            ?>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="../../js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../../js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../../js/sb-admin-2.js"></script>

</body>

</html>
