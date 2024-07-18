package com.cricket.match.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "match_summary_details")
public class MatchSummary {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer summaryId;

	@OneToOne
	@JoinColumn(name = "matches_id")
	private Matches matches;

}
