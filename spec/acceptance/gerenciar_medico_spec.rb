# coding: utf-8

require 'spec_helper'

feature 'gerenciar medico' do

  scenario 'incluir medico', :javascript => true  do

    visit new_medico_path

    preencher_e_verificar_medico
 

  end

  scenario 'alterar medico' do #, :js => true  do

    medico = FactoryGirl.create(:medico)

    visit edit_medico_path(medico)

    preencher_e_verificar_medico



  end

   scenario 'excluir medico' do #, :javascript => true  do

       medico = FactoryGirl.create(:medico)

        visit medicos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_medico

      fill_in 'Nome',  :with => "Dr Felipe"
      fill_in 'Fone', :with => "70707070"
      fill_in 'Endereco', :with => "Rua dos Bobos"
      fill_in 'Email', :with => "1@2.com"
	  fill_in 'Crm', :with => "1234CA"

      click_button 'Salvar'

      page.should have_content 'Nome: Dr Felipe'
      page.should have_content 'Fone: 70707070'
      page.should have_content 'Endereco: Rua dos Bobos'
      page.should have_content 'Email: 1@2.com'
	  page.should have_content 'Crm: 1234CA'
     

   end
end
