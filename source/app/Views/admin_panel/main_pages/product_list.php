<?= $this->include('admin_panel/admin_templates/pageinitialization.php') ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>Admin Panel | Product List </title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="<?=base_url()?>/assets/admin_lte/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?=base_url()?>/assets/admin_lte/dist/css/adminlte.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="<?=base_url()?>/assets/admin_lte/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="<?=base_url()?>/assets/admin_lte/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <?= $this->include('admin_panel/admin_templates/navbar.php') ?>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <?= $this->include('admin_panel/admin_templates/sidebar.php') ?>
        <!-- End Main Sidebar Container-->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <?= $this->renderSection('page_content') ?>

        </div>
        <!-- /.content-wrapper -->


        <!-- Footer -->
        <?= $this->include('admin_panel/admin_templates/footer.php') ?>

        <!-- End Footer-->

    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="<?=base_url()?>/assets/admin_lte/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?=base_url()?>/assets/admin_lte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- DataTables -->
    <script src="<?=base_url()?>/assets/admin_lte/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?=base_url()?>/assets/admin_lte/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?=base_url()?>/assets/admin_lte/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?=base_url()?>/assets/admin_lte/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?=base_url()?>/assets/admin_lte/dist/js/adminlte.min.js"></script>
    <script>
        $(function() {
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": true,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });
        });
    </script>
</body>

</html>