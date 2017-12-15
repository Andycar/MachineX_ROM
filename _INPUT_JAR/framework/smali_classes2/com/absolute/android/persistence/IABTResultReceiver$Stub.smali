.class public abstract Lcom/absolute/android/persistence/IABTResultReceiver$Stub;
.super Landroid/os/Binder;
.source "IABTResultReceiver.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTResultReceiver"

.field static final TRANSACTION_onInvokeResult:I = 0x2

.field static final TRANSACTION_onOperationResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p0, p0, v0}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_3
    return-object v0

    .line 36
    :cond_4
    const-string v1, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/absolute/android/persistence/IABTResultReceiver;

    if-eqz v1, :cond_13

    .line 38
    check-cast v0, Lcom/absolute/android/persistence/IABTResultReceiver;

    goto :goto_3

    .line 40
    :cond_13
    new-instance v0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_6a

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 52
    :sswitch_a
    const-string v5, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 57
    :sswitch_10
    const-string v6, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    move v1, v4

    .line 63
    .local v1, "_arg1":Z
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :cond_2f
    move v1, v5

    .line 61
    goto :goto_20

    .line 72
    .end local v0    # "_arg0":I
    :sswitch_31
    const-string v6, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    .line 75
    sget-object v6, Lcom/absolute/android/persistence/MethodSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/MethodSpec;

    .line 81
    .local v0, "_arg0":Lcom/absolute/android/persistence/MethodSpec;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    .line 82
    sget-object v6, Lcom/absolute/android/persistence/MethodReturnValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/MethodReturnValue;

    .line 88
    .local v1, "_arg1":Lcom/absolute/android/persistence/MethodReturnValue;
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    move v2, v4

    .line 90
    .local v2, "_arg2":Z
    :goto_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 78
    .end local v0    # "_arg0":Lcom/absolute/android/persistence/MethodSpec;
    .end local v1    # "_arg1":Lcom/absolute/android/persistence/MethodReturnValue;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :cond_64
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/absolute/android/persistence/MethodSpec;
    goto :goto_44

    .line 85
    :cond_66
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/absolute/android/persistence/MethodReturnValue;
    goto :goto_52

    :cond_68
    move v2, v5

    .line 88
    goto :goto_59

    .line 48
    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_31
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
