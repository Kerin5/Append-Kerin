<?php
?>
<HTML>
	<HEAD>
		Registrasi
	</HEAD>
	<BODY>
		<form name=registrasi method=post action='registrasi_do.php'>
			User ID
			<input type=text name=userid size=20>
			<BR><BR>
			Nama
			<input type=text name=username size=20>
			<BR><BR>
			Password
			<input type=password name=userpassword size=20>
			<BR><BR>
			<input type=submit value='Registrasi'>
			<BR>
		</form>
		<BR><BR>
		<form name=hapusdata method=post action='registrasi_delete.php'>
			User ID
			<input type=text name=userid size=20>
			<input type=submit value='Hapus Data'>
			<BR>
		</form>
	</BODY>
</HTML>