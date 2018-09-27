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
    sender.balance = sender.balance - amount
    receiver.balance = receiver.balance + amount
  end

  def reverse_transfer
  end

end
