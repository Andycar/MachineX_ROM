.class public abstract Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub;
.super Landroid/os/Binder;
.source "IDigitalPenDimensionsCallback.java"

# interfaces
.implements Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "codeaurora.ultrasound.IDigitalPenDimensionsCallback"

.field static final TRANSACTION_onDimensionsChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "codeaurora.ultrasound.IDigitalPenDimensionsCallback"

    invoke-virtual {p0, p0, v0}, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "codeaurora.ultrasound.IDigitalPenDimensionsCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_20

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 48
    :sswitch_9
    const-string v3, "codeaurora.ultrasound.IDigitalPenDimensionsCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 53
    :sswitch_f
    const-string v3, "codeaurora.ultrasound.IDigitalPenDimensionsCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub;->onDimensionsChange(II)V

    goto :goto_8

    .line 44
    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
