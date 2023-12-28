feature 'Destroy task' do
  let!(:task) { create :task }

  scenario 'User visits certain task page' do
    expect do
      visit task_path(task)

      click_on I18n.t('models.delete_task')
    end.to change(Task, :count).by -1
  end
end