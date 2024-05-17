package project.deecafe.entitity;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class uploadFileRequest {
    @Id
    @Column("id_img")
    private int idImg;
    
    @Column("id")
    private String id;

    @Column("img_name")
    private String imgName;
    
    @Column("img_type")
    private String imgType;

    @Column("img_data")
    private byte[] imgData;
}
