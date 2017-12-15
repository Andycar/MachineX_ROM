.class public Landroid/net/http/SslError;
.super Ljava/lang/Object;
.source "SslError.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MDM_ADDED_ERRORS:I = 0x2

.field public static final SSL_DATE_INVALID:I = 0x4

.field public static final SSL_EXPIRED:I = 0x1

.field public static final SSL_IDMISMATCH:I = 0x2

.field public static final SSL_INVALID:I = 0x5

.field public static final SSL_MAX_ERROR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SSL_NOTYETVALID:I = 0x0

.field public static final SSL_REVOKED:I = 0x6

.field public static final SSL_UNABLE_TO_CHECK_REVOCATION:I = 0x7

.field public static final SSL_UNTRUSTED:I = 0x3


# instance fields
.field final mCertificate:Landroid/net/http/SslCertificate;

.field mErrors:I

.field final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Landroid/net/http/SslError;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/net/http/SslError;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-boolean v0, Landroid/net/http/SslError;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_f
    sget-boolean v0, Landroid/net/http/SslError;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    if-nez p3, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/net/http/SslError;->addError(I)Z

    .line 135
    iput-object p2, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    .line 136
    iput-object p3, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 5
    .param p0, "error"    # I
    .param p1, "cert"    # Landroid/net/http/SslCertificate;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v1, -0xc8

    .line 161
    sget-boolean v0, Landroid/net/http/SslError;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    const/16 v0, -0x12b

    if-lt p0, v0, :cond_c

    if-le p0, v1, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :cond_12
    if-ne p0, v1, :cond_1b

    .line 163
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 177
    :goto_1a
    return-object v0

    .line 164
    :cond_1b
    const/16 v0, -0xc9

    if-ne p0, v0, :cond_26

    .line 165
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_1a

    .line 166
    :cond_26
    const/16 v0, -0xca

    if-ne p0, v0, :cond_31

    .line 167
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_1a

    .line 170
    :cond_31
    const/16 v0, -0xcc

    if-eq p0, v0, :cond_39

    const/16 v0, -0xcd

    if-ne p0, v0, :cond_40

    .line 171
    :cond_39
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_1a

    .line 172
    :cond_40
    const/16 v0, -0xce

    if-ne p0, v0, :cond_4b

    .line 173
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_1a

    .line 177
    :cond_4b
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    goto :goto_1a
.end method


# virtual methods
.method public addError(I)Z
    .registers 5
    .param p1, "error"    # I

    .prologue
    const/4 v1, 0x1

    .line 203
    if-ltz p1, :cond_11

    const/16 v2, 0x8

    if-ge p1, v2, :cond_11

    move v0, v1

    .line 204
    .local v0, "rval":Z
    :goto_8
    if-eqz v0, :cond_10

    .line 205
    iget v2, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int/2addr v1, p1

    or-int/2addr v1, v2

    iput v1, p0, Landroid/net/http/SslError;->mErrors:I

    .line 208
    :cond_10
    return v0

    .line 203
    .end local v0    # "rval":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getPrimaryError()I
    .registers 4

    .prologue
    .line 231
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    if-eqz v1, :cond_1c

    .line 233
    const/4 v0, 0x7

    .local v0, "error":I
    :goto_5
    if-ltz v0, :cond_12

    .line 234
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 242
    .end local v0    # "error":I
    :goto_e
    return v0

    .line 233
    .restart local v0    # "error":I
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 239
    :cond_12
    sget-boolean v1, Landroid/net/http/SslError;->$assertionsDisabled:Z

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 242
    .end local v0    # "error":I
    :cond_1c
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasError(I)Z
    .registers 7
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    if-ltz p1, :cond_14

    const/16 v3, 0x8

    if-ge p1, v3, :cond_14

    move v0, v1

    .line 218
    .local v0, "rval":Z
    :goto_9
    if-eqz v0, :cond_13

    .line 219
    iget v3, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int v4, v1, p1

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    move v0, v1

    .line 222
    :cond_13
    :goto_13
    return v0

    .end local v0    # "rval":Z
    :cond_14
    move v0, v2

    .line 217
    goto :goto_9

    .restart local v0    # "rval":Z
    :cond_16
    move v0, v2

    .line 219
    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "primary error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
