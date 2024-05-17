package project.deecafe.controllers;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import project.deecafe.entitity.uploadFileResponse;
import project.deecafe.service.uploadFileService;
import lombok.Builder;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@Builder
@RequiredArgsConstructor
@Slf4j
public class uploadFileController {
    private final uploadFileService uploadFileService;

    @PostMapping("/images/uploadfile")
    public uploadFileResponse uploadFile(MultipartFile file) {
        try {
            var uploadFile = uploadFileService.saveUploadFile(file);
            return uploadFileResponse.builder()
                .isError(false)
                .imgName(uploadFile.getImgName())
                .imgLink(creteUploadFileLink(uploadFile.getImgName()))
                .build();
        } catch (Exception e) {
            log.error("Upload Image Failed.", e);
            return uploadFileResponse.builder()
                .isError(true)
                .imgName(file.getOriginalFilename())
                .build();
        }
    }

    private String creteUploadFileLink(String fileName) {
        return ServletUriComponentsBuilder.fromCurrentRequest()
            .replacePath("/images/" + fileName)
            .toUriString();
    }
}
