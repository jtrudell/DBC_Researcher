module ProposalsHelper

  def approved_status(proposal)
    proposal.approved ? "Yes" : "Not Yet"
  end
end
