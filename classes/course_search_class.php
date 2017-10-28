<?php
if(!ISSET($_SESSION)){
    session_start();
    }
require_once("db_con.php");
class Search_course extends Db_con{
    public function __construct(){
        parent::__construct();
    }
    public function search($cdid,$proname,$code){
        $stmt = $this->conn->prepare("select staff_id, title, sub_id, unit, s_desc,f_desc,elective,semester from courses_tb join subject_tb on(courses_tb.co_id = subject_tb.co_id) join class_details_tb using (cd_id) join class_tb ct using(c_id) where cd_id = ? or ct.name like ? and title like ? order by title");
        $stmt->bind_param('sss',$cdid,$proname,$code);
        $stmt->execute();
        $cours = $stmt->get_result();
        $tunit = 0;
        while($c = $cours->fetch_assoc()){
           $sub = $c['sub_id'];
            $code = $c['title'];
            $unit = $c['unit'];
            $title = $c['s_desc'];
            $desc = $c['f_desc'];
                        
            $st = $staff[$c['staff_id']];
            $of = $office[$c['staff_id']];
            echo $code;
        }
        
        // $compan = $this->conn->prepare("select * from company_tb");
        //  $sessio->bind_param("s",$status);
        //  $sessio->execute();
        //  $session = $sessio->get_result();
        // while($ses = $session->fetch_assoc()){
        //         $_SESSION['session_year'] = $ses['session_year'];
        //         $_SESSION['current_session'] = $ses['session_id'];
        //         $_SESSION['description'] = $ses['comment'];
        //         $_SESSION['semester'] = $ses['term'];
        // }
        // $compan->execute();
        // $company = $compan->get_result();
        // while($c = $company->fetch_assoc()){
        //      $_SESSION['website'] = $c['website'];
        //      $_SESSION['abr'] = $c['adm_initial'];   
        //      $_SESSION['banner'] = $c['path'];
        //     }
        // select staff_id, title, sub_id, unit, s_desc,f_desc,elective,semester from courses_tb join subject_tb on(courses_tb.co_id = subject_tb.co_id) join class_details_tb using (cd_id) join class_tb ct using(c_id) where cd_id = $cdid or ct.name like '$proname' order by title
    }
    


}

?>
