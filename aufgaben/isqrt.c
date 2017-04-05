long isqrt(long x) {
    return isqrtFrom(0, x);
}

long isqrtFrom(long r, long x) {
    if (r*r == x) return r;
    if (r*r < x) return isqrtFrom(r + 1, x);
    return -1;
}
