class HomeController < ApplicationController
  def index

    @competences = Competence.order('id ASC')
    @config = Config.first()
    @connaissances = Connaissance.order('id ASC')
    @formations = Formation.order('id ASC')
    @langues = Langue.order('id ASC')
    @projets = Projet.order('id ASC')
    @articles = Article.where('id != ?','3').order('id ASC')
    @rails = Article.where('id = ?','3').first

  end
end
