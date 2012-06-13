# -*- encoding : utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'
require 'httparty'
require 'nokogiri'

class SiriProxy::Plugin::Foot < SiriProxy::Plugin
	def initialize(config)
	end
	
	listen_for /Résultat de l'euro/i do |ph|
		response = HTTParty.get("http://euro.tf1.fr/2012/resultat-match-classement-groupe/")
		doc = Nokogiri::HTML(response)

		title = doc.css(".phase de poules Euro 2012").first.content
		say "Résultat de la #{title}"

		doc.css(".content tr").each do |tr|
			elements = tr.css("td")
			if elements.length == 4
				date = elements[0].content
				equipe1 = elements[1].content
				score = elements[2].content
				equipe2 = elements[3].content
				say "#{equipe1} #{equipe2} #{score}" , spoken: "#{equipe1}, #{equipe2}, #{score},"

			end
		end
	end

       listen_for /résultat de la ligue deux/i do |ph|
		response = HTTParty.get("http://www.eurosport.fr/football/ligue-2/result.shtml")
		doc = Nokogiri::HTML(response)

		title = doc.css(".infoboxheadlite").first.content
		say "Résultat de la #{title}"

		doc.css(".content tr").each do |tr|
			elements = tr.css("td")
			if elements.length == 4
				date = elements[0].content
				equipe1 = elements[1].content
				score = elements[2].content
				equipe2 = elements[3].content
				say "#{equipe1} #{equipe2} #{score}" , spoken: "#{equipe1}, #{equipe2}, #{score},"

			end
		end
	end

       listen_for /résultat de la ligue des champions/i do |ph|
		response = HTTParty.get("http://www.eurosport.fr/football/ligue-des-champions/result.shtml")
		doc = Nokogiri::HTML(response)

		title = doc.css(".infoboxheadlite").first.content
		say "Résultat de la #{title}"

		doc.css(".content tr").each do |tr|
			elements = tr.css("td")
			if elements.length == 4
				date = elements[0].content
				equipe1 = elements[1].content
				score = elements[2].content
				equipe2 = elements[3].content
				say "#{equipe1} #{equipe2} #{score}" , spoken: "#{equipe1}, #{equipe2}, #{score},"

			end
		end
	end

	

	
end
