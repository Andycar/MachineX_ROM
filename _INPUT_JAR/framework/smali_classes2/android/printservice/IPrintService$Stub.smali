.class public abstract Landroid/printservice/IPrintService$Stub;
.super Landroid/os/Binder;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintService"

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0x4

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0xa

.field static final TRANSACTION_onPrintJobQueued:I = 0x3

.field static final TRANSACTION_requestCancelPrintJob:I = 0x2

.field static final TRANSACTION_setClient:I = 0x1

.field static final TRANSACTION_startPrinterDiscovery:I = 0x5

.field static final TRANSACTION_startPrinterStateTracking:I = 0x8

.field static final TRANSACTION_stopPrinterDiscovery:I = 0x6

.field static final TRANSACTION_stopPrinterStateTracking:I = 0x9

.field static final TRANSACTION_validatePrinters:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.printservice.IPrintService"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;
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
    const-string v1, "android.printservice.IPrintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/printservice/IPrintService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/printservice/IPrintService;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/printservice/IPrintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/printservice/IPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_c0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 47
    :sswitch_9
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/printservice/IPrintServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/printservice/IPrintServiceClient;
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->setClient(Landroid/printservice/IPrintServiceClient;)V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":Landroid/printservice/IPrintServiceClient;
    :sswitch_20
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    .line 63
    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 68
    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    :goto_33
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    goto :goto_8

    .line 66
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_37
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_33

    .line 73
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_39
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_50

    .line 76
    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 81
    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :goto_4c
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    goto :goto_8

    .line 79
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_4c

    .line 86
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_52
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->createPrinterDiscoverySession()V

    goto :goto_8

    .line 92
    :sswitch_5b
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_8

    .line 100
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :sswitch_6a
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->stopPrinterDiscovery()V

    goto :goto_8

    .line 106
    :sswitch_73
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->validatePrinters(Ljava/util/List;)V

    goto :goto_8

    .line 114
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :sswitch_82
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9a

    .line 117
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .line 122
    .local v0, "_arg0":Landroid/print/PrinterId;
    :goto_95
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_8

    .line 120
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    :cond_9a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrinterId;
    goto :goto_95

    .line 127
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    :sswitch_9c
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b4

    .line 130
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .line 135
    .restart local v0    # "_arg0":Landroid/print/PrinterId;
    :goto_af
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_8

    .line 133
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    :cond_b4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrinterId;
    goto :goto_af

    .line 140
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    :sswitch_b6
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->destroyPrinterDiscoverySession()V

    goto/16 :goto_8

    .line 43
    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_39
        0x4 -> :sswitch_52
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_73
        0x8 -> :sswitch_82
        0x9 -> :sswitch_9c
        0xa -> :sswitch_b6
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
