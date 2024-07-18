package com.cricket.match.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cricket.match.entity.PlayerRecords;

public interface PlayerRecordsRepository extends JpaRepository<PlayerRecords, Integer> {

}
