module ItemsHelper
  def contact_name_join(item)
    contact_names = []
    item.item_contacts.each do |item_contact|
      contact_names.push(item_contact.contact.name)
    end
    return contact_names.join(", ")
  end
end
