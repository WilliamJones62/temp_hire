module ApplicationHelper

  def display_date(date)
    if date
      formatted = date.strftime("%e %b %Y")
    else
      formatted = ' '
    end
  end

  def yes_boolean(boolean)
      boolean ? 'Yes' : 'No'
  end

  def frm_action
    if @hire_record.id.present?
      "Update Hours Record"
    else
      "Create Hours Record"
    end
  end

end
