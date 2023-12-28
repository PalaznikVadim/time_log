class DeclineTask < ManageTask
  def call
    task.decline!

    log_updates('declined')

    Success(true)
  end
end