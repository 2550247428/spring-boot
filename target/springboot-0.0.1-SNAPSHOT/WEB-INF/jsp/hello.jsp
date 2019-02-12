<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Hi JSP. 现在时间是  ${now}

<html><head>
      <title>表链图</title>
      <script src="js/jquery-1.8.0.min.js"></script>
  <style type="text/css">
table {border-collapse:collapse; }
table, td, th { border:1px solid black; }
canvas{position:absolute;top:0px;left:0px;z-index:-1;}

.butt1 {
	-moz-box-shadow: 0px 1px 0px 0px #f0f7fa;
	-webkit-box-shadow: 0px 1px 0px 0px #f0f7fa;
	box-shadow: 0px 1px 0px 0px #f0f7fa;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #33bdef), color-stop(1, #019ad2));
	background:-moz-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-webkit-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-o-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-ms-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#33bdef', endColorstr='#019ad2',GradientType=0);
	background-color:#33bdef;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	
	font-size:15px;
	font-weight:bold;
	padding:6px 30px;
	text-decoration:none;
	text-shadow:0px -1px 0px #5b6178;
	background-image:url(JS/themes/icons/link.png); background-repeat:no-repeat; background-position:8px 6px;
}
.butt1:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #019ad2), color-stop(1, #33bdef));
	background:-moz-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-webkit-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-o-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-ms-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#019ad2', endColorstr='#33bdef',GradientType=0);
	background-color:#019ad2;
	background-image:url(JS/themes/icons/link.png); background-repeat:no-repeat; background-position:8px 6px;
}
.butt1:active {
	position:relative;
	top:1px;
}

.butt2 {
	-moz-box-shadow: 0px 1px 0px 0px #f0f7fa;
	-webkit-box-shadow: 0px 1px 0px 0px #f0f7fa;
	box-shadow: 0px 1px 0px 0px #f0f7fa;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #33bdef), color-stop(1, #019ad2));
	background:-moz-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-webkit-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-o-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-ms-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#33bdef', endColorstr='#019ad2',GradientType=0);
	background-color:#33bdef;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-size:15px;
	font-weight:bold;
	padding:6px 30px;
	text-decoration:none;
	text-shadow:0px -1px 0px #5b6178;
	background-image:url(JS/themes/icons/gx.png); background-repeat:no-repeat; background-position:8px 6px;
}
.butt2:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #019ad2), color-stop(1, #33bdef));
	background:-moz-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-webkit-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-o-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-ms-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#019ad2', endColorstr='#33bdef',GradientType=0);
	background-color:#019ad2;
	background-image:url(JS/themes/icons/gx.png); background-repeat:no-repeat; background-position:8px 6px;
}
.butt2:active {
	position:relative;
	top:1px;
}
</style> 
   </head>
 <body> 
   <h2 style=" text-align:center; font-family:黑体; color:Blue;"><font style="border-style:solid;border-width:1px; padding:5px; border-color:Black">表</font>
   <font style=" color:red">---</font><font style="border-style:solid;border-width:1px;padding:5px; border-color:Black">链</font><font style=" color:red">---</font>
   <font style="border-style:solid;border-width:1px;padding:5px; border-color:Black">图</font>&nbsp;&nbsp;<img src="JS/along.gif" width="66"></h2>
   <input style="width:280px; margin-left:90px; height:22px;font-size:16px; border-color:#33bdef; border-style:solid;" id="hm"> &nbsp;
   <a href="#" class="butt1" onclick="sou($('#hm').val(),0,0)">开始表链</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="butt2" onclick="tu()">&nbsp;&nbsp;关系图</a>
   &nbsp;&nbsp;请在输入框中输入身份证号或车牌号等任何唯一号码 &nbsp;&nbsp;今日使用量:<span id="zongshu">15415</span><script>$.getJSON("ashx/chuzu.ashx?lx=count",function(zongshu){$('#zongshu').text(zongshu.data);});if(!+[1,]){document.write(" <a href='http://10.56.12.22/download/chrome.exe'>请点击下载谷歌浏览器</a>")} </script><br>
   
