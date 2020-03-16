require 'rails_helper'
require 'cancan/matchers'

describe "abilities" do
  subject(:ability) { Ability.new(user) }
  let(:all_actions) { [:index, :show, :create, :update, :destroy, :manage] }
  let(:dev_actions) { [:create, :show, :destroy, :index, :update] }

  context "When admin" do
    let(:user) { create(:user, :admin)}
    it { all_actions.each { |do_action| is_expected.to be_able_to(do_action, ToDo.new) } }
  end

  context "When developer" do
    let(:user) { create(:user)}
    let(:to_do) { create(:to_do, created_by: user)}
    it { dev_actions.each { |do_action| is_expected.to be_able_to(do_action, to_do) } }
  end
end
