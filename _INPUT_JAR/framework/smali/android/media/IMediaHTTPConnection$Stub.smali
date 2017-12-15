.class public abstract Landroid/media/IMediaHTTPConnection$Stub;
.super Landroid/os/Binder;
.source "IMediaHTTPConnection.java"

# interfaces
.implements Landroid/media/IMediaHTTPConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaHTTPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaHTTPConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaHTTPConnection"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getMIMEType:I = 0x5

.field static final TRANSACTION_getProperties:I = 0x7

.field static final TRANSACTION_getSize:I = 0x4

.field static final TRANSACTION_getUri:I = 0x6

.field static final TRANSACTION_readAt:I = 0x3

.field static final TRANSACTION_setProxy:I = 0x9

.field static final TRANSACTION_setReadTimeOut:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.media.IMediaHTTPConnection"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaHTTPConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaHTTPConnection;
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
    const-string v1, "android.media.IMediaHTTPConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IMediaHTTPConnection;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/media/IMediaHTTPConnection;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/media/IMediaHTTPConnection$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IMediaHTTPConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_b6

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 43
    :sswitch_9
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/media/IMediaHTTPConnection$Stub;->connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 54
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/IBinder;
    :sswitch_27
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->disconnect()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 67
    :sswitch_33
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 71
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IMediaHTTPConnection$Stub;->readAt(JI)I

    move-result v4

    .line 73
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 79
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_4b
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getSize()J

    move-result-wide v4

    .line 81
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    .line 87
    .end local v4    # "_result":J
    :sswitch_5b
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getMIMEType()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 95
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_6b
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 97
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 103
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_7b
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IMediaHTTPConnection$Stub;->getProperties(I)J

    move-result-wide v4

    .line 107
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_8

    .line 113
    .end local v0    # "_arg0":I
    .end local v4    # "_result":J
    :sswitch_90
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IMediaHTTPConnection$Stub;->setReadTimeOut(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 122
    .end local v0    # "_arg0":I
    :sswitch_a1
    const-string v6, "android.media.IMediaHTTPConnection"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/media/IMediaHTTPConnection$Stub;->setProxy(Ljava/lang/String;I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 39
    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_27
        0x3 -> :sswitch_33
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_7b
        0x8 -> :sswitch_90
        0x9 -> :sswitch_a1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
