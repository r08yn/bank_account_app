require_relative('./bank_account_functions')
require_relative('./bank_data')#have copied from specs file but deleted the . as they are in the same file, unlike the specs.

puts "Welcome to CC Bank!"

while(true)
  puts "What would you like to do?"
  puts
  puts "Options:"
  puts "1: Show account holders"
  puts "2: Show the first account holder"
  puts "3: See accounts by type"
  puts "4: Show total in bank"
  puts "5: Show accounts by risk"
  puts "6: Show the largest bank account"
  puts " q: Exit"

  choice = gets.chomp().downcase() #best to downcase so even if the user puts in an uppercase it still works!
  if choice == "q"
    puts "See you later"
    break
  elsif choice == "1"
    puts "Account holders: "
    puts bank_account_owner_names(ACCOUNTS)
    break
  elsif choice == "2"
    puts "The first account holder is: "
    puts first_bank_account_holder(ACCOUNTS)
    break
  elsif choice == "3"
    puts "1: Business;
    2: Personal"
    type = gets.chomp()
    if type == "1"
      puts accounts_by_type("business", ACCOUNTS)
      break
    elsif type == "2"
      puts accounts_by_type("personal", ACCOUNTS)
      break
    end
  elsif choice == "4"
    puts total_cash_in_bank(type=nil, ACCOUNTS)
    break
  elsif choice == "5"
    puts "View
    1: High Risk
    or
    2: Medium risk
    or
    3: Low risk?"
    risk_level = gets.chomp()
    if risk_level == "1"
      puts find_accounts_by_risk("high", ACCOUNTS)
      break
    elsif risk_level == "2"
      puts find_accounts_by_risk("medium", ACCOUNTS)
      break
    elsif risk_level == "3"
      puts find_accounts_by_risk("low", ACCOUNTS)
      break
    elsif choice == "6"
    end
  end
end
