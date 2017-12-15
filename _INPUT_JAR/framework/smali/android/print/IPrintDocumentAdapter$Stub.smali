.class public abstract Landroid/print/IPrintDocumentAdapter$Stub;
.super Landroid/os/Binder;
.source "IPrintDocumentAdapter.java"

# interfaces
.implements Landroid/print/IPrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintDocumentAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintDocumentAdapter"

.field static final TRANSACTION_finish:I = 0x5

.field static final TRANSACTION_layout:I = 0x3

.field static final TRANSACTION_setObserver:I = 0x1

.field static final TRANSACTION_start:I = 0x2

.field static final TRANSACTION_write:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintDocumentAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.print.IPrintDocumentAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/print/IPrintDocumentAdapter;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/print/IPrintDocumentAdapter;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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
    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_ae

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 47
    :sswitch_9
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 48
    goto :goto_8

    .line 52
    :sswitch_10
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintDocumentAdapterObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapterObserver;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    invoke-virtual {p0, v1}, Landroid/print/IPrintDocumentAdapter$Stub;->setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V

    move v0, v6

    .line 56
    goto :goto_8

    .line 60
    .end local v1    # "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    :sswitch_22
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->start()V

    move v0, v6

    .line 62
    goto :goto_8

    .line 66
    :sswitch_2c
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 69
    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintAttributes;

    .line 75
    .local v1, "_arg0":Landroid/print/PrintAttributes;
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    .line 76
    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes;

    .line 82
    .local v2, "_arg1":Landroid/print/PrintAttributes;
    :goto_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/ILayoutResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;

    move-result-object v3

    .line 84
    .local v3, "_arg2":Landroid/print/ILayoutResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    .line 85
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 91
    .local v4, "_arg3":Landroid/os/Bundle;
    :goto_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintDocumentAdapter$Stub;->layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V

    move v0, v6

    .line 93
    goto :goto_8

    .line 72
    .end local v1    # "_arg0":Landroid/print/PrintAttributes;
    .end local v2    # "_arg1":Landroid/print/PrintAttributes;
    .end local v3    # "_arg2":Landroid/print/ILayoutResultCallback;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":I
    :cond_6d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/print/PrintAttributes;
    goto :goto_3f

    .line 79
    :cond_6f
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/print/PrintAttributes;
    goto :goto_4d

    .line 88
    .restart local v3    # "_arg2":Landroid/print/ILayoutResultCallback;
    :cond_71
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_63

    .line 97
    .end local v1    # "_arg0":Landroid/print/PrintAttributes;
    .end local v2    # "_arg1":Landroid/print/PrintAttributes;
    .end local v3    # "_arg2":Landroid/print/ILayoutResultCallback;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_73
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    sget-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/print/PageRange;

    .line 101
    .local v1, "_arg0":[Landroid/print/PageRange;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a0

    .line 102
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 108
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IWriteResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;

    move-result-object v3

    .line 110
    .local v3, "_arg2":Landroid/print/IWriteResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 111
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/print/IPrintDocumentAdapter$Stub;->write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V

    move v0, v6

    .line 112
    goto/16 :goto_8

    .line 105
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":Landroid/print/IWriteResultCallback;
    .end local v4    # "_arg3":I
    :cond_a0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8e

    .line 116
    .end local v1    # "_arg0":[Landroid/print/PageRange;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_a2
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->finish()V

    move v0, v6

    .line 118
    goto/16 :goto_8

    .line 43
    nop

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_73
        0x5 -> :sswitch_a2
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
