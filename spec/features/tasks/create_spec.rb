feature 'Create new task' do
  it 'creates new task' do
    visit tasks_path

    click_on I18n.t('models.new_task')

    fill_in 'task_title', with: 'Something'
    fill_in 'task_description', with: '<b>Something</b>'

    click_on I18n.t('models.save_task')

    task = Task.last

    expect(task.title).to eq 'Something'
  end

  it 'changes tasks count' do
    expect do
      visit tasks_path

      click_on I18n.t('models.new_task')

      fill_in 'task_title', with: 'Something'
      fill_in 'task_description', with: '<b>Something</b>'

      click_on I18n.t('models.save_task')
    end.to change(Task, :count).by 1
  end
end