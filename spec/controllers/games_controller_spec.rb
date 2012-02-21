require 'spec_helper'

describe GamesController do
  describe '#new' do
    it 'should render the new template' do
      get 'new'
      response.should render_template('new')
    end
  end
end
