class ProjectDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all
  
  TAG_LIST = %w(
      label-default
      label-primary
      label-success
      label-info
      label-warning
      label-danger
    )

  def pretty_tag
    content_tag :div, class: "tags" do
      object.tag_list.each do |tag|
        concat content_tag(:span, tag, class: ["label", cycle(TAG_LIST) ])
      end
    end
  end
end
