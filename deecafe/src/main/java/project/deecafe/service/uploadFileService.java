package project.deecafe.service;

import org.springframework.web.multipart.MultipartFile;

import project.deecafe.entitity.uploadFileRequest;

public interface uploadFileService {

    uploadFileRequest saveUploadFile(MultipartFile file) throws Exception;

}
