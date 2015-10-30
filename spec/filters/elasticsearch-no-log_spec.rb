# encoding: utf-8

require "logstash/devutils/rspec/spec_helper"
require "logstash/plugin"
require "logstash/filters/elasticsearch-no-log"

describe LogStash::Filters::ElasticsearchNoLog do

  context "registration" do

    let(:plugin) { LogStash::Plugin.lookup("filter", "elasticsearch-no-log").new({}) }

    it "should not raise an exception" do
      expect {plugin.register}.to_not raise_error
    end
  end

end
