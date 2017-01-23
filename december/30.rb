require 'rspec'

class Hash
  def param_converter
    a = []
    self.each do |k,v|
    a << [k.to_s, v].join('=')

    end
    a.join('&')


  end
end

# hash = { :topic => "baseball", :team => "astros" }

# p hash.param_converter



describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end