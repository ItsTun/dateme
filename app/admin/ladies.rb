ActiveAdmin.register Lady do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :age, :height, :two_hr_price, :three_hr_price, :user_id, :ph_no, :price, :description
  #
  # or
  #
  permit_params do
    permitted = [:name, :age, :height, :two_hr_price, :three_hr_price, :user_id, :ph_no, :price, :description, images: [], interest_ids: []]
    permitted
  end
  form do |f|
    f.inputs "Lady" do
      f.input :name
      f.input :age
      f.input :height
      f.input :two_hr_price
      f.input :three_hr_price
      f.input :user, collection: User.all.map{ |user|  [user.email, user.id] }
      f.input :ph_no
      f.input :description
      f.input :interests, as: :check_boxes, :collection => Interest.all.map{ |interest|  [interest.title, interest.id] }
      f.inputs do
        f.input :images, as: :file, input_html: { multiple: true }
      end
    end
    f.actions
  end

  show do |model|
    attributes_table do
      row :name
      row :age
      row :height
      row :two_hr_price
      row :three_hr_price
      row :user
      row :ph_no
      row :description
      model.interests.each_with_index do |interest, i|
        row "Interest #{i}" do
          interest.title
        end
      end
      model.images.each_with_index do |img, i|
        row "Image #{i}" do
          image_tag(img)
        end
      end
    end
  end
end
