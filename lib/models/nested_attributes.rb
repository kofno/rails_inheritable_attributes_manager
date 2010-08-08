require 'active_record'

module ActiveRecord

  class Base
    class << self
      def accepts_nested_attributes_for_with_inheritance_management(*attr_names)
        accepts_nested_attributes_for_without_inheritance_management(*attr_names)
        alert_subclasses_of_new_nested_attributes
      end
      alias_method_chain :accepts_nested_attributes_for, :inheritance_management

      def alert_subclasses_of_new_nested_attributes
        subclasses.each do |subclass|
          subclass.superclass_received_nested_attributes(nested_attributes_options)
        end
      end

      def superclass_received_nested_attributes(super_nested_attr_options)
        nested_attributes_options.update(super_nested_attr_options) do |hash, oldval, newval|
          oldval.nil? ? newval : oldval
        end
      end
    end
  end

end
