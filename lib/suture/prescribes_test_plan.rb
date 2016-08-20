require "suture/value/test_plan"
require "suture/util/env"

module Suture
  class PrescribesTestPlan
    UN_ENV_IABLE_OPTIONS = [:name, :subject]
    DEFAULT_TEST_OPTIONS = {
      :fail_fast => true
    }

    def prescribe(name, options = {})
      Value::TestPlan.new(DEFAULT_OPTIONS.
                          merge(DEFAULT_TEST_OPTIONS).
                          merge(options).
                          merge(:name => name).
                          merge(Suture::Util::Env.to_map(UN_ENV_IABLE_OPTIONS)))
    end
  end
end
