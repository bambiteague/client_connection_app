# ability to check on status(INDEX/SHOW) of costume(client)
# EDIT/UPDATE status(designer)

class CommissionsController < ApplicationController
  def index
    comms = Commission.all
  end
end
