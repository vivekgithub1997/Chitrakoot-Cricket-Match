package com.cricket.match.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cricket.match.entity.GroupDetails;

public interface GroupsRepository extends JpaRepository<GroupDetails, Integer> {

	GroupDetails findByGroupDetailsName(String groupName);

}
