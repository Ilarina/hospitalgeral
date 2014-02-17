# coding: utf-8

require 'spec_helper'

feature 'gerenciar exame' do

  scenario 'incluir exame', :javascript => true  do

    visit new_exame_path

    preencher_e_verificar_exame
 

  end

  scenario 'alterar exame' do #, :js => true  do

    exame = FactoryGirl.create(:exame)

    visit edit_exame_path(exame)

    preencher_e_verificar_exame



  end

   scenario 'excluir exame' do #, :javascript => true  do

       exame = FactoryGirl.create(:exame)

        visit exames_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_exame

      fill_in 'Descricao',  :with => "Exame de Sangue"
      fill_in 'Valor', :with => "70,00"
      fill_in 'Observacao', :with => "O exame será entregue com uma semana de atraso"


      click_button 'Salvar'

      page.should have_content 'Descricao: Exame de Sangue'
      page.should have_content 'Valor: 70,00'
      page.should have_content 'Observacao: O exame será entregue com uma semana de atraso'
     

   end
end
