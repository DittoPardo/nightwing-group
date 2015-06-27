ActiveAdmin.register Project do

 permit_params :created_at, :updated_at, :owner_id, backer_ids: []

end
