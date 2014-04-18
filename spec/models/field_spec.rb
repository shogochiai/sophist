# coding: utf-8
require 'spec_helper'

describe Field do
  describe '#claims' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:claims).dependent :destroy
    end
  end

  describe '#topics' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:fields_topics)
    end
  end

  describe '#topics' do
    it 'has_manyアソシエーションが存在すること' do
      should have_many(:topics).through :fields_topics
    end
  end
end
