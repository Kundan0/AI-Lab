
m=1
for s in range(10):
    if s!=1:
        for e in range(10):
            if e!=1 and e!=s:
                for n in range(10):
                    if n!=1 and n!=s and n!=e:
                        for d in range(10):
                            if d!=1 and d!=s and d!=e and d!=n:
                                for o in range(10):
                                    if o!=1 and o!=d and o!=s and o!=e and o!=n:
                                        for r in range(10):
                                            if r!=1 and r!=o and r!=d and r!=s and r!=e and r!=n:
                                                for y in range(10):
                                                    if y!=1 and y!=r and y!=o and  y!=d and y!=s and y!=e and y!=n:
                                                        if (((s+m-o)*1000+(e+0-n)*100+(n+r-e)*10+(d+e-y))==10000):
                                                            
                                                            print("s",s)
                                                            print("e",e)
                                                            print("n",n)
                                                            print("d",d)
                                                            print("m",m)
                                                            print('o',o)
                                                            print('r',r)
                                                            print('y',y)
                                                            
                                                            

                                                            
