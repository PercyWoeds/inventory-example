class UsersPresenter < BaseCollectionPresenter
  def options
    super(name: :full_name)
  end
end
