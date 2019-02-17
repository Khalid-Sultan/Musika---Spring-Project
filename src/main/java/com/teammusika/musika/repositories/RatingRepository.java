package com.teammusika.musika.repositories;

import com.teammusika.musika.domains.Rating;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RatingRepository extends JpaRepository<Rating,Long> {
    @Override
    List<Rating> findAll();
    @Override
    Optional<Rating> findById(Long id);
}
