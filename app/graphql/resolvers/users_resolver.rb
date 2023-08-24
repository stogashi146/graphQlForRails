module Resolvers
  class UsersResolver < GraphQL::Schema::Resolver
    description 'Find a All user'
    type [Types::UserType], null: false

    # argument :id, ID, required: true

    def resolve
      User.all
    end
  end
end