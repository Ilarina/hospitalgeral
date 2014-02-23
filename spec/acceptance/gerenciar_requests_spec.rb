# coding: utf-8
require 'spec_helper'

feature 'gerenciar Request' do

  scenario 'incluir Request' do #, :javascript => true  do


	consultation = FactoryGirl.create(:consultation, :data => 'YYY')
    exame = FactoryGirl.create(:exame, :descricao => 'XXX')

    visit new_request_path

    preencher_e_verificar_request
   

  end

  scenario 'alterar Request' do #, :javascript => true  do

	consultation = FactoryGirl.create(:consultation, :data => 'YYY')
    exame = FactoryGirl.create(:exame, :descricao => 'XXX')
	request = FactoryGirl.create(:request, :consultation => consultation, :exame => exame)


    visit edit_request_path(request)

    preencher_e_verificar_request


  end

  scenario 'excluir Request' do #, :javascript => true  do

	consultation = FactoryGirl.create(:consultation, :data => 'YYY')
    exame = FactoryGirl.create(:exame, :descricao => 'XXX')
	request = FactoryGirl.create(:request, :consultation => consultation, :exame => exame)

    visit requests_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_request

    fill_in 'Plano', :with => 'Plano'
    fill_in 'Dataexame', :with => 'dataexame'
    fill_in 'Dataentrega', :with => 'dataentrega'
    fill_in 'Laudo', :with => 'Laudo'

	select 'YYY', :from => 'Consultation'
    select 'XXX', :from => 'Exame'

	click_button 'Salvar'
    
    page.should have_content 'Plano: Plano'
    page.should have_content 'Dataexame: dataexame'
    page.should have_content 'Dataentrega: dataentrega'
    page.should have_content 'Laudo: Laudo'
	page.should have_content 'Consultation: YYY'
	page.should have_content 'Exame: XXX'

    
  end

      

end
