<%@ page import="project.deecafe.models.Menu" %>
<% Menu m = (Menu) request.getAttribute("menu"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Menu</title>
</head>
<body>
    <h1>Edit Menu</h1>
    <form action="/update" method="post">
        <fieldset>
            <p>
                ID<br>
                <input type="text" name="id" value="<%= m.getId() %>" required>
                <input type="hidden" name="kode" value="<%= m.getId() %>">
            </p>
            <p>
                Jenis<br>
                <input type="text" name="jenis" value="<%= m.getJenis() %>" required>
            </p>
            <p>
                Nama<br>
                <input type="text" name="nama" value="<%= m.getNama() %>" required>
            </p>
            <p>
                Deskripsi<br>
                <input type="text" name="deskripsi" value="<%= m.getDeskripsi() %>" required>
            </p>
            <p>
                Harga<br>
                <input type="number" name="harga" value="<%= m.getHarga() %>" required>
            </p>
            <p>
                <input type="submit" value="Simpan">
                <a href ="/admin">Batal</a>
            </p>
        </fieldset>
    </form>
</body>
</html>