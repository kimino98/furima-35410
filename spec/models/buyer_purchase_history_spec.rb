require 'rails_helper'

RSpec.describe BuyerPurchaseHistory, type: :model do
  describe '購入者情報保存' do
    before do
      @user = FactoryBot.create(:user)
      @item = FactoryBot.create(:item)
      @buyer_purchase_history = FactoryBot.build(:buyer_purchase_history, user_id: @user.id, item_id: @item.id)
      sleep 0.1
    end

    context '内容に問題がない場合' do
      it '全ての情報が正しく入力されているとき' do
        expect(@buyer_purchase_history).to be_valid
      end
    end

    context '内容に問題がある時' do
      it 'post_codeが空だと保存されない' do
        @buyer_purchase_history.post_code = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Post code can't be blank")
      end

      it 'post_codeにハイフンがないと保存できない' do
        @buyer_purchase_history.post_code = 1111111
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Post code is invalid")
      end

      it 'region_idが空だと保存できない' do
        @buyer_purchase_history.region_id = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Region can't be blank")
      end

      it 'region_idが未選択のidの場合登録できない' do
        @buyer_purchase_history.region_id = 1
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include('Region must be other than 1')
      end

      it 'cityが空だと保存できない' do
        @buyer_purchase_history.city = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("City can't be blank")
      end

      it 'addressが空だと保存できない' do
        @buyer_purchase_history.address = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Address can't be blank")
      end

      it 'phone_numberが空だと保存できない' do
        @buyer_purchase_history.phone_number = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Phone number can't be blank")
      end

      it 'phone_numberが11桁以上の場合保存できない' do
        @buyer_purchase_history.phone_number = '090123456789123456789'
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Phone number is invalid")
      end

      it 'phone_numberが全角の場合保存できない' do
        @buyer_purchase_history.phone_number = '０９０１１１１２２２２'
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Phone number is invalid")
      end

      it 'phone_numberがハイフンがある場合保存できない' do
        @buyer_purchase_history.phone_number = '090-1111-2222'
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Phone number is invalid")
      end

      it 'tokenが空であれば保存できない' do
        @buyer_purchase_history.token = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Token can't be blank")
      end

      it 'user_idが存在しないとき保存できない' do
        @buyer_purchase_history.user_id = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("User can't be blank")
      end

      it 'item_idが存在しないと登録できない' do
        @buyer_purchase_history.item_id = ''
        @buyer_purchase_history.valid?
        expect(@buyer_purchase_history.errors.full_messages).to include("Item can't be blank")
      end


    end
  end
end

