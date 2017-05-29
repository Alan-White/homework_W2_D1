require('minitest/autorun')
require_relative('./student')

class TestStudent < MiniTest::Test
  def setup
    @student = Student.new("Alan", 13)
  end

  def test_student_name
    assert_equal("Alan", @student.name)
  end

  def test_student_cohort
    assert_equal(13, @student.cohort)
  end

  def test_student_speak
    assert_equal("I can talk!", @student.speak)
  end

  def test_language
    assert_equal("I love Ruby", @student.language("Ruby"))
  end


end
#------------------------------------------------
#     def test_student_cohort
#       assert_equal(13, @student.cohort)
#     end

#     def test_account_type
#       assert_equal("business", @bank_account.type)
#     end

#   def test_set_account_name
#     @bank_account.holder_name = ("Zsolt")
#     assert_equal("Zsolt", @bank_account.holder_name)
#   end

#   def test_set_account_amount
#     @bank_account.amount = (123)
#     assert_equal(123, @bank_account.amount)
#   end

#   def test_set_account_type
#     @bank_account.type = ("personal")
#     assert_equal("personal", @bank_account.type)
#   end

#   def test_pay_into_account
#     @bank_account.pay_in(100)
#     assert_equal(600, @bank_account.amount)
#   end

#   def test_monthly_fee_business
#     @bank_account.pay_monthly_fee()
#     assert_equal(450, @bank_account.amount)
#   end

#   def test_monthly_fee_personal
#     account = BankAccount.new("Zsolt", 100, "personal")
#     account.pay_monthly_fee()
#     assert_equal(90, account.amount)
#   end


# end