package project.deecafe.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import project.deecafe.entitity.uploadFileRequest;

@Repository
@Transactional(readOnly = true)
public interface uploadFileRepository extends CrudRepository<uploadFileRequest, Long>{
    boolean existsByImgName(String imgName);
}
