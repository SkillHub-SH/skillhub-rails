module Judge
  # BaseJudge class is created to contain all
  # the common methods used in deifferent action
  class BaseJudge
    def initialize_connection(url, params)
      Faraday.new(
        url: url,
        params: params,
        headers: {
          'Content-Type' => 'application/json',
          'X-RapidAPI-Key' => 'b3dbae9531mshbbdab592822f11dp1605bejsnf25649f22823',
          'X-RapidAPI-Host' => 'judge0-ce.p.rapidapi.com'
        }
      )
    end
  end
end
