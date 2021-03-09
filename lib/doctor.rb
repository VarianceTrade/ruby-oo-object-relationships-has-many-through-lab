class Doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all 
    end

    def name
        @name
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        bucket = []
        Appointment.all.each do |appointment|
            if appointment.doctor == self
                bucket << appointment
                return bucket
            end
        end
    end

    def patients
        appointments.map{|appointment| appointment.patient}
    end
end