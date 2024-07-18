package com.cricket.match.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "tournament")
public class Tournaments {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int tournamentId;

	@Column(unique = true)
	private String tournamentName;

	private String tournamentFormat;

	private String tournamentStarDate;

	private String tournamentEndDate;

	private String tournamentStatus;

	@OneToMany
	private List<GroupDetails> groups;

}
