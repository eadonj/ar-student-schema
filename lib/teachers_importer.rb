require_relative '../app/models/teacher'

module TeachersImporter
  def self.import
    teacher1 = Teacher.create!({name: "Mark", email: "mark@mark.com", address: "berkeley", phone: "1234567890"})
    teacher2 = Teacher.create!({name: "John", email: "john@mark.com", address: "oakland", phone: "1234567890"})
    teacher3 = Teacher.create!({name: "Sean", email: "sean@mark.com", address: "alameda", phone: "1234567890"})
    teacher4 = Teacher.create!({name: "Bob", email: "bob@mark.com", address: "marin", phone: "1234567890"})
    teacher5 = Teacher.create!({name: "Alice", email: "alive@mark.com", address: "san francisco", phone: "1234567890"})
    teacher6 = Teacher.create!({name: "Matt", email: "matt@mark.com", address: "new york", phone: "1234567890"})
    teacher7 = Teacher.create!({name: "Jane", email: "jane@mark.com", address: "chicago", phone: "1234567890"})
    teacher8 = Teacher.create!({name: "Bill", email: "bill@mark.com", address: "los angeles", phone: "1234567890"})
    teacher9 = Teacher.create!({name: "Sandy", email: "sandy@mark.com", address: "san diego", phone: "1234567890"})
  end
end
