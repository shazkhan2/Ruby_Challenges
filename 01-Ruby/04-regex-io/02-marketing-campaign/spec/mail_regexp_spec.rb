require "mail_regexp"


describe "email marketing challenge" do
  let(:emails) do
    [
      "thomasgmail.com",
      "adel@yahoo.dk",
      "david@gmail.com",
      "karl@karnovgroup.com",
      "martin@ofir.dk",
      "jurgen@berlin.de"
    ]
  end

  let(:valid_emails) do 
    [
      "adel@yahoo.dk",
      "david@gmail.com",
      "karl@karnovgroup.com",
      "martin@ofir.dk",
      "jurgen@berlin.de"
    ]
  end

  describe "#valid?" do
    it "should return true with a valid email" do
      expect(valid?("nick@karnov.com")).to be true
    end

    it "should return false with an invalid email" do
      expect(valid?("nickkarnovcom")).to be false
      expect(valid?("nickkarnov.com")).to be false
      expect(valid?("nick@karnovcom")).to be false
    end
  end

  describe "#clean_database" do
    it "should return a table with only the valid emails" do
      expect(clean_database(emails)).to eq ["adel@yahoo.dk", "david@gmail.com", "karl@karnovgroup.com", "martin@ofir.dk",
                                            "jurgen@berlin.de"]
    end
  end


  describe "#group_by_tld" do
    it "should return a Hash with the emails addresses grouped by TLD" do
      expected = {"com"=>["david@gmail.com", "karl@karnovgroup.com"], "de"=>["jurgen@berlin.de"], "dk"=>["adel@yahoo.dk", "martin@ofir.dk"]}
      expect(group_by_tld(valid_emails)).to eq(expected)
    end
  end


  describe "#compose_mail" do
    it "should return a Hash with all the informations stored in the email" do
      expect(compose_mail("nick@karnov.dk")).to eq({ username: "nick", domain: "karnov", tld: "dk" })
      expect(compose_mail("kalle@karnov.se")).to eq({ username: "kalle", domain: "karnov", tld: "se" })
    end
  end
end
