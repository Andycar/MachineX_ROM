.class public Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "EnvironmentImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 36
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const-string v2, "Temperature"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 52
    .local v1, "temp":[D
    const-string v2, "Humidity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 53
    .local v0, "humi":[D
    const-string v2, "EnvSensorType"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v2, "Temperature"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 55
    const-string v2, "Humidity"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 56
    return-object p1
.end method
