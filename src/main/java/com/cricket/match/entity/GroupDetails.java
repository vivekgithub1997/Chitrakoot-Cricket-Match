package com.cricket.match.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "groups_details")
public class GroupDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int groupDetailsId;

	private String groupDetailsName;

	private int numberOfTeam;

	private int numberOfMatches;

	@ManyToOne
	private Tournaments tournaments;

}
