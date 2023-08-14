class Student < ApplicationRecord
    # Attributes
    attr_accessor :first_name, :last_name, :grade
  
    # Validations
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :grade, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 12 }
  
    # Instance methods
    def to_s
      "#{first_name} #{last_name}"
    end
  end
  
student = Student.new(first_name: "Dwayne", last_name: "Johnson")