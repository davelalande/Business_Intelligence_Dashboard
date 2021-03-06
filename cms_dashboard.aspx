﻿<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">-->
<!DOCTYPE html>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>CMS Metrics Dashboard (Last Reported Month's Sample Data)</title>

<link rel="stylesheet" href="css/gauges_bulk.css" />

<script type="text/javascript" src="http://www.google.com/jsapi"></script>


<SCRIPT LANGUAGE="JavaScript">
google.load('visualization', '1', {packages: ['gauge']});
google.setOnLoadCallback(queryValue);
function queryValue () {
    var query = new google.visualization.Query('https://spreadsheets.google.com/spreadsheet/tq?range=B22:B37&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=7');
    query.send(function (response) {
        if (response.isError()) {
            alert('Error in query: ' + response.getMessage() + ' ' + response.getDetailedMessage());
            return;
        }
        var data = response.getDataTable();
        
		//date label loop
        for (var i = 0; i <= 15; i++) {
        document.getElementById('b' + (i + 22)).innerHTML = data.getValue(i, 0);
}

    });
		queryValue1()
	}

function queryValue1 () {
    var query = new google.visualization.Query('https://spreadsheets.google.com/spreadsheet/tq?range=A22:A37&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=7');
    query.send(function (response) {
        if (response.isError()) {
            alert('Error in query: ' + response.getMessage() + ' ' + response.getDetailedMessage());
            return;
        }
        var data1 = response.getDataTable();
        var a1 = data1.getValue(0, 0);
        var a2 = data1.getValue(1, 0);
        var a3 = data1.getValue(2, 0);
		var a4 = data1.getValue(3, 0);
		var a5 = data1.getValue(4, 0);
		var a6 = data1.getValue(5, 0);
		var a7 = data1.getValue(6, 0);
		var a8 = data1.getValue(7, 0);
		var a9 = data1.getValue(8, 0);
		var a10 = data1.getValue(9, 0);
		var a11 = data1.getValue(10, 0);
		var a12 = data1.getValue(11, 0);
		var a13 = data1.getValue(12, 0);
		var a14 = data1.getValue(13, 0);
		var a15 = data1.getValue(14, 0);
		var a16 = data1.getValue(15, 0);
		
		queryValue3(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16);
    });
	

}
function queryValue3(met1,met2,met3,met4,met5,met6,met7,met8,met9,met10,met11,met12,met13,met14,met15,met16) {
    var query3 = new google.visualization.Query('https://spreadsheets.google.com/spreadsheet/tq?range=B2:B17&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=9');
    query3.send(function (response) {
        if (response.isError()) {
            alert('Error in query3: ' + response.getMessage() + ' ' + response.getDetailedMessage());
            return;
        }

		var data3 = response.getDataTable();
		
		var m1 = data3.getValue(0, 0);
        var m2 = data3.getValue(1, 0);
        var m3 = data3.getValue(2, 0);
		var m4 = data3.getValue(3, 0);
		var m5 = data3.getValue(4, 0);
		var m6 = data3.getValue(5, 0);
		var m7 = data3.getValue(6, 0);
		var m8 = data3.getValue(7, 0);
		var m9 = data3.getValue(8, 0);
		var m10 = data3.getValue(9, 0);
		var m11 = data3.getValue(10, 0);
		var m12 = data3.getValue(11, 0);
		var m13 = data3.getValue(12, 0);
		var m14 = data3.getValue(13, 0);
		var m15 = data3.getValue(14, 0);
		var m16 = data3.getValue(15, 0);
	
	var red22 = "<span style='color:#ff0000'> ";
    var yellow22 = "<span style='color:#FF9900'> ";
    var green22 = "<span style='color:#009900'> ";
	
	//Metric 1
	// Gauge Ranges  options: { min: 1.5, max: 0, redFrom: 1.5, redTo: 1, yellowFrom: 1, yellowTo: .5, greenFrom: .5, greenTo: 0,
    if (m1 <= .5)
    {
    m1 = green22;
    }
    else if (m1 <= 1)
    {
    m1 = yellow22;
    }
    else if (m1 >=1)
    {
    m1 = red22;
    }
	
	//Metric 2
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m2 <= 95)
    {
    m2 = red22;
    }
    else if (m2 <= 99)
    {
    m2 = yellow22;
    }
    else if(m2 >=99.1)
    {
    m2 = green22;
    }
	
	//Metric 3
	//Gauge Ranges  options: { min: 97, max: 100, redFrom: 97, redTo: 98, yellowFrom: 98, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m3 <= 97)
    {
    m3 = red22;
    }
    else if (m3 <= 99)
    {
    m3 = yellow22;
    }
    else if (m3 >=99.1)
    {
    m3 = green22;
    }
	
	//Metric 4
	//Gauges Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m4 <= 95)
    {
    m4 = red22;
    }
    else if (m4 <= 99)
    {
    m4 = yellow22;
    }
    else if (m4 >=99.1)
    {
    m4 = green22;
    }
	
	//Metric 5
	// Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m5 <= 95)
    {
    m5 = red22;
    }
    else if (m5 <= 99)
    {
    m5 = yellow22;
    }
    else if (m5 >=99.1)
    {
    m5 = green22;
    }
	
	//Metric 6
	//Gauge Ranges  options: { min: 20, max: 0, redFrom: 20, redTo: 10, yellowFrom: 10, yellowTo: 3, greenFrom: 3, greenTo: 0,
	if (m6 <= 3)
    {
    m6 = green22;
    }
    else if (m6 <= 9.9)
    {
    m6 = yellow22;
    }
    else if (m6 >=10)
    {
    m6 = red22;
    }
	
	//Metric 7
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m7 <= 95)
    {
    m7 = red22;
    }
    else if (m7 <= 99)
    {
    m7 = yellow22;
    }
    else if (m7 >=95.1)
    {
    m7 = green22;
    }
	
	//Metric 8
	//Gauge Ranges  options: { min: 75, max: 100, redFrom: 75, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m8 <= 95)
    {
    m8 = red22;
    }
    else if (m8 <= 99)
    {
    m8 = yellow22;
    }
    else if (m8 >=99.1)
    {
    m8 = green22;
    }
	
	//Metrics 9
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m9 <= 95)
    {
    m9 = red22;
    }
    else if (m9 <= 99)
    {
    m9 = yellow22;
    }
    else if (m9 >=99.1)
    {
    m9 = green22;
    }
	
	//Metric 10
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m10 <= 95)
    {
    m10 = red22;
    }
    else if (m10<= 99)
    {
    m10 = yellow22;
    }
    else if (m10 >=99.1)
    {
    m10 = green22;
    }
	
	//Metric 11
	//Gauge Ranges  options: { min: 90, max: 100, redFrom: 90, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m11 <= 95)
    {
    m11 = red22;
    }
    else if (m11 <= 99)
    {
    m11 = yellow22;
    }
    else if (m11 >=99.1)
    {
    m11 = green22;
    }
	
	//Metric 12
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m12 <= 95)
    {
    m12 = red22;
    }
    else if (m12 <= 99)
    {
    m12 = yellow22;
    }
    else if (m12 >=99.1)
    {
    m12 = green22;
    }
	
	//Metric 13
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m13 <= 95)
    {
    m13 = red22;
    }
    else if (m13 <= 99)
    {
    m13 = yellow22;
    }
    else if (m13 >=99.1)
    {
    m13 = green22;
    }
	
	//Metric 14
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m14 <= 95)
    {
    m14 = red22;
    }
    else if (m14 <= 99)
    {
    m14 = yellow22;
    }
    else if (m14 >=99.1)
    {
    m14 = green22;
    }
	
	//Metric 15
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m15 <= 95)
    {
    m15 = red22;
    }
    else if (m15 <= 99)
    {
    m15 = yellow22;
    }
    else if (m15 >=99.1)
    {
    m15 = green22;
    }
	
	//Metric 16
	//Gauge Ranges  options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
	if (m16 <= 95)
    {
    m16 = red22;
    }
    else if (m16 <= 99)
    {
    m16 = yellow22;
    }
    else if (m16 >=99.1)
    {
    m16 = green22;
    }

	var m1 = (m1 + met1 + "</span>");
	var m2 = (m2 + met2 + "</span>");
	var m3 = (m3 + met3 + "</span>");
	var m4 = (m4 + met4 + "</span>");
	var m5 = (m5 + met5 + "</span>");
	var m6 = (m6 + met6 + "</span>");
	var m7 = (m7 + met7 + "</span>");
	var m8 = (m8 + met8 + "</span>");
	var m9 = (m9 + met9 + "</span>");
	var m10 = (m10 + met10 + "</span>");
	var m11 = (m11 + met11 + "</span>");
	var m12 = (m12 + met12 + "</span>");
	var m13 = (m13 + met13 + "</span>");
	var m14 = (m14 + met14 + "</span>");
	var m15 = (m15 + met15 + "</span>");
	var m16 = (m16 + met16 + "</span>");
		
    document.getElementById('m1').innerHTML = m1;
	document.getElementById('m2').innerHTML = m2;
	document.getElementById('m3').innerHTML = m3;
	document.getElementById('m4').innerHTML = m4;
	document.getElementById('m5').innerHTML = m5;
	document.getElementById('m6').innerHTML = m6;
	document.getElementById('m7').innerHTML = m7;
	document.getElementById('m8').innerHTML = m8;
	document.getElementById('m9').innerHTML = m9;
	document.getElementById('m10').innerHTML = m10;
	document.getElementById('m11').innerHTML = m11;
	document.getElementById('m12').innerHTML = m12;
	document.getElementById('m13').innerHTML = m13;
	document.getElementById('m14').innerHTML = m14;
	document.getElementById('m15').innerHTML = m15;
	document.getElementById('m16').innerHTML = m16;
	
	drawVisualization()
	});
    }
