.class public Landroid/content/pm/ManifestDigest;
.super Ljava/lang/Object;
.source "ManifestDigest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ManifestDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "ManifestDigest"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ManifestDigest {mDigest="


# instance fields
.field private final mDigest:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 134
    new-instance v0, Landroid/content/pm/ManifestDigest$1;

    invoke-direct {v0}, Landroid/content/pm/ManifestDigest$1;-><init>()V

    sput-object v0, Landroid/content/pm/ManifestDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ManifestDigest$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/ManifestDigest$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/pm/ManifestDigest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .param p1, "digest"    # [B

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    .line 55
    return-void
.end method

.method static fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;
    .registers 9
    .param p0, "fileIs"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 62
    if-nez p0, :cond_4

    .line 87
    :goto_3
    return-object v5

    .line 68
    :cond_4
    :try_start_4
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_2e

    move-result-object v3

    .line 73
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 75
    .local v1, "dis":Ljava/security/DigestInputStream;
    const/16 v6, 0x2000

    :try_start_16
    new-array v4, v6, [B

    .line 76
    .local v4, "readBuffer":[B
    :cond_18
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v1, v4, v6, v7}, Ljava/security/DigestInputStream;->read([BII)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_37
    .catchall {:try_start_16 .. :try_end_1d} :catchall_43

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_18

    .line 83
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 86
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 87
    .local v0, "digest":[B
    new-instance v5, Landroid/content/pm/ManifestDigest;

    invoke-direct {v5, v0}, Landroid/content/pm/ManifestDigest;-><init>([B)V

    goto :goto_3

    .line 69
    .end local v0    # "digest":[B
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "readBuffer":[B
    :catch_2e
    move-exception v2

    .line 70
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "SHA-256 must be available"

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 79
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :catch_37
    move-exception v2

    .line 80
    .local v2, "e":Ljava/io/IOException;
    :try_start_38
    const-string v6, "ManifestDigest"

    const-string v7, "Could not read manifest"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_43

    .line 83
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_43
    move-exception v5

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v2, p1, Landroid/content/pm/ManifestDigest;

    if-nez v2, :cond_6

    .line 103
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 101
    check-cast v0, Landroid/content/pm/ManifestDigest;

    .line 103
    .local v0, "other":Landroid/content/pm/ManifestDigest;
    if-eq p0, v0, :cond_15

    iget-object v2, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    iget-object v3, v0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_15
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ManifestDigest {mDigest="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "ManifestDigest {mDigest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v4, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    array-length v0, v4

    .line 119
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v0, :cond_2e

    .line 120
    iget-object v4, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    aget-byte v1, v4, v2

    .line 121
    .local v1, "b":B
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Ljava/lang/IntegralToString;->appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;

    .line 122
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 124
    .end local v1    # "b":B
    :cond_2e
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    iget-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 132
    return-void
.end method
