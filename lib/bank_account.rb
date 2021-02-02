class BankAccount

  attr_accessor :status, :balance, :previous_balance
  
  def initialize(name)
    @name = name
    @balance = 1000
    @previous_balance = 1000
    @status = "open"
  end
  
  attr_reader :name
  
  def name=(name)
    @name = name
  end
  
  def deposit(amt)
    @previous_balance = @balance
    total = @balance
    total = (total + amt)
    @balance = total
  end
  
  def display_balance
    return "Your balance is $#{@balance}."
  end
  
  def valid?
    if @status == "open" && @balance > 0
      true
    else
      false
    end
  end
  
end
