# frozen_string_literal: true

require 'rails_helper'

Rails.application.load_tasks 

RSpec.describe 'rake copy:data', type: :task do
  subject { Rake::Task["copy:data"].invoke("spec/fixtures/test_csv.csv") }
  
  it 'enqueues async jobs to generate GoCardless refund event' do
	# binding.pry
    expect { subject }.to change{Movie.count}.from(0).to(2)
  end
end
