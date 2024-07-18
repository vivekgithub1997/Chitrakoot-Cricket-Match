package com.cricket.match.tournament.services;

import java.util.List;

import com.cricket.match.entity.GroupDetails;

public interface GroupsServices {

	String createGroups(GroupDetails groups, String tournamentName);

	List<GroupDetails> getAllgroups();

}
