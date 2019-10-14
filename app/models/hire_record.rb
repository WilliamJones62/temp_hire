class HireRecord < ApplicationRecord
  validates :dc, presence: true
  validates :emp_name, presence: true
  validates :hours, presence: true
  validate :temp_rate
  validate :perm_from

  def temp_rate
    if perm_emp && !rate.blank? && rate != 0
      # Permenant employees should not have a rate
      errors.add(:rate, "should not be entered for permenant staff")
    end
  end

  def perm_from
    if !perm_emp && !from_role.blank?
      # Temporary employees should not have a from_role
      errors.add(:from_role, "should not be entered for temporary staff")
    end
  end

end
