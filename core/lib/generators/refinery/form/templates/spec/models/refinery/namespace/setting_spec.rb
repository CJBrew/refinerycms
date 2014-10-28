require 'spec_helper'

module Refinery
  module <%= namespacing %>
    describe Setting, :type => :model do
      describe ".notification_recipients=" do
        it "delegates to Refinery::Setting#set" do
          expect(Refinery::Setting).to receive(:set).
            with(:<%= singular_name %>_notification_recipients, {
              :value=>"some value",
              :scoping=>"<%= plural_name %>"
            })

          Refinery::<%= namespacing %>::Setting.notification_recipients = "some value"
        end
      end
    end
  end
end
