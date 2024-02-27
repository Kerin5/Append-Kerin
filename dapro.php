<!DOCTYPE html>
<html><title>Product Data</title>
<head>
    <!-- Load file CSS Bootstrap offline -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Search for products</h1>
    <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="post">
    <div class="form-group">
        <label for="sel1">Key Word:</label>
        <?php
        $kata_kunci="";
        if (isset($_POST['kata_kunci'])) {
            $kata_kunci=$_POST['kata_kunci'];
        }
        ?>
        <input type="text" name="kata_kunci" value="<?php echo $kata_kunci;?>" class="form-control"  required/>
    </div>
    <div class="form-group">
        <input type="submit" class="btn btn-info" value="Search">
    </div>
    </form>
    <table class="table table-bordered table-hover">
        <br>
        <thead>
        <tr>
			<th>No</th>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Stock</th>       
        </tr>
        </thead>
        <?php
        include "koneksi.php";
        if (isset($_POST['kata_kunci'])) {
            $kata_kunci=trim($_POST['kata_kunci']);
             $sql="select * from dapro where kode_produk like '%".$kata_kunci."%' or nama_produk like '%".$kata_kunci."%' or harga_produk like '%".$kata_kunci."%' order by kode_produk asc";

        }else {
             $sql="select * from dapro order by kode_produk asc";
        }

        $hasil=mysqli_query($kon,$sql);
        $no=0;
        while ($data = mysqli_fetch_array($hasil)) {
            $no++;

            ?>
            <tbody>
            <tr>
                <td><?php echo $no;?></td>            
                <td><?php echo $data["kode_produk"];   ?></td>
                <td><?php echo $data["nama_produk"];   ?></td>
                <td><?php echo $data["harga_produk"];   ?></td>
                <td><?php echo $data["stock_produk"];   ?></td>                
            </tr>
            </tbody>
            <?php
        }
        ?>
    </table>
</div>
</body>
</html>