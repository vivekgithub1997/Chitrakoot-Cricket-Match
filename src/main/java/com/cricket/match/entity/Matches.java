package com.cricket.match.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import lombok.Data;

@Data
@Entity
public class Matches {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int matchId;

	private String matchName;

	private String matchDate;

	private String matchDay;

	private String matchTime;

	private String matchLocation;

	private String matchResult;

	private String matchStatus;

	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "teamone_Id")
	TeamOne teamOne;

	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "teamtwo_id")
	TeamTwo teamTwo;

	@ManyToOne
	@JoinColumn(name = "tournament_id")
	private Tournaments tournaments;

	@ManyToOne
	@JoinColumn(name = "groupdetails_id")
	private GroupDetails groupDetails;

	@OneToOne
	private MatchSummary matchSummary;

}