//google.setOnLoadCallback(drawVisualization);
//The following metrics are in a sheet named Quality BSC Reporting 2013 (15)
function drawVisualization() {
		//Abuse and Neglect Gauge
    var wrapper1 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B2&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization1',
        options: { min: 1.5, max: 0, redFrom: 1.5, redTo: 1, yellowFrom: 1, yellowTo: .5, greenFrom: .5, greenTo: 0,
        }
    });
		//Advance Directives Gauge
    var wrapper2 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B3&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization2',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
		//Birth Certificates Gauge
    var wrapper3 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B4&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization3',
        options: { min: 97, max: 100, redFrom: 97, redTo: 98, yellowFrom: 98, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Hand Hygiene Gauge
    var wrapper4 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B5&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization4',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//HIPAA Release Form Gauge
    var wrapper5 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B6&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization5',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Hospital Acquired Pressure Ulcers Gauge
    var wrapper6 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B7&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization6',
        options: { min: 20, max: 0, redFrom: 20, redTo: 10, yellowFrom: 10, yellowTo: 3, greenFrom: 3, greenTo: 0,
        }
    });
			//Hourly Rounding/Repositioning Logs Gauge
    var wrapper7 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B8&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization7',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Intact Coverings Gauge
    var wrapper8 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B9&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization8',
        options: { min: 75, max: 100, redFrom: 75, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Isolation and Personal Protective Equipment (PPE) Gauge
    var wrapper9 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B10&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization9',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Isolation Supplies Gauge
    var wrapper10 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B11&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization10',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//IV Tubing Flagged Gauge
    var wrapper11 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B12&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization11',
        options: { min: 90, max: 100, redFrom: 90, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Nutrition Services Cleaning Assignments Gauge
    var wrapper12 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B13&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization12',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Patient Right Brochure Gauge
    var wrapper13 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B14&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization13',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Patient Rights Scripted Message Gauge
    var wrapper14 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B15&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization14',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Urinals Gauge
    var wrapper15 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B16&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization15',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
			//Wound Assessment Gauge
    var wrapper16 = new google.visualization.ChartWrapper({
        chartType: 'Gauge',
        dataSourceUrl: 'https://spreadsheets.google.com/spreadsheet/tq?range=B17&key=0AhCv9Xu_eRnSdHBrU3h2cFJ0Q1lNTWc5LUxVREEzQ0E&gid=8',
        containerId: 'visualization16',
        options: { min: 92, max: 100, redFrom: 92, redTo: 95, yellowFrom: 95, yellowTo: 99.1, greenFrom: 99.1, greenTo: 100,
        }
    });
        wrapper1.draw();
		wrapper2.draw();
		wrapper3.draw();
		wrapper4.draw();
		wrapper5.draw();
		wrapper6.draw();
		wrapper7.draw();
		wrapper8.draw();
		wrapper9.draw();
		wrapper10.draw();
		wrapper11.draw();
		wrapper12.draw();
		wrapper13.draw();
		wrapper14.draw();
		wrapper15.draw();
		wrapper16.draw();

}
</script>

</head>

<body>

<div class="wrapper">
<div id="bodydiv">
<div class="maintitle">CMS Metrics Dashboard<br />
	<span></span>
	</div></div>
<table class="gaugetable" style="width: 960px">
    <tbody>
            <tr valign="top">
			<td onclick=window.location.href="abuse_and_neglect_detail.aspx"><div><b><span id="m1"></b></div></a></td>
            <td onclick=window.location.href="advance_directives_detail.aspx"><div><b><span id="m2"></b></div></a></td>
            <td onclick=window.location.href="birth_certificates_detail.aspx"><div><b><span id="m3"></b></div></a></td>
            <td onclick=window.location.href="hand_hygiene_detail.aspx"><div><b><span id="m4"></b></div></a></td>
            <td onclick=window.location.href="HIPAA_detail.aspx"><div><b><span id="m5"></b></div></a></td>
            <td onclick=window.location.href="Hospital_Acquired_Pressure_Ulcers_detail.aspx"><div><b><span id="m6"></b></div></a></td>
        </tr>
        <tr class="spaceUnder" valign="top">
            <td onclick=window.location.href="abuse_and_neglect_detail.aspx"><div id="visualization1" style="width: 125px; height: 122px;"></div><span id="b22"></span></a></td>
            <td onclick=window.location.href="advance_directives_detail.aspx"><div id="visualization2" style="width: 125px; height: 122px;"></div><span id="b23"></span></a></td>
            <td onclick=window.location.href="birth_certificates_detail.aspx"><div id="visualization3" style="width: 125px; height: 122px;"></div><span id="b24"></span></a></td>
            <td onclick=window.location.href="hand_hygiene_detail.aspx"><div id="visualization4" style="width: 125px; height: 122px;"></div><span id="b25"></span></a></td>
            <td onclick=window.location.href="HIPAA_detail.aspx"><div id="visualization5" style="width: 125px; height: 122px;"></div><span id="b26"></span></a></td>
            <td onclick=window.location.href="Hospital_Acquired_Pressure_Ulcers_detail.aspx"><div id="visualization6" style="width: 125px; height: 122px;"></div><span id="b27"></span></a></td>
        </tr>
        <tr valign="top">
            <td onclick=window.location.href="Hourly_Rounding_Repositioning_Logs_detail.aspx"><div><b><span id="m7"></b></div></a></td>
            <td onclick=window.location.href="intact_coverings_detail.aspx"><div><b><span id="m8"></b></div></a></td>
            <td onclick=window.location.href="Isolation_and_(PPE)_detail.aspx"><div><b><span id="m9"></b></div></a></td>
            <td onclick=window.location.href="Isolation_supplies_detail.aspx"><div><b><span id="m10"></b></div></a></td>
            <td onclick=window.location.href="IV_Tubing_Flagged_detail.aspx"><div><b><span id="m11"></b></div></a></td>
            <td onclick=window.location.href="Nutrition_Cleaning_Assignments_detail.aspx"><div><b><span id="m12"></b></div></a></td>
        </tr>
        <tr class="spaceUnder" valign="top">
            <td onclick=window.location.href="Hourly_Rounding_Repositioning_Logs_detail.aspx"><div id="visualization7" style="width: 125px; height: 122px;"></div><span id="b28"></span></a></td>
            <td onclick=window.location.href="intact_coverings_detail.aspx"><div id="visualization8" style="width: 125px; height: 122px;"></div><span id="b29"></span></a></td>
            <td onclick=window.location.href="Isolation_and_(PPE)_detail.aspx"><div id="visualization9" style="width: 125px; height: 122px;"></div><span id="b30"></span></a></td>
            <td onclick=window.location.href="Isolation_supplies_detail.aspx"><div id="visualization10" style="width: 125px; height: 122px;"></div><span id="b31"></span></a></td>
            <td onclick=window.location.href="IV_Tubing_Flagged_detail.aspx"><div id="visualization11" style="width: 125px; height: 122px;"></div><span id="b32"></span></a></td>
            <td onclick=window.location.href="Nutrition_Cleaning_Assignments_detail.aspx"><div id="visualization12" style="width: 125px; height: 122px;"></div><span id="b33"></span></a></td>
        </tr>
            <tr valign="top">
            <td></td>
            <td onclick=window.location.href="Patient_Right_Brochure_detail.aspx"><div><b><span id="m13"></b></div></a></td>
            <td onclick=window.location.href="Patient_Rights_Scripted_Message_detail.aspx"><div><b><span id="m14"></b></div></a></td>
            <td onclick=window.location.href="Urinals_detail.aspx"><div><b><span id="m15"></b></div></a></td>
            <td onclick=window.location.href="Wound_Assessment_detail.aspx"><div><b><span id="m16"></b></div></a></td>
            <td></td>
        </tr>
        <tr valign="top">
            <td></td>
            <td onclick=window.location.href="Patient_Right_Brochure_detail.aspx"><div id="visualization13" style="width: 125px; height: 122px;"></div><span id="b34"></span></a></td>
            <td onclick=window.location.href="Patient_Rights_Scripted_Message_detail.aspx"><div id="visualization14" style="width: 125px; height: 122px;"></div><span id="b35"></span></a></td>
            <td onclick=window.location.href="Urinals_detail.aspx"><div id="visualization15" style="width: 125px; height: 122px;"></div><span id="b36"></span></a></td>
            <td onclick=window.location.href="Wound_Assessment_detail.aspx"><div id="visualization16" style="width: 125px; height: 122px;"></div><span id="b37"></span></a></td>
            <td></td>
        </tr>

    </tbody>
    </table>
<hr align="center" width="70%" />

</div>
</body>

</html>