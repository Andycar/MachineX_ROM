.class public Landroid/sec/enterprise/certificate/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field public static final BROWSER_MODULE:Ljava/lang/String; = "browser_module"

.field public static final CERT_ERROR_REVOKED:I = -0xce

.field public static final CERT_ERROR_UNABLE_TO_CHECK_REVOCATION:I = -0xcd

.field public static final MSG_ADDITIONAL_CHECKER:Ljava/lang/String; = "Additional certificate path checker failed."

.field public static final MSG_CRL_DIST_COULD_NOT_BE_READ:Ljava/lang/String; = "CRL distribution point extension could not be read"

.field public static final MSG_CRL_NOT_VALID:Ljava/lang/String; = "No valid CRL found."

.field public static final MSG_DIST_POINT_COULD_NOT_BE_READ:Ljava/lang/String; = "Distribution points could not be read."

.field public static final MSG_EXPIRED_CERT:Ljava/lang/String; = ", expiration time"

.field public static final MSG_IS_REVOKED_CERT:Ljava/lang/String; = "is revoked"

.field public static final MSG_NOT_YET_VALID_CERT:Ljava/lang/String; = ", validation time"

.field public static final MSG_NO_ADDITIONAL_CRL_DECODED:Ljava/lang/String; = "No additional CRL locations could be decoded from CRL distribution point extension."

.field public static final MSG_REVOKED_CERT:Ljava/lang/String; = "Certificate revocation after"

.field public static final MSG_UNABLE_CHECK_OCSP_STATUS:Ljava/lang/String; = "OCSP check failed!"

.field public static final MSG_UNABLE_CHECK_REVOCATION_STATUS:Ljava/lang/String; = "Certificate status could not be determined."

.field public static final MSG_UNABLE_GET_CRL:Ljava/lang/String; = "Unable to get CRL for certificate"

.field public static final PACKAGE_MODULE:Ljava/lang/String; = "package_manager_module"

.field public static final SBROWSER_VERIFY_NO_TRUSTED_ROOT:I = 0x2

.field public static final SBROWSER_VERIFY_REVOKED:I = 0x1

.field public static final SBROWSER_VERIFY_UNABLE_TO_CHECK_REVOCATION:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_MODULE:Ljava/lang/String; = "wifi_module"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "CertificatePolicy"

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCaCertificateTrusted([BZ)Z
    .registers 7
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 158
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 159
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->isCaCertificateTrusted([BZ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 164
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 161
    :catch_b
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isCaCertificateTrusted: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isOcspCheckEnabled()Z
    .registers 5

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 182
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 183
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOcspCheckEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 188
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 185
    :catch_b
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isOcspCheckEnabled: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isRevocationCheckEnabled()Z
    .registers 5

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 170
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 171
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isRevocationCheckEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 176
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 173
    :catch_b
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isRevocationCheckEnabled: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isUserRemoveCertificatesAllowed()Z
    .registers 5

    .prologue
    .line 206
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 207
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 208
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isUserRemoveCertificatesAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 213
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 210
    :catch_b
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isUserRemoveCertificatesAllowed: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 146
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 147
    invoke-interface {v1, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 152
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 149
    :catch_a
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-notifyCertificateFailure:failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public notifyCertificateRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 194
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 195
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateRemoved(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 200
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 197
    :catch_a
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-notifyCertificateRemoved:failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
