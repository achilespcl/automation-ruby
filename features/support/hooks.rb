World(Helper)

After('@login') do
  account.log_out
end

# depois de cada cenario ele tira um print e remove todos os espacos virgulas
After do |scenario|
    scenario_name = clearString(scenario);

    # se o cenario falha ele vai chamar o metodo take passando
    # dois parametros o nome do cenario com nome minusculo e o resultado
    if scenario.failed?
      take_screenshot(scenario_name, 'failed')
    else
      take_screenshot(scenario_name, 'passed')
    end
  end