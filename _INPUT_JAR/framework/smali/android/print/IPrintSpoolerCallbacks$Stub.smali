.class public abstract Landroid/print/IPrintSpoolerCallbacks$Stub;
.super Landroid/os/Binder;
.source "IPrintSpoolerCallbacks.java"

# interfaces
.implements Landroid/print/IPrintSpoolerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpoolerCallbacks"

.field static final TRANSACTION_onCancelPrintJobResult:I = 0x2

.field static final TRANSACTION_onGetPrintJobInfoResult:I = 0x5

.field static final TRANSACTION_onGetPrintJobInfosResult:I = 0x1

.field static final TRANSACTION_onSetPrintJobStateResult:I = 0x3

.field static final TRANSACTION_onSetPrintJobTagResult:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "android.print.IPrintSpoolerCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/print/IPrintSpoolerCallbacks;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Landroid/print/IPrintSpoolerCallbacks;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_7c

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 49
    :sswitch_a
    const-string v4, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v4, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfosResult(Ljava/util/List;I)V

    goto :goto_9

    .line 64
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v2    # "_arg1":I
    :sswitch_23
    const-string v4, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    move v0, v3

    .line 68
    .local v0, "_arg0":Z
    :cond_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCancelPrintJobResult(ZI)V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :sswitch_37
    const-string v4, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    move v0, v3

    .line 78
    .restart local v0    # "_arg0":Z
    :cond_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobStateResult(ZI)V

    goto :goto_9

    .line 84
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :sswitch_4b
    const-string v4, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_57

    move v0, v3

    .line 88
    .restart local v0    # "_arg0":Z
    :cond_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobTagResult(ZI)V

    goto :goto_9

    .line 94
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :sswitch_5f
    const-string v4, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7a

    .line 97
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 103
    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    :goto_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V

    goto :goto_9

    .line 100
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    .end local v2    # "_arg1":I
    :cond_7a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_72

    .line 45
    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_5f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
