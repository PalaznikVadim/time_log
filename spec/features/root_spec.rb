feature 'Visit root page' do
  it 'checks tasks on the root page' do
    visit root_path

    expect(page).to have_content I18n.t('models.new_task')
  end
end