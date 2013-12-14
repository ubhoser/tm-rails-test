ActiveAdmin.register Platform do
  config.clear_action_items! unless before_filter :clear_action_items

  controller do    
    def new
      if can? :manage, Platform
        super
      else
        redirect_to admin_platforms_path
      end
    end

    def edit
      if can? :manage, Platform
        super
      else
        redirect_to admin_platforms_path
      end
    end

    def clear_action_items
      if can? :manage, Platform
        return true
      else
        return false
      end
    end

  end

  index do
    column :operating_system
    if can? :manage, Platform
      actions
    end
  end

end
