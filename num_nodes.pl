% Trees representation 
% 1ºº nil is tree
% 2ºº t(L,Left,Right), Left and Right are trees.




% num_nodes(+tree,-num)
% it is true if Num, unify with the number
% of nodes in tree 


% Induction 
% 1ºº p(n0)
% 2ºº p(n-1)-> p(n) 
%    p(N): N2 is N-1, p(N2).



num_nodes(nil,0).
num_nodes(t(_,L,R), RT):-
        num_nodes(L,RL),
		num_nodes(R,RR),
		RT is RL + RR + 1.
		
t(11,t(9,t(7,nil,nil),t(10,nil,nil)),t(20,t(18,nil,nil),t(22,nil,nil))).