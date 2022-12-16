require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    coach_meetings: Field::HasMany,
    coach_feedbacks: Field::HasMany,
    driver_meetings: Field::HasMany,
    driver_feedbacks: Field::HasMany,
    join_table_user_com_means: Field::HasMany,
    com_means: Field::HasMany,
    join_table_user_cars: Field::HasMany,
    cars: Field::HasMany,
    join_table_user_tracks: Field::HasMany,
    tracks: Field::HasMany,
    availabilities: Field::HasMany,
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    awards: Field::Text,
    price_per_hour: Field::Number,
    is_admin: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    coach_meetings
    coach_feedbacks
    driver_meetings
    driver_feedbacks
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    coach_meetings
    coach_feedbacks
    driver_meetings
    driver_feedbacks
    join_table_user_com_means
    com_means
    join_table_user_cars
    cars
    join_table_user_tracks
    tracks
    availabilities
    id
    first_name
    last_name
    awards
    price_per_hour
    is_admin
    created_at
    updated_at
    email
    encrypted_password
    reset_password_token
    reset_password_sent_at
    remember_created_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    coach_meetings
    coach_feedbacks
    driver_meetings
    driver_feedbacks
    join_table_user_com_means
    com_means
    join_table_user_cars
    cars
    join_table_user_tracks
    tracks
    availabilities
    first_name
    last_name
    awards
    price_per_hour
    is_admin
    email
    encrypted_password
    reset_password_token
    reset_password_sent_at
    remember_created_at
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

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
