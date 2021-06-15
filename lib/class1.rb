class Class1
    def beep
        puts "beep!"
    end
    def bop
        puts "bop!"
    end
end
class Class2 < Class1
    def beepbop
        beep
        bop
    end
    def beep
        puts "BEEEPIN"
    end
    def bop
        super
        Class1.beep
        #what if i want to use the beep from Class1?
    end
end