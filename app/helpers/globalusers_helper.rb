module GlobalusersHelper
  def designers
    @designers = []
    Globaluser.all.each do |user|
      @designers << user if user.designer == true
    end
    @designers
  end

  def client
    @clients = []
    Globaluser.all.each do |user|
      @clients << user if user.client == true
    end
    @clients
  end
end
