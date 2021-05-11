using System.Collections.Generic;
using System.Linq;

public static class Without
{
    public static int Fac(int n)
    {
        if (n == 0) return 1;
        if (n == 1) return 1;
        return Fac(n - 1) + Fac(n - 2);
    }

    public static bool IsSorted(IEnumerable<int> xs)
    {
        int length = xs.Count();
        if (length < 2) return true;
        int a = xs.First();
        var ys = xs.Skip(1);
        int b = ys.First();
        return a < b && IsSorted(ys);
    }
}
