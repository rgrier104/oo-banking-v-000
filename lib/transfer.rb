class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = "pending"
  end

  def valid?
    if sender.valid? and receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid?
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      @status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
  end

end
