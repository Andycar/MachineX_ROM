.class public abstract Landroid/content/IProviderCallBack$Stub;
.super Landroid/os/Binder;
.source "IProviderCallBack.java"

# interfaces
.implements Landroid/content/IProviderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IProviderCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IProviderCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IProviderCallBack"

.field static final TRANSACTION_checkSAccount:I = 0x4

.field static final TRANSACTION_checkSAccountPassword:I = 0x5

.field static final TRANSACTION_getCallerInfoDetails:I = 0x2

.field static final TRANSACTION_handleShortcut:I = 0x3

.field static final TRANSACTION_queryProvider:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p0, p0, v0}, Landroid/content/IProviderCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IProviderCallBack;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "android.content.IProviderCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/IProviderCallBack;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/content/IProviderCallBack;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/content/IProviderCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IProviderCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ce

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "_arg5":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 62
    invoke-virtual/range {v0 .. v7}, Landroid/content/IProviderCallBack$Stub;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v8

    .line 63
    .local v8, "_result":Landroid/content/CustomCursor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v8, :cond_44

    .line 65
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v8, p3, v9}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_42
    move v0, v9

    .line 71
    goto :goto_9

    .line 69
    :cond_44
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 75
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":[Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_result":Landroid/content/CustomCursor;
    :sswitch_48
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/IProviderCallBack$Stub;->getCallerInfoDetails(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v8

    .line 79
    .restart local v8    # "_result":Landroid/content/CustomCursor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v8, :cond_62

    .line 81
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v8, p3, v9}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_60
    move v0, v9

    .line 87
    goto :goto_9

    .line 85
    :cond_62
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_60

    .line 91
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/content/CustomCursor;
    :sswitch_66
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97

    .line 100
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 106
    .local v4, "_arg3":Landroid/graphics/Bitmap;
    :goto_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroid/content/IProviderCallBack$Stub;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 111
    goto/16 :goto_9

    .line 103
    .end local v4    # "_arg3":Landroid/graphics/Bitmap;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_97
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Bitmap;
    goto :goto_85

    .line 115
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/graphics/Bitmap;
    :sswitch_99
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISAccountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISAccountCallback;

    move-result-object v2

    .line 120
    .local v2, "_arg1":Landroid/content/ISAccountCallback;
    invoke-virtual {p0, v1, v2}, Landroid/content/IProviderCallBack$Stub;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 122
    goto/16 :goto_9

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ISAccountCallback;
    :sswitch_b3
    const-string v0, "android.content.IProviderCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISAccountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISAccountCallback;

    move-result-object v2

    .line 131
    .restart local v2    # "_arg1":Landroid/content/ISAccountCallback;
    invoke-virtual {p0, v1, v2}, Landroid/content/IProviderCallBack$Stub;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 133
    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_48
        0x3 -> :sswitch_66
        0x4 -> :sswitch_99
        0x5 -> :sswitch_b3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
