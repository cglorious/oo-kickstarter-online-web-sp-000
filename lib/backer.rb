class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_instance)
    @backed_projects << project_instance
    project_instance.add_backer(self) unless project_instance.backers.include?(self)
  end

  #def advanced(project_instance)
  #  @backed_projects << project_instance
  #end

end
