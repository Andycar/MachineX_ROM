.class final Landroid/app/ContextImpl$67;
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
    .line 915
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 917
    const-string/jumbo v2, "restrictions"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 918
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRestrictionsManager;

    move-result-object v1

    .line 919
    .local v1, "service":Landroid/content/IRestrictionsManager;
    new-instance v2, Landroid/content/RestrictionsManager;

    invoke-direct {v2, p1, v1}, Landroid/content/RestrictionsManager;-><init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V

    return-object v2
.end method
