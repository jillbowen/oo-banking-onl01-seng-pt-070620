class Transfer
  attr_accessor :sender, :receiver, :transfer_amount, :status
  
  def initialization(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
end
