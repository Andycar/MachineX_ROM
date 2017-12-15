.class public abstract Landroid/printservice/IPrintServiceClient$Stub;
.super Landroid/os/Binder;
.source "IPrintServiceClient.java"

# interfaces
.implements Landroid/printservice/IPrintServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintServiceClient"

.field static final TRANSACTION_getPrintJobInfo:I = 0x2

.field static final TRANSACTION_getPrintJobInfos:I = 0x1

.field static final TRANSACTION_onPrintersAdded:I = 0x6

.field static final TRANSACTION_onPrintersRemoved:I = 0x7

.field static final TRANSACTION_setPrintJobState:I = 0x3

.field static final TRANSACTION_setPrintJobTag:I = 0x4

.field static final TRANSACTION_writePrintJobData:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.printservice.IPrintServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;
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
    const-string v1, "android.printservice.IPrintServiceClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/printservice/IPrintServiceClient;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/printservice/IPrintServiceClient;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/printservice/IPrintServiceClient$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/printservice/IPrintServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_100

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 47
    :sswitch_a
    const-string v5, "android.printservice.IPrintServiceClient"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v5, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfos()Ljava/util/List;

    move-result-object v4

    .line 54
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 60
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :sswitch_20
    const-string v7, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_43

    .line 63
    sget-object v7, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 68
    .local v0, "_arg0":Landroid/print/PrintJobId;
    :goto_33
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    move-result-object v3

    .line 69
    .local v3, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v3, :cond_45

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v3, p3, v6}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 66
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_result":Landroid/print/PrintJobInfo;
    :cond_43
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_33

    .line 75
    .restart local v3    # "_result":Landroid/print/PrintJobInfo;
    :cond_45
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_result":Landroid/print/PrintJobInfo;
    :sswitch_49
    const-string v7, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_72

    .line 84
    sget-object v7, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 90
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    :goto_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v3

    .line 94
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_6e

    move v5, v6

    :cond_6e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_72
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_5c

    .line 100
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_74
    const-string v7, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9a

    .line 103
    sget-object v7, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 109
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    :goto_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result v3

    .line 111
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v3, :cond_95

    move v5, v6

    :cond_95
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 106
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_9a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_87

    .line 117
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_9c
    const-string v5, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c2

    .line 120
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 126
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c4

    .line 127
    sget-object v5, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 132
    .local v1, "_arg1":Landroid/print/PrintJobId;
    :goto_bd
    invoke-virtual {p0, v0, v1}, Landroid/printservice/IPrintServiceClient$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    goto/16 :goto_9

    .line 123
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/print/PrintJobId;
    :cond_c2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_af

    .line 130
    :cond_c4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/print/PrintJobId;
    goto :goto_bd

    .line 137
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_c6
    const-string v5, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e1

    .line 140
    sget-object v5, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 145
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    :goto_d9
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 143
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :cond_e1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_d9

    .line 151
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_e3
    const-string v5, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fe

    .line 154
    sget-object v5, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 159
    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :goto_f6
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 157
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :cond_fe
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_f6

    .line 43
    :sswitch_data_100
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_49
        0x4 -> :sswitch_74
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_c6
        0x7 -> :sswitch_e3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
