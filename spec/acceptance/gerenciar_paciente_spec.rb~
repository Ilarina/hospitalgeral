# coding: utf-8

require 'spec_helper'

feature 'gerenciar paciente' do

  scenario 'incluir paciente', :javascript => true  do

    visit new_paciente_path

    preencher_e_verificar_paciente
 

  end

  scenario 'alterar paciente' do #, :js => true  do

    paciente = FactoryGirl.create(:paciente)

    visit edit_paciente_path(paciente)

    preencher_e_verificar_paciente



  end

   scenario 'excluir paciente' do #, :javascript => true  do

       paciente = FactoryGirl.create(:paciente)

        visit pacientes_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_paciente

      fill_in 'Nome',  :with => "Felipe"
      fill_in 'Fone', :with => "70707070"
      fill_in 'Endereco', :with => "Rua dos Bobos"
      fill_in 'Email', :with => "1@2.com"

      click_button 'Salvar'

      page.should have_content 'Nome: Felipe'
      page.should have_content 'Fone: 70707070'
      page.should have_content 'Endereco: Rua dos Bobos'
      page.should have_content 'Email: 1@2.com'
     

   end
end
