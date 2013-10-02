class Project < ActiveRecord::Base
    attr_accessible :client, :desc, :due_time, :estimate, :project, :start_time
  belongs_to :user


  ESTIMATE = ["1 hour", "2 hours", "1 day", "2 days", "1 week", "1 month"]
  PROJECT  =['Test','Run','Fast']
  CLIENT   =['John','Mat','Philip']
  #SUPPLY_UNITS = ["KVArh", "kWh", "m3"]
  #SUBTYPES = ["Active Power", "Reactive Power", "Gas", "Water", "Wastewater"]



end
