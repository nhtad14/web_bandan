<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php
$rowDH=0;
$sum['0']=0;
$conn = new mysqli('localhost','root','','webbandan');
if(isset($_POST['smb'])){
    $day1=$_POST['date1'];
    $day2=$_POST['date2'];
//Sum đơn hàng trong cửa hàng    
    $sqlDH = "SELECT * FROM tbl_order where date_order BETWEEN '$day1' AND '$day2 ' ";
    $resultDH = mysqli_query($conn,$sqlDH);
    $rowDH= mysqli_num_rows($resultDH);
   //Sum tien doanh thu
    $sqlsum = "SELECT SUM(price) as 'tongtien' FROM tbl_order where date_order BETWEEN '$day1' AND '$day2 ' ";
    $resultsum = mysqli_query($conn,$sqlsum);
    $sum = mysqli_fetch_row($resultsum); 
}
// sum SP trong cửa hàng
$sqlSP = "SELECT productId FROM `tbl_product` order by productId";
$resultSP = mysqli_query($conn,$sqlSP);
$rowSP= mysqli_num_rows($resultSP);

 ?>

<div class="grid_10">
    <div class="box round first grid">
        <h2>Thống kê doanh thu</h2><br>
        <h1 style="padding-left:70px">Chọn ngày </h1>
        <form method="POST" enctype="multipart/form-data">
            <div style="padding-left:70px" class="date">
                <label for="email"><b>Từ Ngày (*)</b></label>
                <input type="date" placeholder="DD/MM/YYYY" name="date1"><br><br>
                <lbel for="email"><b>Đến Ngày(*)</b></lbel>
                <input type="date" placeholder="DD/MM/YYYY" name="date2"><br><br>
                <button style="margin-left:85px" type="submit" name="smb" class="btn btn-success">
                    Check
                </button>
            </div>
        </form>
        <h1 style="padding-left:70px;padding-top:20px">Dữ liệu bảng</h1>
        <div class="table-wrapper">
            <table class="fl-table">
                <thead>
                    <tr>
                        <th>Sự Kiện</th>
                        <th>Kiểm tra</th>
                        <th>Đơn Vị</th>
                        <th>View</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tổng đơn hàng bán được </td>
                        <td><?php echo  $rowDH ?></td>
                        <td>Đơn Hàng</td>
                        <td><a href="inbox.php">View</a></td>
                    </tr>
                    <tr>
                        <td>Tổng số sản phẩm trong cửa hàng</td>
                        <td><?php
                         echo $rowSP;
                         ?></td>
                        <td>Sản Phẩm</td>
                        <td><a href="productlistt.php">View</a></td>
                    </tr>
                    <tr>
                        <td>Tổng doanh thu cửa hàng </td>
                        <td><?php echo $sum['0']; ?></td>
                        <td>VND</td>
                        <td><a href="inbox.php">View</a></td>
                    </tr>
                <tbody>
            </table>
        </div>
    </div>
</div>
<style>
* {
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}

body {
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
    background: rgba(71, 147, 227, 1);
}

h2 {
    text-align: center;
    font-size: 22px;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: white;
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper {
    margin: 10px 70px 30px;
    box-shadow: 0px 35px 50px rgba(0, 0, 0, 0.2);
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td,
.fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 15px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }

    .table-wrapper:before {
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }

    .fl-table thead,
    .fl-table tbody,
    .fl-table thead th {
        display: block;
    }

    .fl-table thead th:last-child {
        border-bottom: none;
    }

    .fl-table thead {
        float: left;
    }

    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }

    .fl-table td,
    .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }

    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }

    .fl-table tbody tr {
        display: table-cell;
    }

    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }

    .fl-table tr:nth-child(even) {
        background: transparent;
    }

    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }

    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }

    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}
</style>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
    setupTinyMCE();
    setDatePicker('date-picker');
    $('input[type="checkbox"]').fancybutton();
    $('input[type="radio"]').fancybutton();
});
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>