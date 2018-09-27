class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = "pending"
  end

  def valid?
  end

  def execute_transaction

  end

  def reverse_transfer
  end

end
