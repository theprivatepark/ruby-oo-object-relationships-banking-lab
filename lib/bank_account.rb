require 'pry'

class BankAccount
    attr_reader :name
    attr_accessor  :balance, :status, :deposit

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(balance)
        @balance += balance
    end

    def display_balance
        return "Your balance is $#{self.balance}."
    end

    def valid?
         self.status == "open" && self.balance > 0
    end

    def close_account
        self.status = "closed"
    end
end