<?php

require_once ('../../../lib/jpgraph/src/jpgraph.php');
require_once ('../../../lib/jpgraph/src/jpgraph_line.php');
require_once ('../../../lib/jpgraph/src/jpgraph_plotline.php');


// Setup the graph
$graph = new Graph(640,380);
$graph->SetScale("textlin",-10,10);

$graph->AddLine(new PlotLine(HORIZONTAL,0,"black",2)); 

$theme_class=new UniversalTheme;

$graph->SetTheme($theme_class);
$graph->img->SetAntiAliasing(false);
$graph->SetBox(false);

$graph->img->SetAntiAliasing();
$graph->SetMargin(35,40,15,105); // left right top bottom

$graph->xaxis->HideLine(true);
$graph->yaxis->scale->ticks->Set(2,1);

$graph->xaxis->SetLabelMargin(20); 

//$graph->xaxis->SetFont(FF_VERDANA,FS_BOLD,8);

$graph->xaxis->scale->ticks->SetSize(8,3);
$graph->xaxis->scale->ticks->SetWeight(5);

$graph->xgrid->Show();
$graph->xgrid->SetLineStyle("solid");
$graph->xaxis->SetTickLabels(array('Approval','Love','Achievement','Perfectionism', 'Entitlement', 'Omnipotence', 'Autonomy'));
$graph->xgrid->SetColor('#E3E3E3');
$graph->xaxis->SetPos('min');
$graph->xaxis->SetLabelFormat(FF_VERDANA,FS_NORMAL,18);

if (isset($_GET["datay1"])) {
	
	$p1 = new LinePlot(unserialize($_GET["datay1"]));
	
	$graph->Add($p1);
	
	$p1->SetWeight(3); 
	$p1->SetColor("#c54242");
	$p1->SetLegend($_GET["date1"]);
	$p1->SetStyle("solid");

}
	

if (isset($_GET["datay2"])) {
		
    $p2 = new LinePlot(unserialize($_GET["datay2"])); 
    $graph->Add($p2);
	$p2->SetColor("#1e25af");
    $p2->SetLegend($_GET["date2"]);
    $p2->SetStyle("solid");
			
}

if (isset($_GET["datay3"])) {
		
    $p3 = new LinePlot(unserialize($_GET["datay3"])); 
    $graph->Add($p3);
	$p3->SetWeight(3); 	
	$p3->SetColor("#ba42c5");
    $p3->SetLegend($_GET["date3"]);
    $p3->SetStyle("solid");
		
}

if (isset($_GET["datay4"])) {
		
    $p4 = new LinePlot(unserialize($_GET["datay4"])); 
    $graph->Add($p4);
	$p4->SetColor("#58af1e");
    $p4->SetLegend($_GET["date4"]);
    $p4->SetStyle("solid");
				
}

if (isset($_GET["datay5"])) {
		
    $p5 = new LinePlot(unserialize($_GET["datay5"])); 
    $graph->Add($p5);
	$p5->SetColor("#d4bb66");
    $p5->SetLegend($_GET["date5"]);
    $p5->SetStyle("solid");
				
}

$graph->legend->SetFrameWeight(50000);
$graph->legend->SetColor('#333','#839885');
$graph->legend->SetMarkAbsSize(8);
$graph->legend->SetColumns(5);

// Output line
$graph->Stroke();


