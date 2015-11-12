module ProposalsHelper

  def approved_status(proposal)
    proposal.approved ? "Approved" : "Open"
  end
end
