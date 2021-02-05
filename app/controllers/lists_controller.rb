# frozen_string_literal: true

# ListsControllers
class ListsController < ApplicationController
  def index
    @lists = current_user.lists
  end
end
