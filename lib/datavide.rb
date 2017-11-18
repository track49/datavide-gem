require './utils.rb'

def getFinance(options)
  getDatavideApi("finance/#{options.category}/#{options.entity}/#{options.period}", options.apiKey)
end

def getEconomics(options)
  getDatavideApi("economics/#{options.category}/#{options.country}/#{options.indicatorName}", options.apiKey)
end

def getCompanies(options)
  getDatavideApi("finance/#{options.category}/#{options.entity}/#{options.period}", options.apiKey)
end

def getSports(options)
  request = ""

  if (options.category == "teams")
      request = "sports/#{options.league}/teams"
  else
      if ((options.league == "nfl") || (options.league == "mlb"))
        if (options.category == "players")
          request = "sports/#{options.league}/players/#{options.position}"
        else
          request = "sports/#{options.league}/#{options.category}/#{options.position}/#{options.entity}"
        end
      else
        if (options.category == "players")
          request = "sports/#{options.league}/players"
        else
          request = "sports/#{options.league}/#{options.category}/#{options.entity}"
        end
      end
  end

  getDatavideApi(request, options.apiKey)
end
