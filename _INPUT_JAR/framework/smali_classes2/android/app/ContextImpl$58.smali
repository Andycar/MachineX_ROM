.class final Landroid/app/ContextImpl$58;
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
    .line 835
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 837
    const-string v2, "ethernet"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 838
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IEthernetManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;

    move-result-object v1

    .line 839
    .local v1, "service":Landroid/net/IEthernetManager;
    new-instance v2, Landroid/net/EthernetManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/net/EthernetManager;-><init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V

    return-object v2
.end method