<div id="a" style="margin-left:90px;">
<div id="411329199709143138">4113291654564654653138<table><tbody><tr><th width="34">类型</th><th width="34">号名</th><th style="width:10px;">号码</th><th style="width:100px;">号码2</th><th style="width:72px;">时间</th><th style="width:72px;">时间2</th><th style="width:80px;">地点</th><th style="width:80px;">地点2</th><th>详细内容</th><th width="34">照片</th></tr><tr id="411325456456469143138__305050606"><td id="id1">客车实名</td><td id="id2">阿斯蒂芬</td><td id="id3">41111111111111</td><td id="id4"></td><td id="id5">2000/12/23 14:50:20</td><td id="id6"></td><td id="id7">411300001郑州西站</td><td id="id8">内乡</td><td>类型:客车实名，姓名:阿斯蒂芬，身份证号:4111111111，hm2:，售票时间:2000-12-23 14:50:20，sj2:，乘车站:41300001南阳西站，目的站:内乡，民族:，座位号:4，开车时间:201812231500，gj4:，班次:AG3203，票号:47152347，票类:0，票别:，票价:24，售票员:0103，区划:41130</td><td></td></tr><tr id="411329199709143138__304583050"><td id="id1">客车实名</td><td id="id2">时代风格</td><td id="id3">411111111</td><td id="id4"></td><td id="id5">2018/12/22 15:51:26</td><td id="id6"></td><td id="id7">411300034内乡汽车站</td><td id="id8">南阳(高速)</td><td>类型:客车实名，姓名:山东分公司的分，身份证号:411111111，hm2:，售票时间:2018-12-22 15:51:26，sj2:，乘车站:411300034内乡汽车站，目的站:南阳(高速)，民族:，座位号:222，开车时间:201812221810，gj4:，班次:KL3001，票号:70568461，票类:0，票别:，票价:24，售票员:3407，区划:411300034</td><td></td></tr><tr id="411329199709143138_411327711006663_114524720"><td id="id8"></td><td></td></tr><tr id="411329199709143138__229434798"><td id="id1">社保</td><td id="id2">赵广涛</td><td id="id3">423232323232338</td><td id="id4"></td><td id="id5"></td><td id="id6"></td><td id="id7">410199</td><td id="id8"></td><td>类型:社保，姓名:赵广涛，身份证号:411232323238，手机电话:，sj:，sj2:，参保地常住地:410199，户籍地:，民族:1，身份:，学历:，gj4:，婚姻:</td><td></td></tr></tbody></table></div><div id="411327711006663">411327711006663<table><tbody><tr><th width="34">类型</th><th width="34">号名</th><th style="width:10px;">号码</th><th style="width:100px;">号码2</th><th style="width:72px;">时间</th><th style="width:72px;">时间2</th><th style="width:80px;">地点</th><th style="width:80px;">地点2</th><th>详细内容</th><th width="34">照片</th></tr><tr id="41168686843138_411327711006663_114524720"><td id="id1">常住人口</td><td id="id2">时代风格</td><td id="id3"><a href="#" onclick="sou('4168686809143138',1,0)">46868689143138</a></td><td id="id4">4111111111</td><td id="id5">2007/9/14 0:00:00</td><td id="id6">2009/4/28 0:12:25</td><td id="id7">山东分公司的归属地感受到</td><td id="id8"></td><td>民族:汉，与户主关系:长子，姓名:赵广涛，身份证号:山东分公司的分，户号:5645646546，迁入时间:2009-04-28 00:12:25，行政区划:411327，住址:时代风格社付电费是f时代风格寨撒旦法年撒旦法马庄　，常口ID:93451215，派出所:社旗撒旦法公安局，婚否:null，文化:null，籍贯:第三方公司垫付旗县</td><td></td></tr><tr id="42345234523454_411327711006663_87045695"><td id="id1">常住人口</td></tr></tbody></table></div></div>
<canvas id="can" height="5077" width="1607"></canvas>
<script src="js/wan.js"></script>
<script>
//alert('您好，“表链图”软件已经小范围开放使用了半年，但该系统为民警个人开发，近期省厅将举办“省厅警务创新博览会”，为能使该软件能继续服务大家，请于9月25日前上报曾经产生的战果(及本人计算机IP地址)至：dangyulong@gat.en，过期作者将根据战果及IP开放使用权限；如无战果，说明本软件对您作用不大，将一律停用。同时，请在博览会的参展期间予以支持本软件，给作者以进一步升级的鼓励，并欢迎扫码加入微信群');
</script>
   







https://10.57.2.35:9009/wan.htm#</body></html>