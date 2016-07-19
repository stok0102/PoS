require('helper_spec')

describe('Product') do
  describe('#purchase') do
    it('will return the associated purchase for a product') do
      test_purchase = Purchase.create({:total_cost => 95.37, :date => '12/12/12'})
      test_product = Product.create({:name => 'China Doll', :price => 19.45, :sold => true, :purchase_id => test_purchase.id()})
      expect(test_product.purchase()).to(eq(test_purchase))
    end
  end
end