.class public abstract Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;
.super Landroid/os/Binder;
.source "ISViewCoverBaseService.java"

# interfaces
.implements Lcom/samsung/android/cover/ISViewCoverBaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ISViewCoverBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ISViewCoverBaseService"

.field static final TRANSACTION_isCoverViewShowing:I = 0x5

.field static final TRANSACTION_onCoverAppCovered:I = 0x6

.field static final TRANSACTION_onSViewCoverHide:I = 0x3

.field static final TRANSACTION_onSViewCoverShow:I = 0x2

.field static final TRANSACTION_onSystemReady:I = 0x1

.field static final TRANSACTION_updateCoverState:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_74

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 43
    :sswitch_a
    const-string v2, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v2, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSystemReady()V

    goto :goto_9

    .line 54
    :sswitch_19
    const-string v2, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverShow()V

    goto :goto_9

    .line 60
    :sswitch_22
    const-string v2, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverHide()V

    goto :goto_9

    .line 66
    :sswitch_2b
    const-string v2, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    .line 69
    sget-object v2, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    .line 74
    .local v0, "_arg0":Lcom/samsung/android/cover/CoverState;
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":Lcom/samsung/android/cover/CoverState;
    :cond_45
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/cover/CoverState;
    goto :goto_3e

    .line 80
    .end local v0    # "_arg0":Lcom/samsung/android/cover/CoverState;
    :sswitch_47
    const-string v4, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->isCoverViewShowing()Z

    move-result v1

    .line 82
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_56

    move v2, v3

    :cond_56
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v1    # "_result":Z
    :sswitch_5a
    const-string v4, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    move v0, v3

    .line 91
    .local v0, "_arg0":Z
    :goto_66
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onCoverAppCovered(Z)I

    move-result v1

    .line 92
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :cond_71
    move v0, v2

    .line 90
    goto :goto_66

    .line 39
    nop

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_19
        0x3 -> :sswitch_22
        0x4 -> :sswitch_2b
        0x5 -> :sswitch_47
        0x6 -> :sswitch_5a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
