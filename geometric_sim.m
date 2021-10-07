iter = 1;
iters = 10000;

results = zeros(iters,1);
while iter <iters
    bballs = 8;
    tballs = 100;
    numdraws = 0;
    while bballs>0
        draw = rand;
        if draw<bballs/tballs
           bballs = bballs-1;
        end
        numdraws = numdraws + 1;
    end
    results(iter) = numdraws;
    iter = iter+1;
end

mean(results)