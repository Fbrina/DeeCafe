<%@ page import="java.util.List" %>
<%@ page import="project.deecafe.models.Menu" %>
<% 
    List<Menu> d = (List<Menu>) request.getAttribute("data");
    String connStatus = (String) request.getAttribute("connStatus");
    String connMessage = (String) request.getAttribute("connMessage");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Menu</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header h1 {
            margin-left: 20px;
        }
        .logout {
            margin-right: 20px;
        }
        .logout a {
            color: white;
            text-decoration: none;
            background-color: #dc3545;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .logout a:hover {
            background-color: #c82333;
        }
        main {
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px 0;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            color: white;
            background-color: #28a745;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #218838;
        }
        .btn-danger {
            background-color: #dc3545;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .status {
            font-weight: bold;
        }
        .status.connected {
            color: green;
        }
        .status.disconnected {
            color: red;
        }
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: white;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<header>
    <h1>Admin Menu</h1>
    <div class="logout">
        <a href="/logout">Logout</a>
    </div>
</header>
<main>
    <p>
        Status Connection: <span class="status <%= "Connected".equals(connStatus) ? "connected" : "disconnected" %>">
        <%= "Connected".equals(connStatus) ? "Connected" : "Disconnected" %>
        </span>
        <font color='red'><%= connMessage != null ? connMessage : "" %></font>
    </p>
    <p>
        Jumlah Data: <%= d != null ? d.size() : 0 %>
    </p>
    <p>
        <a href="/add" class="btn">Tambah</a>
    </p>
    <table>
        <thead>
        <tr>
            <th>No.</th>
            <th>Id</th>
            <th>Jenis</th>
            <th>Nama</th>
            <th>Deskripsi</th>
            <th>Harga</th>
            <th>Aksi</th>
        </tr>
        </thead>
        <tbody>
        <% if (d != null && d.size() > 0) { %>
        <% for (int i = 0; i < d.size(); i++) { %>
        <tr>
            <td><%= i + 1 %></td>
            <td><%= d.get(i).getId() %></td>
            <td><%= d.get(i).getJenis() %></td>
            <td><%= d.get(i).getNama() %></td>
            <td><%= d.get(i).getDeskripsi() %></td>
            <td><%= d.get(i).getHarga() %></td>
            <td>
                <a href="/edit?id=<%= d.get(i).getId() %>" class="btn">Ubah</a>
                <a href="/delete?id=<%= d.get(i).getId() %>" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data?');">Hapus</a>
            </td>
        </tr>
        <% } %>
        <% } else { %>
        <tr>
            <td colspan="7" align="center">Tidak ada data</td>
        </tr>
        <% } %>
        </tbody>
    </table>
</main>
<div class="footer">
    &copy; Deecafe Admin
</div>
</body>
</html>