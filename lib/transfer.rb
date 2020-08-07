class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
      if @status = "complete"
        @amount = 0
      elsif @sender.balance < @amount || @sender.valid? == false
      end
  end
  
end
