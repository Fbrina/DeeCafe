package project.deecafe.entitity;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class uploadFileResponse {
    private boolean isError;
    private String imgName;
    private String imgLink;
}
