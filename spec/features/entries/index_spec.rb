feature 'Visit entry index page' do
  let(:task) { create :task }

  it 'checks entries on the index page' do
    visit task_entries_path(task)

    expect(page).to have_content I18n.t('entry.new')
  end

  context 'with entries collection' do
    before do
      create_list :entry, 5, task:
    end

    scenario 'User receives the first entry' do
      visit task_entries_path(task)

      expect(page).to have_content Entry.first.comment
    end
  end
end