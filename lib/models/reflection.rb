require 'active_record'

module ActiveRecord

  class Base
    class << self
      def create_reflection_with_inheritance_management(macro, name, options, active_record)
        reflection = create_reflection_without_inheritance_management(macro, name, options, active_record)
        alert_subclasses_of_new_reflection(name, reflection)
        reflection
      end
      alias_method_chain :create_reflection, :inheritance_management

      def alert_subclasses_of_new_reflection(name, reflection)
        subclasses.each do |subclass|
          subclass.superclass_created_new_reflection(name, reflection)
        end
      end

      def superclass_created_new_reflection(name, reflection)
        return if reflections[name]
        write_inheritable_hash :reflections, name => reflection
      end
    end
  end

end
