require 'spec_helper'

class Post < ActiveRecord::Base
  kienaide
end

RSpec.describe Kienaide do
  let!(:post) { Post.create(content: 'demo', protected: protected) }
  after { Post.delete_all }

  describe 'kinaide' do
    before { post.destroy }
    subject { post.destroyed? }
    context 'when not be protected' do
      let(:protected) { false }
      it { is_expected.to be true }
    end

    context 'when be protected' do
      let(:protected) { true }
      it { is_expected.to be false }
    end
  end
end
