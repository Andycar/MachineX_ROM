.class final Lcom/absolute/android/sslutil/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/absolute/android/sslutil/SslUtil;


# direct methods
.method private constructor <init>(Lcom/absolute/android/sslutil/SslUtil;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/absolute/android/sslutil/c;->a:Lcom/absolute/android/sslutil/SslUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/sslutil/SslUtil;B)V
    .registers 3

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/absolute/android/sslutil/c;-><init>(Lcom/absolute/android/sslutil/SslUtil;)V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 100
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 103
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
