.class Landroid/service/ISEDenialService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISEDenialService.java"

# interfaces
.implements Landroid/service/ISEDenialService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ISEDenialService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/service/ISEDenialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 54
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/service/ISEDenialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "android.service.ISEDenialService"

    return-object v0
.end method
