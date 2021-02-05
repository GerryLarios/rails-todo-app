# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks.order(completed: :desc)
  end
end
