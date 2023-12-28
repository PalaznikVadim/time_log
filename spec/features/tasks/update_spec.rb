feature 'Update task' do
  let(:task) { create :task }
  let(:attributes) { attributes_for :task }

  scenario 'User creates new task' do
    visit task_path(task)

    click_on I18n.t('models.edit_task')

    fill_in 'task_title', with: attributes[:title]
    fill_in 'task_description', with: attributes[:description]

    click_on I18n.t('models.update_task')

    expect(current_path).to eq task_path(task)
    expect(page).to have_content attributes[:title]

    task.reload
    expect(task.title).to eq attributes[:title]
  end
end