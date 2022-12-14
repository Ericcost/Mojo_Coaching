require "administrate/base_dashboard"

class MeetingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    coach: Field::BelongsTo,
    driver: Field::BelongsTo,
    availability: Field::BelongsTo,
    com_mean: Field::BelongsTo,
    car: Field::BelongsTo,
    track: Field::BelongsTo,
    feedbacks: Field::HasMany,
    id: Field::Number,
    duration: Field::Number,
    meeting_type: Field::Select.with_options(searchable: false, collection: ->(field) { field.resource.class.send(field.attribute.to_s.pluralize).keys }),
    video_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    coach
    driver
    availability
    com_mean
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    coach
    driver
    availability
    com_mean
    car
    track
    feedbacks
    id
    duration
    meeting_type
    video_url
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    coach
    driver
    availability
    com_mean
    car
    track
    feedbacks
    duration
    meeting_type
    video_url
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how meetings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(meeting)
  #   "Meeting ##{meeting.id}"
  # end
end