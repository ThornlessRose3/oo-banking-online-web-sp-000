class Transfer
  # your code here

  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    # are accounts valid?
    if self.valid? && @sender.balance > @amount
      @sender.deposit(-@amount)
      @receiver.deposit(@amount)
      @status = "completed"
    else
      @status = "rejected"
    end
  end
  
  
end
