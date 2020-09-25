
row=int(input('enter row    '))
col=int(input('enter column '))
def isValid(square,arr):
    for i in range(len(arr)):
        if ((square[0]-arr[i][0])==(square[1]-arr[i][1]) or (square[0]-arr[i][0])==(-square[1]+arr[i][1]) ):
            return 0
        
    return 1
def solution(arr):
    for i in range(len(arr)):
       x=isValid(arr[i],arr[i+1:])
       if(x==0):
           return x
    return 1
count =0
for a in range(8):
    for b in range(8):
        if a!=b:
            for c in range(8):
                if c!=a and c!=b:
                    for d in range(8):
                        if d!=a and d!=b and d!=c:
                            for e in range(8):
                                if e!=d and e!=c and e!=b and e!=a:
                                    for f in range(8):
                                        if f!=e and f!=d and f!=c and f!=b and f!=a:
                                            for g in range(8):
                                                if g!=f and g!=e and g!=d and g!=c and g!=b and g!=a:
                                                    for h in range(8):
                                                        if h!=g and h!=f and h!=e and h!=d and h!=c and h!=b and h!=a:
                                                            if ([col,row] in [[0,a],[1,b],[2,c],[3,d],[4,e],[5,f],[6,g],[7,h]] and solution([[0,a],[1,b],[2,c],[3,d],[4,e],[5,f],[6,g],[7,h]])):
                                                                count+=1
                                                                print(a,end=' ')
                                                                print(b,end=' ')
                                                                print(c,end=' ')
                                                                print(d,end=' ')
                                                                print(e,end=' ')
                                                                print(f,end=' ')
                                                                print(g,end=' ')
                                                                print(h,end=' ')
                                                                print('--------')
        
print(count)  

        