class HomeController < ApplicationController
  def index

    @competences = Competence.order('id ASC')
    @config = Config.first()
    @connaissances = Connaissance.order('id ASC')
    @formations = Formation.order('id ASC')
    @langues = Langue.order('id ASC')
    @projets = Projet.order('id ASC')
    @articles = Article.order('id ASC')

  end
end
