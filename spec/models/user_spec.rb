# coding: utf-8
describe User do
require 'spec_helper'

  describe '#claims' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:claims).dependent :destroy
    end
  end

  describe '#fields' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:fields).dependent :destroy
    end
  end

  describe '#topics' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:users_topics)
    end
  end

  describe '#user_topics' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:users_topics).through :users_topics
    end
  end

  describe '#favs' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:favs)
    end
  end

  describe '#user_favs' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:users_favs).through :users_favs
    end
  end

  # badつける

  # 能力システムをつける

end
