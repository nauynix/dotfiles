// $%U%$
// $%D%$/$%M%$/$%Y%$
#include <bits/stdc++.h>
using namespace std;
#define rep(i, begin, end) for (__typeof(end) i = (begin) - ((begin) > (end)); i != (end) - ((begin) > (end)); i += 1 - 2 * ((begin) > (end)))
#define all(x) (x).begin(), (x).end()
#define pb push_back
#define fi first
#define se second
typedef pair<int, int> PII;
typedef vector<int> VI;
typedef vector<string> VS;
typedef vector<PII> VII;
typedef vector<VI> VVI;
typedef long long int  ll;
const int INF = 1e9 + 7;
const int mod = 1e9 + 7;
ll powmod(ll a,ll b) {ll res=1;a%=mod; assert(b>=0); for(;b;b>>=1){if(b&1)res=res*a%mod;a=a*a%mod;}return res;}
int nxt() {int x;cin >> x;return x;}

int main(){
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    return 0;
}

