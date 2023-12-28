class ApproveTask < ManageTask
  def call
    task.approve!

    log_updates('approved')

    Success(true)
  end
end