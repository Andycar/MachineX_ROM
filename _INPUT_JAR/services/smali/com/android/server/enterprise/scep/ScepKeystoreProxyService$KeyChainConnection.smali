.class public final Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyChainConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/security/IKeyChainService;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/security/IKeyChainService;

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->context:Landroid/content/Context;

    .line 474
    iput-object p2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 475
    iput-object p3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    .line 476
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/content/ServiceConnection;
    .param p3, "x2"    # Landroid/security/IKeyChainService;
    .param p4, "x3"    # Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;

    .prologue
    .line 467
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 480
    return-void
.end method

.method public getService()Landroid/security/IKeyChainService;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-object v0
.end method
