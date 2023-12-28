feature 'Update entry' do
  let(:entry) { create :entry }
  let(:attributes) { attributes_for :entry }

  scenario 'User creates new task' do
    visit entry_path(entry)

    click_on I18n.t('entry.edit')

    fill_in 'entry_time', with: attributes[:time]
    fill_in 'entry_comment', with: attributes[:comment]

    click_on I18n.t('entry.update')

    expect(current_path).to eq entry_path(entry)
    expect(page).to have_content attributes[:comment]

    entry.reload
    expect(entry.comment).to eq attributes[:comment]
  end
end