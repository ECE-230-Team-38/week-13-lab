# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions Team 38

Lab Summary: In this lab we built the same state machine using both the one hot and binary encoding. One hot was a little simpler to design and then debug after but it ended up using more flip flops. Binary was more compact but it required more careful logic and also k maps. We learned how each encoding affects hardware usage and how FGPA handles different styles of state machine design.

### Compare and contrast One Hot and Binary encodings
One hot assigns one flip flop per state so only one FF is hot at a time. This makes the next state logic a lot simpler and easier to follow with the downside being it uses more hardware as the number of states grow. 

### Which method did your team find easier, and why?
We found one hot to be a lot easier since each state had its own flip flop so writing the equations and checking transitions felt a lot more straightforward. With binary we had to do k maps and think about bit patterns which took longer.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
If the FPGA has a lot of flip flops and you want simpler logic or maybe better timing then one hot would be better. If you need to save hardware or the design has a lot of states, binary would be better since it uses a lot less flip flops. The choice really just depends on the resource limit and how simple or complex you want the design to be.



