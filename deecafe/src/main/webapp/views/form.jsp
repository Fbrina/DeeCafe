<!DOCTYPE html>
<html>
    <head>
        <title>Menu</title>
    </head>
    <body>
        <h1>Form Menu</h1>
        <form action="/save" method="post">
            <fieldset>
                <p>
                    ID<br>
                    <input type="text" name="id" required>
                </p>
                <p>
                    Jenis<br>
                    <input type="text" name="jenis" required>
                </p>
                <p>
                    Nama<br>
                    <input type="text" name="nama" required>
                </p>
                <p>
                    Deskripsi<br>
                    <input type="text" name="deskripsi" required>
                </p>
                <p>
                    Harga<br>
                    <input type="text" name="harga" required>
                </p>
                <p>
                    <input type="submit" value="Simpan">
                    <a href="/admin">Batal</a>
                </p>
            </fieldset>
        </form>
    </body>
</html>