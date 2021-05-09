ActiveAdmin.register AdminUser do
  permit_params :email, :phone, :password, :password_confirmation

  config.batch_actions = false

  menu if: proc { current_admin_user.role == "admin" }
  index do
    column :email
    column :phone
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :email
      row :phone
      row :created_at
    end
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :phone
      if f.object.new_record? || current_admin_user.role == "admin" && f.object.role == "admin" || current_admin_user.role == "restaurant" && f.object.role == "restaurant"
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end

  controller do
    def update
      current_id = current_admin_user.id
      @admin_user = AdminUser.find(params[:id])

      if @admin_user.update_attributes(permitted_params[:admin_user])
        if @admin_user.id == current_id
          sign_in(AdminUser.find(current_id), :bypass => true)
        end
        flash[:notice] = "Your record was successfully updated."
        redirect_to admin_admin_user_path(@admin_user)
      else
        render :action => :edit
      end
    end
  end
end
