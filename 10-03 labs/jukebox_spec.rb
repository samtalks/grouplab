def validate_email(email)
  if email.match("@") && email.include?(".")
    true
  else
    false
  end
end

describe "validate_email" do
  it "should return true with a valid email" do
    email = "avi@test.com"

    validate_email(email).should eq(true)
  end

  it "is false without an @ symbol" do
    email = "avi.com"

    validate_email(email).should eq(false)
  end

  it "is false without a domain" do
    email = "avi@"

    validate_email(email).should eq(false)
  end

end