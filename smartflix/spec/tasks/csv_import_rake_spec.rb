require 'rails_helper'
require 'rake'

Rails.application.load_tasks

describe "csv_import_rake" do

 before do
  Rake.application.rake_require "tasks/csv_import"
  Rake::Task.define_task(:environment)
 end

 it "imports csv data to database" do
  Rake::Task["csv_import_rake"].invoke
 end
end