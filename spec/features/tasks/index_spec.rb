feature 'Visit tasks index page' do
  it 'checks tasks on the index page' do
    visit tasks_path

    expect(page).to have_content I18n.t('models.new_task')
  end

  it 'checks task existing on the page' do
    create :task

    visit tasks_path

    expect(page).to have_content Task.first.title
  end
end