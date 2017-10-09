.class Lcom/android/settings/wifi/hs20/Hs20UtilityService$1;
.super Ljava/lang/Object;
.source "Hs20UtilityService.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/hs20/Hs20UtilityService;->sslClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/hs20/Hs20UtilityService;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService$1;->this$0:Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "xcs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 249
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "xcs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method
