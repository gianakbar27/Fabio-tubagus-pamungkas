<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biodata</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
    <div class="container">
        <form action="controlle/login.php " method="post" class="login-username">
            <p class="login-text" style="font-size: 3rem; font-weigth: 000;">login</p>
            <div class="input-group">
                <input type="text" placeholder="nama" name="nama" required>
            </div>
            <div class="input-group">
                <select name="nama" id="kelas">
                    <option value="" disabled selected >Pilih kelas</option>
                    <option value="teknik komputer jaringan">teknik komputer jaringan </option>
                    <option value="rekayasa perangkat lunak">rekayasa perangkat lunak</option>
                    <option value="desain komunikasi visual">desain komunikasi visual </option>
                </select>
            </div>
            <div class="input-group">
                <button name="submit" class="btn">Masuk</button>
            </div>
            <p class="login-register">Anda Belum Memiliki Kelas <a href="register_view.php">silahkan register</a></p>
        </form>
    </div>
</body>
</html>