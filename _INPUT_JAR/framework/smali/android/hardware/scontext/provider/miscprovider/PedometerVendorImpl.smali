.class abstract Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.super Ljava/lang/Object;
.source "PedometerVendorImpl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method register()Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method requestToUpdate()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method setLoggingMode(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 43
    return-void
.end method

.method setProperty(IDD)V
    .registers 6
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 35
    return-void
.end method

.method unregister()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method
