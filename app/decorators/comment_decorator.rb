module CommentDecorator
  def activity
    bubble + description
  end

  def bubble
    tag.div(octicon("comment"), class: 'bubble')
  end

  def description
    tag.p(
      user.formatted_name +
      " &mdash; Il y a ".html_safe +
      time_ago_in_words(created_at)
    )
  end

  def content(topic)
    if current_user.admin
      tag.div(tag.p(delete_link), class: 'right') + simple_format(body)
    else
      simple_format(body)
    end
  end

  def delete_link
    link_to octicon("trashcan"), [topic, self], method: :delete,
      data: { confirm: 'Êtes vous sûr ?' }
  end
end
