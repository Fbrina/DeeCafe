package project.deecafe.models;

public class Menu {
    private String id;
    private String jenis;
    private String nama;
    private String deskripsi;
    private int harga;

    public Menu() {
    }
    
    public Menu(String id, String jenis, String nama, String deskripsi, int harga) {
        this.id = id;
        this.jenis = jenis;
        this.nama = nama;
        this.deskripsi = deskripsi;
        this.harga = harga;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setJenis(String jenis) {
        this.jenis = jenis;
    }

    public String getJenis() {
        return jenis;
    }
    
    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getNama() {
        return nama;
    }

    public void setDeskripsi(String deskripsi) {
        this.deskripsi = deskripsi;
    }

    public String getDeskripsi() {
        return deskripsi;
    }

    public void setHarga(int harga) {
        this.harga = harga;
    }

    public int getHarga() {
        return harga;
    }
}