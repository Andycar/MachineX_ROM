.class public abstract Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IWritingBuddyConnectionCallback.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

.field static final TRANSACTION_onResultReceive:I = 0x1

.field static final TRANSACTION_onStatusRequest:I = 0x3

.field static final TRANSACTION_onWritingResultReceive:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_78

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 45
    :sswitch_9
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    move v1, v3

    .line 56
    .local v1, "_arg1":Z
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 57
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_2d
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->onResultReceive(IZLandroid/os/Bundle;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_34
    const/4 v1, 0x0

    goto :goto_1f

    .line 60
    .restart local v1    # "_arg1":Z
    :cond_36
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_2d

    .line 68
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_38
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    .line 73
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 79
    .local v1, "_arg1":Ljava/lang/CharSequence;
    :goto_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_66

    .line 80
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 85
    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_5d
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->onWritingResultReceive(ILjava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 76
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_64
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_4f

    .line 83
    :cond_66
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_5d

    .line 91
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_68
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->onStatusRequest(I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 41
    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_38
        0x3 -> :sswitch_68
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
