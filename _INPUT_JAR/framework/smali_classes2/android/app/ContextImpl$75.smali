.class final Landroid/app/ContextImpl$75;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 972
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 974
    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 975
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 976
    .local v1, "service":Landroid/app/usage/IUsageStatsManager;
    new-instance v2, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/usage/UsageStatsManager;-><init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V

    return-object v2
.end method
