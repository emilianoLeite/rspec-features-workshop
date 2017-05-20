require 'rspec/given'
require_relative '../models/stack'

describe Stack do
  Given(:stack) { Stack.new(initial_contents) }

  context "with no items" do
    Given(:initial_contents) { [] }
    Then { stack.depth == 0 }

    context "when pushing" do
      When { stack.push(:an_item) }

      Then { stack.depth == 1 }
      Then { stack.top == :an_item }
    end

    context "when popping" do
      When(:result) { stack.pop }
      Then { result == Failure(Stack::UnderflowError, /empty/) }
    end
  end
end