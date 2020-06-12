class Character < ApplicationRecord
  include AlgoliaSearch

  validates :name, presence: true

  algoliasearch do
    attributes :name
    searchableAttributes ['name']
  end
end
