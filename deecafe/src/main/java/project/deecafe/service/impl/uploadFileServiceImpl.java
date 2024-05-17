// package project.deecafe.service.impl;

// import org.springframework.stereotype.Service;
// import org.springframework.web.multipart.MultipartFile;

// import lombok.RequiredArgsConstructor;
// import lombok.extern.slf4j.Slf4j;
// import project.deecafe.entitity.uploadFileRequest;
// import project.deecafe.repository.uploadFileRepository;
// import project.deecafe.service.uploadFileService;

// @Service
// @RequiredArgsConstructor
// @Slf4j
// public class uploadFileServiceImpl implements uploadFileService{
//     private final uploadFileRepository uploadFileRepository;
    
//     @Override
//     public uploadFileRequest saveUploadFile(MultipartFile file) throws Exception {
//         if(uploadFileRepository.existsByImgName(file.getOriginalFilename())) {
//             log.info("This file {} has been already existed: ", file.getOriginalFilename());
//             return uploadFileRequest.builder()
//                 .imgName(file.getOriginalFilename())
//                 .build();
//         }

//         var uploadFile = uploadFileRequest.builder()
//             .imgName(file.getOriginalFilename())
//             .imgType(file.getContentType())
//             .imgData(file.getBytes())
//             .build();
        
//         return uploadFileRepository.save(uploadFile);
//     }
// }
package project.deecafe.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import project.deecafe.entitity.uploadFileRequest;
import project.deecafe.repository.uploadFileRepository;
import project.deecafe.service.uploadFileService;

@Service
@RequiredArgsConstructor
@Slf4j
public class uploadFileServiceImpl implements uploadFileService{
    private final uploadFileRepository uploadFileRepository;
    
    @Override
    public uploadFileRequest saveUploadFile(MultipartFile file) throws Exception {
        if(uploadFileRepository.existsByImgName(file.getOriginalFilename())) {
            log.info("This file {} has been already existed: ", file.getOriginalFilename());
            return uploadFileRequest.builder()
                .imgName(file.getOriginalFilename())
                .build();
        } else {
            // Create a new uploadFileRequest object with the file data
            uploadFileRequest newFile = uploadFileRequest.builder()
                .imgName(file.getOriginalFilename())
                // Add other file data here
                .build();

            // Save the new file to the repository
            uploadFileRepository.save(newFile);

            return newFile;
        }
    }
}