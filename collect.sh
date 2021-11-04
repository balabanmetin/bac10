for i in {1..10}; do 
	for j in nsb nsb_jc jf_jc skmer_mash; 
	do 
		x=`compareTrees.missingBranch <(cat set$i/trees/tree.nwk | nw_topology -bI -) set${i}/trees/${j}.tre -simplify | awk '{print $2}'`; 
		xtot=`compareTrees.missingBranch <(cat set$i/trees/tree.nwk | nw_topology -bI -) set${i}/trees/${j}.tre -simplify | awk '{print $1}'`; 
		y=`compareTrees.missingBranch <(cat set$i/trees/tree.nwk | nw_ed - 'i & b<0.95' o | nw_topology -bI -) set$i/trees/${j}.tre -simplify | awk '{print $2}'`; 
		printf "set${i}\t${j}\t$xtot\t$x\t$y\n"; 
	done; 
done > results_bac10_coll.tsv

for i in {1..10}; do
        for j in nsb nsb_jc jf_jc skmer_mash;
        do
                x=`compareTrees.missingBranch <(cat set$i/trees/tree.nwk | nw_topology -bI -) set${i}/trees/${j}.tre -simplify | awk '{print $2}'`;
                xtot=`compareTrees.missingBranch <(cat set$i/trees/tree.nwk | nw_topology -bI -) set${i}/trees/${j}.tre -simplify | awk '{print $1}'`;
                y=`compareTrees.missingBranch <(cat set$i/trees/tree.nwk | nw_ed - 'i & b<0.95' o | nw_topology -bI -) set$i/trees/${j}.tre -simplify | awk '{print $2}'`;
		ytot=`compareTrees.missingBranch <(cat set$i/trees/tree.nwk | nw_ed - 'i & b<0.95' o | nw_topology -bI -) set$i/trees/${j}.tre -simplify | awk '{print $1}'`;
                printf "set${i}\t${j}\t$xtot\t$x\t$y\t$ytot\n";
        done;
done > results_bac10_coll_mb.csv

for i in {1..10}; do for j in nsb nsb_jc jf_jc skmer_mash; do nw_distance set${i}/trees/${j}.tre | numlist -avg | sed "s/^/set$i\t$j\t/g"; done; done
