// package project.deecafe.controllers;

// import java.sql.Connection;
// import java.sql.DriverManager;
// import java.sql.ResultSet;
// import java.sql.Statement;
// import java.util.LinkedList;
// import java.util.List;

// import org.springframework.stereotype.Controller;
// import org.springframework.ui.Model;
// import org.springframework.web.bind.annotation.RequestMapping;

// import project.deecafe.models.Menu;

// @Controller
// public class CafeController {
//     private String url = "jdbc:postgresql://localhost:5432/cafe";
//     private String user = "postgres";
//     private String password = "postgresql";

//     @RequestMapping("/")
//     public String index(Model model) {
//         try {
//             Class.forName("org.postgresql.Driver");
//             Connection conn = DriverManager.getConnection(url, user, password);
//             Statement stmnt = conn.createStatement();
//             String sql = "SELECT * FROM public.menu";
//             ResultSet result = stmnt.executeQuery(sql);
//             List<Menu> data = new LinkedList<>();
            
//             while (result.next()) {
//                 Menu menus = new Menu();
//                 menus.setJenis(result.getString("jenis"));
//                 menus.setNama(result.getString("nama"));
//                 menus.setDeskripsi(result.getString("deskripsi"));
//                 menus.setHarga(result.getInt("harga"));
//                 menus.setGambar(result.getBytes("gambar"));

//                 data.add(menus);
//             }
//             model.addAttribute("data", data);
//             conn.close();
//         } catch (Exception e) {
//             e.printStackTrace();
//         }

//         return "index";
//     }

// }

package project.deecafe.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import project.deecafe.models.Menu;

@Controller
public class CafeController {
    private String url = "jdbc:postgresql://localhost:5432/cafe";
    private String user = "postgres";
    private String password = "postfresql";
    private String sql;

    private String getIndex(Model model, String viewName) {
        List<Menu> data = new LinkedList<>();
        String connStatus = "Disconnected";
        String connMessage = "";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmnt = conn.createStatement();
             ResultSet result = stmnt.executeQuery("SELECT * FROM public.menu")) {

            while (result.next()) {
                Menu menus = new Menu();
                menus.setId(result.getString("id"));
                menus.setJenis(result.getString("jenis"));
                menus.setNama(result.getString("nama"));
                menus.setDeskripsi(result.getString("deskripsi"));
                menus.setHarga(result.getInt("harga"));

                data.add(menus);
            }
            connStatus = "Connected";
        } catch (Exception e) {
            connMessage = e.getMessage();
            e.printStackTrace();
        }
        model.addAttribute("data", data);
        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return viewName;
    }

    @RequestMapping("/admin")
    public String adminIndex(Model model) {
        return getIndex(model, "admin/index_admin");
    }

    @RequestMapping("/")
    public String userIndex(Model model) {
        return getIndex(model, "index_user");
    }

    @RequestMapping("/add")
    public String add() {
        return "form";
    }

    @RequestMapping("/save")
    public String save(Model model, Menu menus) {
        String connStatus = "Disconnected";
        String connMessage = "";

        try {
            Class.forName("org.postgresql.Driver");

            Connection conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            Statement stmnt = conn.createStatement();

            sql = "INSERT INTO public.menu (id, jenis, nama, deskripsi, harga) VALUES ('" + menus.getId() + "','" + menus.getJenis() + "', '" + menus.getNama() + "', '" + menus.getDeskripsi() + "', '" + menus.getHarga() + "')";

            stmnt.execute(sql);

        } catch (Exception e) {
            connMessage = e.getMessage();
        }
        
        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "redirect:/admin";
    }

    @RequestMapping("/edit")
    public String edit(Model model, @RequestParam String id) {
        String connStatus = "Disconnected";
        String connMessage = "";
        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            connStatus = "Connected";

            Statement stmnt = conn.createStatement();
            sql = "SELECT * FROM public.menu WHERE id = '" + id + "'";
            ResultSet rs = stmnt.executeQuery(sql);

            rs.next();
            Menu menus = new Menu(rs.getString("id"), rs.getString("jenis"), rs.getString("nama"), rs.getString("deskripsi"), rs.getInt("harga"));

            model.addAttribute("menu", menus);

        } catch (Exception e) {
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "detail";
    }

    @RequestMapping("/update")
    public String update(Model model, Menu menus, @RequestParam String kode) {
        String connStatus = "Disconnected";
        String connMessage = "";
        try {
            Class.forName("org.postgresql.Driver");

            Connection conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            Statement stmnt = conn.createStatement();

            sql = "UPDATE public.menu SET id = '" + menus.getId() + "', jenis = '" + menus.getJenis() + "', nama = '" + menus.getNama() + "', deskripsi = '" + menus.getDeskripsi() + "', harga = '" + menus.getHarga() + "' WHERE id = '" + kode + "'";

            stmnt.execute(sql);

        } catch (Exception e) {
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "redirect:/admin";
    }

    @RequestMapping("/delete")
    public String delete(Model model, @RequestParam String id) {
        String connStatus = "Disconnected";
        String connMessage = "";

        try {
            Class.forName("org.postgresql.Driver");

            Connection conn = DriverManager.getConnection(url, user, password);

            connStatus = "Connected";

            Statement stmnt = conn.createStatement();

            sql = "DELETE FROM public.menu WHERE id = '" + id + "'";

            stmnt.execute(sql);

        } catch (Exception e) {
            connMessage = e.getMessage();
        }

        model.addAttribute("connStatus", connStatus);
        model.addAttribute("connMessage", connMessage);

        return "redirect:/admin";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}