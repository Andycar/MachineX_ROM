.class final Landroid/telephony/SubInfoRecord$1;
.super Ljava/lang/Object;
.source "SubInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubInfoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/SubInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubInfoRecord;
    .registers 20
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 124
    .local v4, "subId":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "iccId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 126
    .local v7, "slotId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "displayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 128
    .local v9, "nameSource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 129
    .local v10, "color":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 131
    .local v12, "displayNumberFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 132
    .local v13, "dataRoaming":I
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 133
    .local v14, "iconRes":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readIntArray([I)V

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 135
    .local v15, "mcc":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 136
    .local v16, "mnc":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 139
    .local v17, "status":I
    new-instance v3, Landroid/telephony/SubInfoRecord;

    invoke-direct/range {v3 .. v17}, Landroid/telephony/SubInfoRecord;-><init>(JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;II[IIII)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/telephony/SubInfoRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SubInfoRecord;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 145
    new-array v0, p1, [Landroid/telephony/SubInfoRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/telephony/SubInfoRecord$1;->newArray(I)[Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method
