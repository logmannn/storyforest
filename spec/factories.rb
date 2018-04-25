FactoryBot.define do
  factory :tree do

    title("Paul")


    # factory :question_with_answer do
    #   after(:create) do |question|
    #     create(:answer, question: question)
    #   end
    # end
  end

  factory :branch do
    body("David")
    tree_id(11)
    association :tree, factory: :tree
  end

  factory(:user) do
    password('password')
    email('test@example.org')
  end

end
