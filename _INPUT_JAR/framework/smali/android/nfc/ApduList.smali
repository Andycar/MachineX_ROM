.class public Landroid/nfc/ApduList;
.super Ljava/lang/Object;
.source "ApduList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/ApduList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Landroid/nfc/ApduList$1;

    invoke-direct {v0}, Landroid/nfc/ApduList$1;-><init>()V

    sput-object v0, Landroid/nfc/ApduList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_22

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, "length":I
    new-array v0, v3, [B

    .line 63
    .local v0, "cmd":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 64
    iget-object v4, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 66
    .end local v0    # "cmd":[B
    .end local v3    # "length":I
    :cond_22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/nfc/ApduList$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/nfc/ApduList$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/nfc/ApduList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add([B)V
    .registers 3
    .param p1, "command"    # [B

    .prologue
    .line 36
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget-object v2, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v2, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 78
    .local v0, "cmd":[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_f

    .line 81
    .end local v0    # "cmd":[B
    :cond_23
    return-void
.end method
