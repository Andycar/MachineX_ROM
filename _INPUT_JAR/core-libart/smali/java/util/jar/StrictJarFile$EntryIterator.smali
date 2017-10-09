.class final Ljava/util/jar/StrictJarFile$EntryIterator;
.super Ljava/lang/Object;
.source "StrictJarFile.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterationHandle:J

.field private nextEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 7
    .param p1, "nativeHandle"    # J
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    # invokes: Ljava/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J
    invoke-static {p1, p2, p3}, Ljava/util/jar/StrictJarFile;->access$000(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    .line 184
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 197
    iget-object v2, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    if-eqz v2, :cond_6

    .line 207
    :goto_5
    return v1

    .line 201
    :cond_6
    iget-wide v2, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    # invokes: Ljava/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;
    invoke-static {v2, v3}, Ljava/util/jar/StrictJarFile;->access$100(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 202
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_10

    .line 203
    const/4 v1, 0x0

    goto :goto_5

    .line 206
    :cond_10
    iput-object v0, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    goto :goto_5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/util/jar/StrictJarFile$EntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/zip/ZipEntry;
    .registers 5

    .prologue
    .line 187
    iget-object v1, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_a

    .line 188
    iget-object v0, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 189
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 193
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    :goto_9
    return-object v0

    :cond_a
    iget-wide v2, p0, Ljava/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    # invokes: Ljava/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;
    invoke-static {v2, v3}, Ljava/util/jar/StrictJarFile;->access$100(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    goto :goto_9
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
