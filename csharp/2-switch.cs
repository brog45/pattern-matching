using System.Collections.Generic;
using System.Linq;

public static class Switch
{
    public static int Fac(int n)
    {
        switch (n)
        {
            case 0:
            case 1:
                return 1;
            default:
                return Fac(n - 1) + Fac(n - 2);
        }
    }

    public static bool IsSorted(IEnumerable<int> xs)
    {
        switch (xs)
        {
            case int[] arr when arr.Length < 2:
            case ICollection<int> col when col.Count < 2:
            case IEnumerable<int> ie when ie.Count() < 2:
                return true;
            default:
                int a = xs.First();
                var ys = xs.Skip(1);
                int b = ys.First();
                return a < b && IsSorted(ys);
        }
    }
}
