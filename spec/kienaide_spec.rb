require 'spec_helper'

class Post < ActiveRecord::Base
  kienaide
end

RSpec.describe Kienaide do
  let!(:post) { Post.create(content: 'demo', protected: protected) }
  after { Post.delete_all }

  describe '#destroyed?' do
    before { post.destroy }
    subject { post }

    context 'when not protected' do
      let(:protected) { false }
      it { is_expected.to be_destroyed }
    end

    context 'when protected' do
      let(:protected) { true }
      it { is_expected.not_to be_destroyed }
    end
  end
end
