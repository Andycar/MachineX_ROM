.class public final Landroid/dirEncryption/SDCardEncryptionPolicies;
.super Ljava/lang/Object;
.source "SDCardEncryptionPolicies.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/dirEncryption/SDCardEncryptionPolicies;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/dirEncryption/SDCardEncryptionPolicies;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEnc:I

.field public mExcludeMedia:I

.field public mFullEnc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies$1;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies$1;-><init>()V

    sput-object v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "enc"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMedia"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 27
    iput p2, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 28
    iput p3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 152
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0, p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "values":[Ljava/lang/String;
    const/4 v0, 0x3

    .line 65
    .local v0, "enc":I
    const/4 v2, 0x5

    .line 66
    .local v2, "fullEnc":I
    const/4 v1, 0x7

    .line 69
    .local v1, "excludeMedia":I
    const/4 v4, 0x0

    :try_start_a
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 71
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_24

    move-result v1

    .line 74
    :goto_1e
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4, v0, v2, v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    return-object v4

    .line 72
    :catch_24
    move-exception v4

    goto :goto_1e
.end method

.method public static writeToParcel(Landroid/dirEncryption/SDCardEncryptionPolicies;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "c"    # Landroid/dirEncryption/SDCardEncryptionPolicies;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 123
    if-eqz p0, :cond_7

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_6
    return-void

    .line 126
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public clone()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 5

    .prologue
    .line 33
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v2, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-direct {v0, v1, v2, v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->clone()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/dirEncryption/SDCardEncryptionPolicies;)I
    .registers 3
    .param p1, "that"    # Landroid/dirEncryption/SDCardEncryptionPolicies;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7
    check-cast p1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->compareTo(Landroid/dirEncryption/SDCardEncryptionPolicies;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 88
    if-eqz p1, :cond_1a

    .line 89
    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-object v1, v0

    .line 90
    .local v1, "other":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_17} :catch_1b

    if-ne v3, v4, :cond_1a

    const/4 v2, 0x1

    .line 96
    .end local v1    # "other":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1a
    :goto_1a
    return v2

    .line 94
    :catch_1b
    move-exception v3

    goto :goto_1a
.end method

.method public flattenToShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flattenToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultEnc()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v0
.end method

.method public getExcludeMedia()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v0
.end method

.method public getFullEnc()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x3

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 21
    const/4 v0, 0x7

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 116
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void
.end method
