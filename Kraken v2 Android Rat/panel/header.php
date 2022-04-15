<?php

$functions = new functions;
$getBots = $functions->getBots();
$getCards = $functions->getCards();
$getInjections = $functions->getInjections();

?>

<div class="menu2 header" style="background: rgba(1, 1, 1, 0.6);box-shadow:0px 0px 2px #ffc20e;">


	<nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark" style="background: transparent;">
	
      <ul class="navbar-nav mr-auto" style="background: transparent;">

        <li class="nav-item" style="margin-right:15px;margin-left:25px;margin-top:21px;">
          <a  href="?cont=bots&page=1" >
						<p class="icon_label" style='margin-left:22px; margin-top: -9px;font-family:sans-serif;border-radius:3px;border:none;'><?php echo $getBots;?></p>
						<center>
            <img src="images/img/android4.png" width="40px"></br>
						<B style="font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;">  Botlar </B>
						</center>
          </a>
        </li>

				<li class="nav-item" style="margin-right: 15px; margin-top:21px;">
          <a class="nav-listyle='margin-left:27px; margin-top: -9px;'nk" href="?cont=statistic">
						<center>
            <img src="images/img/stats4.png" width="40px"></br>
						<B style="font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;">  İstatistikler </B>
						</center>
          </a>
        </li>
<?php
	if (($_SESSION['panel_right']=="admin")||($_SESSION['panel_right']=="user")){

			echo "<li class='nav-item' style='margin-right: 15px; margin-top:21px;'>
					<a class='nav-link' href='?cont=numbers'>
		 			<center>
					 <img src='images/img/contacts4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Kişiler </B>
						</center>
					</a>
				</li>

				<li class='nav-item' style='margin-right: 15px; margin-top:21px;'>
					<a class='nav-link' href='?cont=cards&find=' >
				<center>
					<p class='icon_label' style='margin-left:27px; margin-top: -9px;font-family:sans-serif;border-radius:3px;border:none;'>$getCards</p>
					<img src='images/img/cc4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Kredi Kartları </B>
						</center>
					</a>
				</li>

				<li class='nav-item' style='margin-right: 15px; margin-top:21px;'>
					<a class='nav-link' href='?cont=injections&find=' >
						<center>
							<p class='icon_label' style='margin-left:37px; margin-top:-9px;font-family:sans-serif;border-radius:3px;border:none;'>$getInjections</p>
					<img src='images/img/inj4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  İnjeksiyonlar </B>
						</center>
					</a>
				</li>

				<li class='nav-item' style='margin-right: 18px; margin-top:21px;'>
					<a class='nav-link' href='?cont=ws&page=' >
					<center>
					<img src='images/img/bug4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Apk İzleme </B>
						</center>
					</a>
				</li>";
	}
  if ($_SESSION['panel_right']=="admin"){
			echo 	"<li class='nav-item' style='margin-right: 18px; margin-top:21px;'>
					<a class='nav-link' href='?cont=files'>
						<center>
						<img src='images/img/files4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Dosyalar </B>
						</center>
					</a>
				</li>";
  }
	if (($_SESSION['panel_right']=="admin")||($_SESSION['panel_right']=="user")){
				echo "<li class='nav-item' style='margin-right: 18px; margin-top:21px;'>
					<a class='nav-link' href='?cont=spam'>
						<center>
						<img src='images/img/spam4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\"> Numara Spam </B>
						</center>
					</a>
				</li>

				<li class='nav-item' style='margin-right: 15px; margin-top:21px;'>
					<a class='nav-link' href='?cont=maps'>
						<center>
					<img src='images/img/loc4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Bot Lokasyonları </B>
						</center>
					</a>
				</li>

				<li class='nav-item' style='margin-right: 18px; margin-top:21px;'>
					<a class='nav-link' href='?cont=commands'>
						<center>
						<img src='images/img/command4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Komutlar </B>
						</center>
					</a>
				</li>";
}

if ($_SESSION['panel_right']=="admin"){
			echo	"<li class='nav-item' style='margin-right: 15px; margin-top:21px;'>
					<a class='nav-link' href='?cont=settings' >
								<center>
						<img src='images/img/setting4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Panel Ayarları </B>
						</center>
					</a>
				</li>";
}
if ($_SESSION['panel_right']=="admin"){
			echo	"<li class='nav-item' style='margin-right: 15px; margin-top:21px;'>
					<a class='nav-link' href='../apkbuilder/' >
								<center>
						<img src='images/img/ekle4.png' width='40px'></br>
						<B style=\"font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;\">  Apk Oluştur </B>
						</center>
					</a>
				</li>";
}
?>

				<!--Exit-->
				<div style=" position: absolute;  margin-top: 18px;  right: 20px;  width: auto;  height: auto;">
				<li class="nav-item" style="">
					<a class="nav-link" href="?cont=exit">
								<center>
						<img src='images/img/logout4.png' width='40px'></br>
                        <B style="font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;">  Çıkış Yap </B>
						</center>
					</a>
				</li>
			</div>

      </ul>
  </nav>

</div>
