require 'rails_helper'

RSpec.describe Buyer, type: :model do
  describe '購入者情報保存' do
    before do
      @buyer = FactoryBot.build(:buyer)
    end

    context '内容に問題がない場合' do
      it '全ての情報が正しく入力されているとき' do
        expect(@buyer).to be_valid
      end
    end

    context '内容に問題がある時' do
      it 'post_codeが空だと保存されない' do
        @buyer.post_code = ''
        @buyer.valid?
        expect(@buyer.errors.full_messages).to include("Post code can't be blank")
      end

      it 'post_codeにハイフンがないと保存できない' do
        
      end

      it 'region_idが空だと保存できない' do
        
      end

      it 'cityが空だと保存できない' do
        
      end

      it 'addressが空だと保存できない' do
        
      end

      it 'phone_numberが空だと保存できない' do
        
      end

      it 'phone_numberが11桁以上だと保存できない' do
        
      end
    end
  end
end
