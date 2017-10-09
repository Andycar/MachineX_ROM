.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/pm/PackageManagerService$VerifierPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/PackageManagerService$VerifierPackage;Lcom/android/server/pm/PackageManagerService$VerifierPackage;)I
    .registers 8
    .param p1, "v1"    # Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    .param p2, "v2"    # Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    .prologue
    .line 985
    iget-wide v0, p1, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->firstInstallTime:J

    .line 986
    .local v0, "t1":J
    iget-wide v2, p2, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->firstInstallTime:J

    .line 987
    .local v2, "t2":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v4, 0x1

    :goto_9
    return v4

    :cond_a
    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    const/4 v4, -0x1

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 983
    check-cast p1, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$1;->compare(Lcom/android/server/pm/PackageManagerService$VerifierPackage;Lcom/android/server/pm/PackageManagerService$VerifierPackage;)I

    move-result v0

    return v0
.end method
