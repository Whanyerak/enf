module UserDecorator
  def formatted_name
    (full_name + badge).html_safe
  end

  def badge
    branch_name = User.branches[branch]
    tag.span(branch_name, class: "label #{branch_name.downcase.sub('é', 'e')}")
  end
end
