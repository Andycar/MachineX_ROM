.class Lcom/android/server/net/DnsServerEntry;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/DnsServerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public expiry:J


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;J)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "expiry"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    .line 212
    iput-wide p2, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    .line 213
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/DnsServerEntry;)I
    .registers 6
    .param p1, "other"    # Lcom/android/server/net/DnsServerEntry;

    .prologue
    .line 216
    iget-wide v0, p1, Lcom/android/server/net/DnsServerEntry;->expiry:J

    iget-wide v2, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, Lcom/android/server/net/DnsServerEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/DnsServerEntry;->compareTo(Lcom/android/server/net/DnsServerEntry;)I

    move-result v0

    return v0
.end method
