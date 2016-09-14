json.extract! usertest, :id, :first_name, :last_name, :email, :created_at, :updated_at
json.url usertest_url(usertest, format: :json)