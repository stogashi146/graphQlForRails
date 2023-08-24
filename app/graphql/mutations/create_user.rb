module Mutations
  class CreateUser < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :user, Types::UserType, null: true

    # TODO: define arguments
    # argument :name, String, required: true
    argument :name, String, required: true
    argument :email, String, required: false

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end

    def resolve(**args)
      user = User.create!(args)
      {
        user: user
      }
    end
  end
end
