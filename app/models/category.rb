class Category < ApplicationRecord
  PAIRS = {
    environment: ['sun exposure', 'sleep'],
    health: ['workout', 'running']
  }

  validate :pairs_do_match

  def pairs_do_match

    unless PAIRS[self.group.to_sym].include?(self.title)
      errors.add(:group, "group and title pair don't match")
      errors.add(:title, "group and title pair don't match")
    end
  end

end
