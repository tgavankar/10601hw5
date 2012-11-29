%%% This simulates a vector of Z's and X's from the model.

sim_Z  = [discretesample(prior)];
X = [];
X(1)   = [discretesample(phi(:, sim_Z(1)))];
t=2;
while 1
  sim_Z(t) = discretesample(A(:, sim_Z(t-1)));
  if sim_Z(t)==3
    break
  end
  X(t)     = discretesample(phi(:, sim_Z(t)));
  t = t+1;
end

%%% T: length of chain
T = numel(X);


