json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :name, :lastname, :email, :phone
  json.url applicant_url(applicant, format: :json)
end
