module RegistrationsHelper
  def register_or_sold_out(event)
    if event.sold_out?
      content_tag(:span, "Sold out!", class: "badge badge-danger")
    else
      link_to "Register!", new_event_registration_path(@event), class: "btn btn-success"
    end
  end
end
