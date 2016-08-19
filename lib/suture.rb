require "suture/version"

require "suture/value"
require "suture/surgeon"

require "suture/builds_plan"
require "suture/chooses_surgeon"
require "suture/performs_surgery"

module Suture
  def self.create(name, options)
    plan = BuildsPlan.new.build(options)
    surgeon = ChoosesSurgeon.new.choose(plan)
    PerformsSurgery.new.perform(plan, surgeon)
  end
end