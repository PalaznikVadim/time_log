class ManageTask < ApplicationService
  option :task

  private

  def log_updates(action)
    Rails.logger.info "Task ##{task.id} is #{action}!"
  end
end