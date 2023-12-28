feature 'Create new entry' do
  let(:task) { create :task }

  it 'creates new entry' do
    visit task_entries_path(task)

    click_on I18n.t('entry.new')

    fill_in 'entry_time', with: '1h 30m'
    fill_in 'entry_comment', with: '<b>Somethingin comment</b>'

    click_on I18n.t('entry.create')

    entries = task.entries.last

    expect(entries.comment).to eq '<b>Somethingin comment</b>'
  end

  it 'changes entries count' do
    expect do
      visit task_entries_path(task)

      click_on I18n.t('entry.new')

      fill_in 'entry_time', with: '1h 30m'
      fill_in 'entry_comment', with: '<b>Somethingin comment</b>'

      click_on I18n.t('entry.create')
    end.to change(Task, :count).by 1
  end
end