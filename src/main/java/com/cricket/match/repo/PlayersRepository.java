package com.cricket.match.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cricket.match.entity.Players;

@Repository
public interface PlayersRepository extends JpaRepository<Players, Integer> {

	@Query("SELECT p FROM Players p WHERE p.country.countryId = :id")
    List<Players> findByCountry(@Param("id") Integer id);
}
