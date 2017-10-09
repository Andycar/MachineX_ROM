.class public final Ljava/util/jar/StrictJarFile;
.super Ljava/lang/Object;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/StrictJarFile$EntryIterator;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isSigned:Z

.field private final manifest:Ljava/util/jar/Manifest;

.field private final nativeHandle:J

.field private final raf:Ljava/io/RandomAccessFile;

.field private final verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    .line 57
    invoke-static {p1}, Ljava/util/jar/StrictJarFile;->nativeOpenJarFile(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    .line 58
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    .line 64
    :try_start_19
    invoke-direct {p0}, Ljava/util/jar/StrictJarFile;->getMetaEntries()Ljava/util/HashMap;

    move-result-object v1

    .line 65
    .local v1, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v4, Ljava/util/jar/Manifest;

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/util/jar/Manifest;-><init>([BZ)V

    iput-object v4, p0, Ljava/util/jar/StrictJarFile;->manifest:Ljava/util/jar/Manifest;

    .line 66
    new-instance v2, Ljava/util/jar/JarVerifier;

    iget-object v4, p0, Ljava/util/jar/StrictJarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-direct {v2, p1, v4, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/util/HashMap;)V

    iput-object v2, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 68
    iget-object v2, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    move-result v2

    if-eqz v2, :cond_51

    move v2, v3

    :goto_47
    iput-boolean v2, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_49} :catch_53

    .line 74
    iget-object v2, p0, Ljava/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 75
    return-void

    .line 68
    :cond_51
    const/4 v2, 0x0

    goto :goto_47

    .line 69
    .end local v1    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :catch_53
    move-exception v0

    .line 70
    .local v0, "ioe":Ljava/io/IOException;
    iget-wide v2, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v2, v3}, Ljava/util/jar/StrictJarFile;->nativeClose(J)V

    .line 71
    throw v0
.end method

.method static synthetic access$000(JLjava/lang/String;)J
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Ljava/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(J)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 40
    invoke-static {p0, p1}, Ljava/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method private getMetaEntries()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v2, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v1, Ljava/util/jar/StrictJarFile$EntryIterator;

    iget-wide v4, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    const-string v3, "META-INF/"

    invoke-direct {v1, v4, v5, v3}, Ljava/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    .line 219
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 221
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 224
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_2a
    return-object v2
.end method

.method private getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 12
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_1b

    .line 167
    new-instance v0, Ljava/util/zip/ZipFile$RAFStream;

    iget-object v1, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    .line 174
    :goto_1a
    return-object v0

    .line 170
    :cond_1b
    new-instance v0, Ljava/util/zip/ZipFile$RAFStream;

    iget-object v1, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    .line 173
    .local v0, "wrapped":Ljava/util/zip/ZipFile$RAFStream;
    const/16 v1, 0x400

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 174
    .local v6, "bufSize":I
    new-instance v1, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v0, v2, v6, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    move-object v0, v1

    goto :goto_1a
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeNextEntry(J)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeOpenJarFile(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeStartIteration(JLjava/lang/String;)J
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-boolean v0, p0, Ljava/util/jar/StrictJarFile;->closed:Z

    if-nez v0, :cond_16

    .line 157
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 159
    iget-wide v0, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1}, Ljava/util/jar/StrictJarFile;->nativeClose(J)V

    .line 160
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/StrictJarFile;->closed:Z

    .line 163
    :cond_16
    return-void
.end method

.method public findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-wide v0, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1, p1}, Ljava/util/jar/StrictJarFile;->nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 98
    iget-boolean v0, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v0, :cond_f

    .line 99
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 102
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    check-cast v0, [[Ljava/security/cert/Certificate;

    goto :goto_e
.end method

.method public getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    .registers 12
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    iget-boolean v8, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v8, :cond_2f

    .line 118
    iget-object v8, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 121
    .local v1, "certChains":[[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .line 122
    .local v4, "count":I
    move-object v0, v1

    .local v0, "arr$":[[Ljava/security/cert/Certificate;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_12
    if-ge v6, v7, :cond_1b

    aget-object v3, v0, v6

    .line 123
    .local v3, "chain":[Ljava/security/cert/Certificate;
    array-length v8, v3

    add-int/2addr v4, v8

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 127
    .end local v3    # "chain":[Ljava/security/cert/Certificate;
    :cond_1b
    new-array v2, v4, [Ljava/security/cert/Certificate;

    .line 128
    .local v2, "certs":[Ljava/security/cert/Certificate;
    const/4 v5, 0x0

    .line 129
    .local v5, "i":I
    move-object v0, v1

    array-length v7, v0

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v7, :cond_30

    aget-object v3, v0, v6

    .line 130
    .restart local v3    # "chain":[Ljava/security/cert/Certificate;
    const/4 v8, 0x0

    array-length v9, v3

    invoke-static {v3, v8, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    array-length v8, v3

    add-int/2addr v5, v8

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 137
    .end local v0    # "arr$":[[Ljava/security/cert/Certificate;
    .end local v1    # "certChains":[[Ljava/security/cert/Certificate;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "chain":[Ljava/security/cert/Certificate;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2f
    const/4 v2, 0x0

    :cond_30
    return-object v2
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 8
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Ljava/util/jar/StrictJarFile;->getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 143
    .local v1, "is":Ljava/io/InputStream;
    iget-boolean v2, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v2, :cond_14

    .line 144
    iget-object v2, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    .line 145
    .local v0, "entry":Ljava/util/jar/JarVerifier$VerifierEntry;
    if-nez v0, :cond_15

    .line 152
    .end local v0    # "entry":Ljava/util/jar/JarVerifier$VerifierEntry;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_14
    :goto_14
    return-object v1

    .line 149
    .restart local v0    # "entry":Ljava/util/jar/JarVerifier$VerifierEntry;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_15
    new-instance v2, Ljava/util/jar/JarFile$JarFileInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5, v0}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLjava/util/jar/JarVerifier$VerifierEntry;)V

    move-object v1, v2

    goto :goto_14
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->manifest:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/jar/StrictJarFile$EntryIterator;

    iget-wide v2, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    const-string v1, ""

    invoke-direct {v0, v2, v3, v1}, Ljava/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    return-object v0
.end method
