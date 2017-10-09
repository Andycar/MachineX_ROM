.class Ljava/util/jar/JarVerifier$VerifierEntry;
.super Ljava/io/OutputStream;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierEntry"
.end annotation


# instance fields
.field private final certChains:[[Ljava/security/cert/Certificate;

.field private final digest:Ljava/security/MessageDigest;

.field private final hash:[B

.field private final name:Ljava/lang/String;

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/security/MessageDigest;
    .param p3, "hash"    # [B
    .param p4, "certChains"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            "[B[[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p5, "verifedEntries":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[[Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 95
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->name:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    .line 97
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->hash:[B

    .line 98
    iput-object p4, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    .line 99
    iput-object p5, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    .line 100
    return-void
.end method


# virtual methods
.method verify()V
    .registers 5

    .prologue
    .line 130
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 131
    .local v0, "d":[B
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->hash:[B

    invoke-static {v1}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 132
    const-string v1, "META-INF/MANIFEST.MF"

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->name:Ljava/lang/String;

    # invokes: Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    invoke-static {v1, v2, v3}, Ljava/util/jar/JarVerifier;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v1

    throw v1

    .line 134
    :cond_1d
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public write(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 107
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 108
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I

    .prologue
    .line 115
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 116
    return-void
.end method
