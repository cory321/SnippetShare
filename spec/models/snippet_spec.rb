require 'rails_helper'

RSpec.describe Snippet, type: :model do
  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :description }
  it { is_expected.to respond_to :code }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :code }
  it { is_expected.to validate_uniqueness_of :code }
  it { is_expected.to validate_length_of :name }
  it { is_expected.to validate_length_of :description }
  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :language }
  it { is_expected.to belong_to :editor }

end