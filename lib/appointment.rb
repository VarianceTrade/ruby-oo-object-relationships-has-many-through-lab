class Appointment

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    def patient
        return @patient
    end

    def doctor
        return @doctor
    end


end
