.class public Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;
.super Ljava/lang/Object;
.source "PedometerEngine.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "/system/lib/libPedometer.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public native native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V
.end method

.method public native native_pedometer_initialize(IDD)V
.end method
