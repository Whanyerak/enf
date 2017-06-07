module ApplicationHelper
  def banner(hash)
    content_for(:banner, true)

    hash.each do |k, v|
      content_for(k, v)
    end
  end
end
