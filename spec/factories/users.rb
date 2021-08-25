FactoryBot.define do
  faktory :user do
    name                      {'test'}
    email                     {Fake::Internet.free_email}
    password                  {'123456'}
    password_confirmation     { password }
  end
end