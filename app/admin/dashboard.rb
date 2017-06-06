ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Derniers évènements" do
          table_for Event.order(happen_on: :desc).limit(10) do
            column("À venir") { |event| status_tag(event.upcoming?) }
            column("Titre")   { |event| event.title }
            column("Date")    { |event| l(event.happen_on, format: :long) }
          end
        end
      end

      column do
        panel "Dernières activités du forum" do
          last_topics   = Topic.limit(10).order(created_at: :desc)
                            .to_a
          last_comments = Comment.limit(10).order(created_at: :desc)
                            .joins(:topic, :user).to_a
          activities    = (last_topics + last_comments).first(10)
                            .sort_by { |a| a.created_at }
                            .reverse

          table_for activities do
            column("") do |activity|
              if activity.kind_of?(Comment)
                "#{activity.user.full_name} a ajouté un commentaire"
              else
                "#{activity.user.full_name} a créé un nouveau sujet"
              end
            end

            column("Sujet") do |activity|
              if activity.kind_of?(Comment)
                link_to(activity.topic.title, activity.topic)
              else
                link_to(activity.title, activity)
              end
            end

            column("Date") do |activity|
              l(activity.created_at, format: :long)
            end
          end
        end
      end
    end
  end
end
