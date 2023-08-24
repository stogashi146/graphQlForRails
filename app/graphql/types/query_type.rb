module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    # field :フィールド名, 型の場所, nullになる可能性の有無
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    field :users, [Types::UserType], null: false

    # fieldが指定されたとき、どのようにデータ取得するかをfieldと同名メソッドで実装する
    def user(id:)
      User.find(id)
    end

    def users
      User.all
    end


  end
end
