class BankAccount

  attr_accessor :status, :balance, :previous_balance
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @previous_balance = 1000
    @status = "open"
  end
  
  def name=(name)
    @name = name
  end
  
  def deposit(amt)
    balance = @balance + amt
    @previous_balance = @balance
    @balacnce = balance
  end
  
  def display_balance
    puts "$#{@balance}"
  end
  
  def valid?
    if @status = "open"
      if @balance > 0
        true
      end
    end
    false
  end
  
end
