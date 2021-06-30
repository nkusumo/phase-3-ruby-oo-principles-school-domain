class School
    attr_reader :roster
    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
      if @roster[grade]
        @roster[grade] << name
      else
        @roster[grade] = [name]
      end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end

end