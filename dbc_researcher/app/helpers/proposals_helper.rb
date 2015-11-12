module ProposalsHelper

  def approved_status(proposal)
    proposal.approved ? "Approved" : "Open"
  end

  def pending_proposals
    Proposal.all.select { |proposal| proposal.approved != true }
  end
end
