require 'json'
require 'pry'

module JsonA
    def readJsonA1
        file = File.read('json/a.json')
        parsed = JSON.parse(file)
        parsed_rgaspar = parsed.select {|user| user["user"] == "rgaspar" and user["action"] == "paused"} 
    end

    def readJsonA2
        file = File.read('json/a.json')
        parsed = JSON.parse(file)
        parsed_pbocucci = parsed.count {|user| user["user"] == "pbocucci" and user["action"] == "login"} 

    end

    def readJsonA3
        file = File.read('json/a.json')
        parsed = JSON.parse(file)
        parsed_nil_user = parsed.map {|user| user["user"] == ""}.include?(true)
    end
end

module JsonB
    def readJsonB1
        file = File.read('json/b.json')
        parsed = JSON.parse(file)
        parsed_multiplied_by_3 = parsed.map {|x| x*3} 
    end

    def readJsonB2
        file = File.read('json/b.json')
        parsed = JSON.parse(file)
        parsed_even = parsed.select {|x| x.even?}
    end

    def readJsonB3
        file = File.read('json/b.json')
        parsed = JSON.parse(file)
        parsed_odd = parsed.select {|x| x.odd?}
    end

    def readJsonB4
        file = File.read('json/b.json')
        parsed = JSON.parse(file)
        parsed_bigger_than_3 = parsed.select {|x| x > 3}
    end
end

module JsonC
    def readJsonC1
        file = File.read('json/c.json')
        parsed = JSON.parse(file)
        parsed = parsed[0]["trainingScheduleAthleteEvent"]
        parsed_pendings_days = parsed.select {|x| x["status"] == "Pending"}.collect {|x| x["day"]}.sort
    end

    def readJsonC2
        file = File.read('json/c.json')
        parsed = JSON.parse(file)
        parsed = parsed[0]["trainingScheduleAthleteEvent"]
        parsed_day29_at_night = parsed.select {|x| x["partsOfDay"] == "Night" and x["day"] == 29}        
    end

    def readJsonC3
        file = File.read('json/c.json')
        parsed = JSON.parse(file)
        parsed = parsed[0]["trainingScheduleAthleteEvent"]
        parsed_day15 = parsed.select {|x| x["day"] == 15}        
    end
end