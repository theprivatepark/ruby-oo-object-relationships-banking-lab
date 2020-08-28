require 'pry'
class Transfer

  attr_reader :sender, :receiver
  attr_accessor :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    self.sender.balance -= @amount
    self.receiver.balance += @amount
    self.status = "complete"
  end

end
