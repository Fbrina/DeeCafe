package project.deecafe.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project.deecafe.models.Menu;

@Controller
public class CafeController {
    private String url = "jdbc:postgresql://localhost:5432/cafe";
    private String user = "postgres";
    private String password = "postgresql";

    @RequestMapping("/")
    public String index(Model model) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            Statement stmnt = conn.createStatement();
            String sql = "SELECT * FROM public.menu";
            ResultSet result = stmnt.executeQuery(sql);
            List<Menu> data = new LinkedList<>();
            
            while (result.next()) {
                Menu menus = new Menu();
                menus.setJenis(result.getString("jenis"));
                menus.setNama(result.getString("nama"));
                menus.setDeskripsi(result.getString("deskripsi"));
                menus.setHarga(result.getInt("harga"));

                data.add(menus);
            }
            model.addAttribute("data", data);
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "index";
    }

}
