namespace: Newdesign
operation:
  name: Newdesign
  inputs:
    - num1
    - num2
    - name_file
  python_action:
    use_jython: false
    script: |-
      # do not remove the execute function
      def execute(num1,num2,name_file):
          # code goes here
      # you can add additional helper methods below.
      num1 = float(input("Enter first number: "))
      num2 = float(input("Enter second number: "))

      # Calculate the sum
      result = num1 + num2

      # Display the result
      print(f"The sum of {num1} and {num2} is {result}")
  results:
    - SUCCESS
