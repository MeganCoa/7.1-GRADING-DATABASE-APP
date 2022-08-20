package co.grandcircus71.GRADING.DATABASE.APP;
import org.springframework.data.mongodb.repository.MongoRepository;

import co.grandcircus71.GRADING.DATABASE.APP.models.Grades;

public interface GradesRepository extends MongoRepository<Grades, String> {

	

}