.class public final Lcom/android/internal/os/UidSipper;
.super Ljava/lang/Object;
.source "UidSipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidSipper$1;,
        Lcom/android/internal/os/UidSipper$BatterySipStat;
    }
.end annotation


# instance fields
.field public final batterySipStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipper$BatterySipStat;",
            ">;"
        }
    .end annotation
.end field

.field private isUsingNetwork:Z

.field public final name:Ljava/lang/String;

.field private totalPower:D

.field private userLaunch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;DD)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "power"    # D
    .param p5, "totalPower"    # D

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 27
    return-void
.end method


# virtual methods
.method addBatterySipStat(JZDD)V
    .registers 18
    .param p1, "time"    # J
    .param p3, "lcdOn"    # Z
    .param p4, "power"    # D
    .param p6, "totalPower"    # D

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/os/UidSipper$BatterySipStat;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/UidSipper$BatterySipStat;-><init>(Ljava/lang/String;ZDDLcom/android/internal/os/UidSipper$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method addBatterySipStat(Ljava/lang/String;ZDD)V
    .registers 16
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "lcdOn"    # Z
    .param p3, "power"    # D
    .param p5, "totalPower"    # D

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/os/UidSipper$BatterySipStat;

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/UidSipper$BatterySipStat;-><init>(Ljava/lang/String;ZDDLcom/android/internal/os/UidSipper$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public getTotalPower()D
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/internal/os/UidSipper;->totalPower:D

    return-wide v0
.end method

.method public isUserLaunched()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/os/UidSipper;->userLaunch:Z

    return v0
.end method

.method public isUsingNetwork()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/os/UidSipper;->isUsingNetwork:Z

    return v0
.end method

.method makeNetworkUser()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/UidSipper;->isUsingNetwork:Z

    .line 39
    return-void
.end method

.method makeUserLaunch()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/UidSipper;->userLaunch:Z

    .line 35
    return-void
.end method

.method setTotalPower(D)V
    .registers 4
    .param p1, "totalpower"    # D

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/android/internal/os/UidSipper;->totalPower:D

    .line 31
    return-void
.end method
