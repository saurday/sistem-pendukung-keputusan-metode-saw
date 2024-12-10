<?php
    include 'db/db_config.php';
    session_start();
    // error_reporting(0);
    if(empty($_SESSION['id'])){
        header('location:login.php');
    }
    ob_start(); 

    require_once('tcpdf/tcpdf.php');

    class MYPDF extends TCPDF {

        //Page header
        public function Header() {
            if ($this->page == 1) {
            // Logo
            $html = '<strong><font size="18">DATA SUB KRITERIA</font></strong><br/><br/>
            Perguruan tinggi swasta terbaik di Indonesias
            <br/>
            ';
            $this->writeHTMLCell(
                $w=0,
                $h=0,
                $x=15,
                $y=7,
                $html,
                $border=0,
                $ln=0,
                $fill=false,
                $reseth=true,
                $align='L'
            );

              $html = '
                <hr>
                <br>
                <table>
                <tr>
                <td align="center" style="font-size: 15px;">Laporan Data Sub Kriteria</td>
                </tr>
                </table>
                <table>
                <tr>
                <td></td>
                </tr>
                </table>
            ';
            $this->writeHTMLCell(
                $w=0,
                $h=0,
                $x=15,
                $y=33,
                $html,
                $border=0,
                $ln=0,
                $fill=false,
                $reseth=true,
                $align=''
            );
        }
        }
    
        public function lastPage($resetmargins=false) {
            $this->setPage($this->getNumPages(), $resetmargins);
            $this->isLastPage = true;
        }

        // Page footer
        public function Footer() {
            
           if($this->isLastPage) { 
                $tgl = date("d F Y");
                // $this->SetY(-55);
                $html = '<font size="10">Bangkalan, '.$tgl.' <br/><br/> <br/><br/>
                '.$_SESSION['nama'].'<font>
                <br/>';
                $this->writeHTMLCell(
                    $w=0,
                    $h=0,
                    $x=0,
                    $y=-40,
                    $html,
                    $border=0,
                    $ln=0,
                    $fill=false,
                    $reseth=true,
                    $align='R'
                );   
             }
            // Position at 15 mm from bottom
            $this->SetY(-15);

            // Set font
            $this->SetFont('helvetica', 'I', 8);
            // Page number
            $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
        }
    }

$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// data header
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);
 

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

$pdf->SetFont('times','',10);
// add a page
$pdf->AddPage();

$htmlTable =
'
<table border="1" cellpadding="4" >
<thead>
        <tr>
            <th>Id Sub Kriteria</th>
            <th>Kriteria</th>
            <th>Sub Kriteria</th>
            <th>Nilai</th>
        </tr>
    </thead>
    <tbody>';
        $no=1; 
        foreach ($db->select('sub_kriteria.id_subkriteria,sub_kriteria.subkriteria,kriteria.kriteria,sub_kriteria.nilai','sub_kriteria,kriteria')->where('sub_kriteria.id_kriteria=kriteria.id_kriteria')->order_by('sub_kriteria.id_kriteria','asc')->get() as $data):
    $htmlTable .='<tr>
            <td>'.$data['id_subkriteria'].'</td>
            <td>'.$data['kriteria'].'</td>
            <td>'.$data['subkriteria'].'</td>
            <td>'.$data['nilai'].'</td>
        </tr>';
        $no++; endforeach;
        $htmlTable .= '</tbody>
    </table>';

$pdf->writeHTML($htmlTable, true, false, true, false, '');
// $pdf->writeHTML($htmlTable, true, 0, true, 0);
// ---------------------------------------------------------
ob_end_clean();
//Close and output PDF document
$pdf->Output('Lap_Sub_Kriteria.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+

?>


