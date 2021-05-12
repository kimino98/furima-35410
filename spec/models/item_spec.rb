require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  describe "商品出品登録" do
    context '出品できるとき' do
      it "全ての情報が正しく入力されているとき" do
        expect(@item).to be_valid
      end
    end

    context '出品できないとき' do
      it 'imageが空だと登録できない' do
         @item.image = nil
         @item.valid?
         expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it 'nameが空だと登録できない' do
         @item.name = ''
         @item.valid?
         expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'textが空だと登録できない' do
         @item.text = ''
         @item.valid?
         expect(@item.errors.full_messages).to include("Text can't be blank")
      end

      it 'category_idが空だと登録できない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it 'status_idが空だと登録できない' do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end

      it 'postage_idが空だと登録できない' do
        @item.postage_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Postage can't be blank")
      end

      it 'region_idが空だと登録できない' do
        @item.region_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Region can't be blank")
      end

      it 'shopping_date_idが空だと登録できない' do
        @item.shopping_date_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shopping date can't be blank")
      end

      it 'priceが空だと登録できない' do
        @item.price = ''
         @item.valid?
         expect(@item.errors.full_messages).to include("Price can't be blank")
      end
    end
  end
end
