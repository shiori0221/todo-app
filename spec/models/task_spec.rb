require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = FactoryBot.build(:task)
  end
  describe 'タスクの保存' do
    context 'タスクが投稿できる場合' do
      it 'テキストとメモと期限があれば投稿できる' do
        expect(@task).to be_valid
      end
      it 'テキストのみで投稿できる' do
        @task.memo = ''
        @task.limit = ''
        expect(@task).to be_valid
      end
    end
    context 'タスクが投稿できない場合' do
      it 'テキストが空では投稿できない' do
        @task.text = ''
        @task.valid?
        expect(@task.errors.full_messages).to include("Text can't be blank")
      end
      it 'ユーザーと紐付いていなければ投稿できない' do
        @task.user = nil
        @task.valid?
        expect(@task.errors.full_messages).to include("User must exist")
      end
    end
  end
end
