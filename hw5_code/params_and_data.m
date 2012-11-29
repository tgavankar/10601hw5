%%% Z: hidden states.  Three-way categorical. %%%
% 1 = cold
% 2 = hot
% 3 = STOP state

%%% X: observed states.  Three-way categorical. %%%
% 1 = one ice cream cone
% 2 = two ice cream cones
% 3 = three ice cream cones
% .. these are DISCRETE SYMBOLS. The model doesn't know about ordering or even
% that they're numbers.  We could renumber them 3,1,2 if we wanted.

%%%%%% Parameters %%%%%

%%% prior:  prior on the first state
prior = [0.8 0.2 0];

%%% Each conditional probability table is a COLUMN in the matrix.

%%% A: transition probabilities. A(k,j) is P(z_{t+1} = k | z_t = j)
A = [
  0.8 0.1 0.5;
  0.1 0.8 0.5;
  0.1 0.1 0;
];

%%% phi: emission probabilities.  phi(i,k) is P(x_t = i | z_t = k)
phi = [
  0.7 0.1;
  0.2 0.2;
  0.1 0.7;
];


%%% Example data

smallX=[1,1,3,1,2,3,3];
bigX=[2,3,3,2,3,2,3,2,2,3,1,3,3,1,1,1,2,1,1,1,3,1,2,1,1,1,2,3,3,2,3,2,2];
