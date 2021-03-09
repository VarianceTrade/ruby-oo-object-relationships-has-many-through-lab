class Patient

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor) #takes in a date
        #
        Appointment.new(date, self, doctor)
    end

    def appointments
        bucket = []
        Appointment.all.each do |appointment| 
            if appointment.patient == self
                bucket << appointment
                
            end
        end
        return bucket
    end

    def doctors
        appointments.map {|appointment| appointment.doctor}
    end



end
