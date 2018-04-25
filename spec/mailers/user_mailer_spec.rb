require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "signup_confirmation" do
    user = FactoryBot.create(:user)
    p user
    let(:mail) { UserMailer.signup_confirmation(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup confirmation")
      expect(mail.to).to eq(["test@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
