require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    availabilities: Field::HasMany,
    awards: Field::Text,
    birthdate: Field::Date,
    cars: Field::HasMany,
    coach_feedbacks: Field::HasMany,
    coach_meetings: Field::HasMany,
    com_means: Field::HasMany,
    driver_feedbacks: Field::HasMany,
    driver_meetings: Field::HasMany,
    email: Field::String,
    encrypted_password: Field::String,
    first_name: Field::String,
    is_admin: Field::Boolean,
    join_table_user_cars: Field::HasMany,
    join_table_user_com_means: Field::HasMany,
    join_table_user_tracks: Field::HasMany,
    last_name: Field::String,
    price_per_hour: Field::Number,
    remember_created_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    reset_password_token: Field::String,
    tracks: Field::HasMany,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    availabilities
    awards
    birthdate
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    availabilities
    awards
    birthdate
    cars
    coach_feedbacks
    coach_meetings
    com_means
    driver_feedbacks
    driver_meetings
    email
    encrypted_password
    first_name
    is_admin
    join_table_user_cars
    join_table_user_com_means
    join_table_user_tracks
    last_name
    price_per_hour
    remember_created_at
    reset_password_sent_at
    reset_password_token
    tracks
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    availabilities
    awards
    birthdate
    cars
    coach_feedbacks
    coach_meetings
    com_means
    driver_feedbacks
    driver_meetings
    email
    encrypted_password
    first_name
    is_admin
    join_table_user_cars
    join_table_user_com_means
    join_table_user_tracks
    last_name
    price_per_hour
    remember_created_at
    reset_password_sent_at
    reset_password_token
    tracks
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
