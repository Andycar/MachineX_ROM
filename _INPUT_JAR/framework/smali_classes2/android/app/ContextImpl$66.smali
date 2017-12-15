.class final Landroid/app/ContextImpl$66;
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
    .line 906
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 908
    const-string/jumbo v1, "rcp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 909
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/os/RCPManager;

    invoke-static {v0}, Landroid/os/IRCPManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRCPManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RCPManager;-><init>(Landroid/os/IRCPManager;)V

    return-object v1
.end method
