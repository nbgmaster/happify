<?php

    /* JPGRAPH Library: Output data entries into image file */

	require_once ('../../../lib/jpgraph/src/jpgraph.php');
	require_once ('../../../lib/jpgraph/src/jpgraph_bar.php');
	
	
	$total_items = count(unserialize($_GET["fscores"]));
	if ($total_items == 1) $g_width = 300;
	elseif ($total_items == 2) $g_width = 440;
	elseif ($total_items > 2) $g_width = 700;
	
	// Create the graph. These two calls are always required
	$graph = new Graph($g_width,450);
	$graph->SetScale("textlin", 0, 100);
	
	$theme_class=new UniversalTheme;
	$graph->SetTheme($theme_class);
	
	$graph->yaxis->SetTickPositions(array(0,5,10,25,50,75,100), array(20,30,40,60,70,80,90));
	$graph->SetBox(false);
	$graph->SetMargin(32,80,10,105); // left right top bottom
	
	$graph->ygrid->SetFill(false);
	$graph->xaxis->SetTickLabels(unserialize($_GET["datay"]));
	$graph->yaxis->HideLine(false);
	$graph->yaxis->HideTicks(false,false);
	
	// Create the bar plots
	$p1 = new BarPlot(unserialize($_GET["fscores"]));
	
	$graph->Add($p1);
	
	$p1->value->Show();
	$p1->value->SetMargin(20);
	$p1->value->SetFormat('%01.0f'); 
	
	$p1->SetColor("white");
	$p1->SetFillColor("#839885");
	
	// Display the graph
	$graph->Stroke();
	
