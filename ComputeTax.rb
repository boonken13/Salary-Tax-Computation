require_relative "TaxFactory"

class ComputeTax
    attr_reader :name
    attr_reader :salary

    def initialize(name, salary)
        @name = name
        @salary = salary
    end
    def tax()
        TaxFactory.for(salary, "R1")
    end
    def generate_monthly_payslip(name, salary)

        puts "Monthly Payslip for: '#{name}'"
        puts "Gross Monthly Income: $#{sprintf('%.2f',salary)}"
        puts "Monthly Income Tax: $#{sprintf('%.2f',tax())}"
        puts "Net Monthly Income: $#{sprintf('%.2f',salary - tax())}"
    end
end


