<?php
    $filepath = realpath(dirname(__FILE__));
    include_once ($filepath.'/../lib/database.php');
	include_once ($filepath.'/../helpers/format.php');
?>
<?php
    class lhe{
        private $db;
        private $fm;
        public function __construct()
        {
            $this->db = new Database();//gan db = class database
            $this->fm = new Format();
        }
        public function insert_lhe($lheName,$lheEmail,$lhePhone,$lheComment)
        {
            // ktra hop le 0
            $lheName = $this->fm->validation($lheName);
            $lheEmail = $this->fm->validation($lheEmail);
            $lhePhone = $this->fm->validation($lhePhone);
            $lheComment=$this->fm->validation($lheComment);
            // ket noi voi co so du lieu
            $lheName = mysqli_real_escape_string($this->db->link, $lheName);
            $lheEmail = mysqli_real_escape_string($this->db->link,$lheEmail);
            $lhePhone = mysqli_real_escape_string($this->db->link,$lhePhone);
            $lheComment=mysqli_real_escape_string($this->db->link,$lheComment);
           
            if(empty($lheName)){
                $alert = "<span class='error'>Vui lòng nhập tên danh mục</span>";
                return $alert;
            }
            else{
                $query = "insert into tbl_lhe(lheName,lheEmail,lhePhone,lheComment) values('$lheName','$lheEmail','$lhePhone','$lheComment')";
                $result = $this->db->insert($query);
                if($result){
                    $alert = "<span class='success'>cảm ơn bạn đã liên hệ với chúng tôi</span>";
                    return $alert;
                }
                else{
                    $alert = "<span class='error'>xin lỗi vì hệ thống đang trục chặc lên tàm thời khóa chức năng liên hệ !</span>";
                    return $alert;
                }
            }
        }
        public function show_lhe(){
            $query = "select * from tbl_lhe order by lheId desc";
            $result = $this->db->select($query);
            return $result;
        }
        public function getlhebyId($id){
            $query = "select * from tbl_lhe where lheId = '$id' ";
            $result = $this->db->select($query);
            return $result;
        }
        
        public function del_lhe($id){
            $query = "delete from tbl_lhe where lheId = '$id'";
            $result = $this->db->delete($query);
            if($result){
                $alert = "<span class='success'>Xóa danh mục thành công</span>";
                return $alert;
            }
            else{
                $alert = "<span class='error'>Xóa danh mục không thành công</span>";
                return $alert;
            }
        }
        
    }
?>