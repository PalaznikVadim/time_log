feature 'Visit show task' do
  let(:task) { create :task }

  scenario 'User visits certain task page' do
    visit task_path(task)

    expect(page).to have_content(task.title)
  end
end