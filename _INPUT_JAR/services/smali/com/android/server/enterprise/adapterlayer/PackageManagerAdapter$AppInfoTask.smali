.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCmd:Ljava/lang/String;

.field public final mUsage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "usage"    # J

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    .line 726
    iput-wide p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    .line 727
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;)I
    .registers 6
    .param p1, "other"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    .prologue
    .line 756
    iget-wide v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 757
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 759
    :goto_10
    return v0

    :cond_11
    iget-wide v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    neg-int v0, v0

    goto :goto_10
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 714
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->compareTo(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;)I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method getUsage()J
    .registers 3

    .prologue
    .line 744
    iget-wide v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    return-wide v0
.end method
