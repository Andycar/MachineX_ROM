.class public final Lcom/absolute/android/persistservice/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z = false

.field private static final b:I = 0xea60

.field private static final c:I = 0xea60

.field private static d:Lcom/absolute/android/sslutil/SslUtil;

.field private static e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/absolute/android/persistservice/v;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/y;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 196
    .line 198
    new-instance v0, Lcom/absolute/android/persistence/AppInfoProperties;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>()V

    .line 206
    :try_start_6
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_aa

    .line 209
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_d
    invoke-static {v4, v2, v3, p4}, Lcom/absolute/android/persistservice/v;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_51
    .catchall {:try_start_d .. :try_end_10} :catchall_aa

    move-result-object v2

    .line 229
    :goto_11
    :try_start_11
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_ae

    .line 230
    :try_start_1a
    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 234
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 236
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_71

    .line 238
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_98

    .line 256
    :try_start_3e
    invoke-virtual {v0, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->load(Ljava/io/Reader;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_58
    .catchall {:try_start_3e .. :try_end_41} :catchall_5d

    .line 273
    :goto_41
    if-eqz v2, :cond_46

    .line 274
    :try_start_43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_a4

    .line 278
    :cond_46
    :goto_46
    if-eqz v3, :cond_4b

    .line 280
    :try_start_48
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_a6

    .line 284
    :cond_4b
    :goto_4b
    if-eqz v4, :cond_50

    .line 286
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_a8

    .line 291
    :cond_50
    :goto_50
    return-object v0

    .line 219
    :catch_51
    move-exception v2

    const/4 v2, 0x1

    :try_start_53
    invoke-static {v4, p1, v2, p4}, Lcom/absolute/android/persistservice/v;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_aa

    move-result-object v2

    goto :goto_11

    .line 260
    :catch_58
    move-exception v1

    :try_start_59
    invoke-static {v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/io/Reader;Ljava/util/Properties;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_41

    .line 272
    :catchall_5d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 273
    :goto_61
    if-eqz v1, :cond_66

    .line 274
    :try_start_63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_9e

    .line 278
    :cond_66
    :goto_66
    if-eqz v2, :cond_6b

    .line 280
    :try_start_68
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_a0

    .line 284
    :cond_6b
    :goto_6b
    if-eqz v3, :cond_70

    .line 286
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_a2

    .line 272
    :cond_70
    :goto_70
    throw v0

    .line 265
    :cond_71
    :try_start_71
    invoke-static {v2, p3}, Lcom/absolute/android/persistservice/v;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/y;)Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Server returned error in response to GetAppInfo HTTP request for URL: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " response: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_98
    .catchall {:try_start_71 .. :try_end_98} :catchall_98

    .line 272
    :catchall_98
    move-exception v0

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_61

    :catch_9e
    move-exception v1

    goto :goto_66

    :catch_a0
    move-exception v1

    goto :goto_6b

    :catch_a2
    move-exception v1

    goto :goto_70

    :catch_a4
    move-exception v1

    goto :goto_46

    :catch_a6
    move-exception v1

    goto :goto_4b

    :catch_a8
    move-exception v1

    goto :goto_50

    :catchall_aa
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_61

    :catchall_ae
    move-exception v0

    move-object v3, v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_61
.end method

.method private static a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;
    .registers 3

    .prologue
    .line 775
    sget-object v0, Lcom/absolute/android/persistservice/v;->d:Lcom/absolute/android/sslutil/SslUtil;

    if-nez v0, :cond_d

    .line 776
    new-instance v0, Lcom/absolute/android/sslutil/SslUtil;

    const-string v1, "APS"

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/absolute/android/persistservice/v;->d:Lcom/absolute/android/sslutil/SslUtil;

    .line 778
    :cond_d
    sget-object v0, Lcom/absolute/android/persistservice/v;->d:Lcom/absolute/android/sslutil/SslUtil;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v0, "AccessKey="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "PersistenceVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const/16 v0, 0xc38

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Platform="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Make="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "OSVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "BuildFingerprint="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Hardware="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Revision="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareRevision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DeviceId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MacAddress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-static {p3}, Lcom/absolute/android/utils/DeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "IMEI="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-static {p3}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_164

    const-string v0, ""

    :cond_164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SerialNo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "RilSerialNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string/jumbo v0, "ril.serialnumber"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/y;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 542
    .line 543
    const/4 v2, 0x0

    .line 546
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_78

    .line 548
    :try_start_f
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 550
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    :goto_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_37

    goto :goto_1c

    .line 558
    :catchall_37
    move-exception v0

    :goto_38
    if-eqz v1, :cond_3d

    .line 560
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_48

    .line 558
    :cond_3d
    :goto_3d
    throw v0

    .line 555
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_37

    move-result-object v0

    .line 558
    if-eqz v1, :cond_47

    .line 560
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_60

    .line 568
    :cond_47
    :goto_47
    return-object v0

    .line 561
    :catch_48
    move-exception v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    goto :goto_3d

    .line 561
    :catch_60
    move-exception v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    goto :goto_47

    .line 558
    :catchall_78
    move-exception v0

    move-object v1, v2

    goto :goto_38
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    .registers 9

    .prologue
    const v4, 0xea60

    .line 480
    .line 484
    if-eqz p1, :cond_ad

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 499
    :goto_64
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 500
    sget-object v2, Lcom/absolute/android/persistservice/v;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 504
    sget-object v2, Lcom/absolute/android/persistservice/v;->d:Lcom/absolute/android/sslutil/SslUtil;

    if-nez v2, :cond_7d

    new-instance v2, Lcom/absolute/android/sslutil/SslUtil;

    const-string v3, "APS"

    invoke-direct {v2, p3, v3}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/absolute/android/persistservice/v;->d:Lcom/absolute/android/sslutil/SslUtil;

    :cond_7d
    sget-object v2, Lcom/absolute/android/persistservice/v;->d:Lcom/absolute/android/sslutil/SslUtil;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Z)V

    .line 505
    sget-object v2, Lcom/absolute/android/persistservice/v;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_88
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 510
    if-eqz p2, :cond_94

    .line 511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 514
    :cond_94
    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/plain; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 522
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 525
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 527
    return-object v0

    :cond_ad
    move-object v0, p0

    goto :goto_64
.end method

.method private static a(Ljava/io/Reader;Ljava/util/Properties;)V
    .registers 14

    .prologue
    .line 602
    if-nez p0, :cond_8

    .line 603
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_8
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 610
    const/16 v0, 0x28

    new-array v3, v0, [C

    .line 611
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 612
    const/4 v0, 0x1

    .line 614
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v6

    move v6, v5

    move v5, v4

    .line 617
    :goto_1a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v4

    .line 618
    const/4 v8, -0x1

    if-eq v4, v8, :cond_10e

    .line 619
    int-to-char v8, v4

    .line 623
    array-length v4, v3

    if-ne v2, v4, :cond_158

    .line 624
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    .line 625
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    :goto_2f
    const/4 v3, 0x2

    if-ne v7, v3, :cond_155

    .line 629
    const/16 v3, 0x10

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 630
    if-ltz v3, :cond_45

    .line 631
    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v3

    .line 632
    add-int/lit8 v3, v5, 0x1

    const/4 v5, 0x4

    if-ge v3, v5, :cond_50

    move v5, v3

    move-object v3, v4

    .line 633
    goto :goto_1a

    .line 635
    :cond_45
    const/4 v3, 0x4

    if-gt v5, v3, :cond_51

    .line 636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    move v5, v3

    .line 638
    :cond_51
    const/4 v7, 0x0

    .line 639
    add-int/lit8 v3, v2, 0x1

    int-to-char v10, v6

    aput-char v10, v4, v2

    .line 640
    const/16 v2, 0xa

    if-ne v8, v2, :cond_151

    move v2, v3

    move v3, v7

    .line 641
    :goto_5d
    const/4 v7, 0x1

    if-ne v3, v7, :cond_94

    .line 645
    const/4 v7, 0x0

    .line 646
    sparse-switch v8, :sswitch_data_15c

    .line 743
    :cond_64
    :goto_64
    const/4 v0, 0x0

    .line 744
    const/4 v3, 0x4

    if-ne v7, v3, :cond_6a

    .line 746
    const/4 v7, 0x0

    move v1, v2

    .line 748
    :cond_6a
    add-int/lit8 v3, v2, 0x1

    aput-char v8, v4, v2

    move v2, v3

    move-object v3, v4

    goto :goto_1a

    .line 648
    :sswitch_71
    const/4 v3, 0x3

    move v7, v3

    move-object v3, v4

    .line 649
    goto :goto_1a

    .line 651
    :sswitch_75
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 652
    goto :goto_1a

    .line 654
    :sswitch_79
    const/16 v0, 0x8

    move v8, v0

    .line 655
    goto :goto_64

    .line 657
    :sswitch_7d
    const/16 v0, 0xc

    move v8, v0

    .line 658
    goto :goto_64

    .line 660
    :sswitch_81
    const/16 v0, 0xa

    move v8, v0

    .line 661
    goto :goto_64

    .line 663
    :sswitch_85
    const/16 v0, 0xd

    move v8, v0

    .line 664
    goto :goto_64

    .line 666
    :sswitch_89
    const/16 v0, 0x9

    move v8, v0

    .line 667
    goto :goto_64

    .line 669
    :sswitch_8d
    const/4 v5, 0x2

    .line 670
    const/4 v3, 0x0

    move v6, v3

    move v7, v5

    move v5, v3

    move-object v3, v4

    .line 671
    goto :goto_1a

    .line 674
    :cond_94
    sparse-switch v8, :sswitch_data_17e

    .line 726
    :cond_97
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 727
    const/4 v7, 0x3

    if-ne v3, v7, :cond_a1

    .line 728
    const/4 v3, 0x5

    .line 731
    :cond_a1
    if-eqz v2, :cond_14d

    if-eq v2, v1, :cond_14d

    const/4 v7, 0x5

    if-eq v3, v7, :cond_14d

    .line 732
    const/4 v7, -0x1

    if-ne v1, v7, :cond_104

    .line 735
    const/4 v3, 0x4

    move v7, v3

    move-object v3, v4

    .line 736
    goto/16 :goto_1a

    .line 677
    :sswitch_b0
    if-eqz v0, :cond_97

    .line 679
    :cond_b2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v7

    .line 680
    const/4 v8, -0x1

    if-eq v7, v8, :cond_14d

    .line 681
    int-to-char v7, v7

    .line 684
    const/16 v8, 0xd

    if-eq v7, v8, :cond_14d

    const/16 v8, 0xa

    if-ne v7, v8, :cond_b2

    move v7, v3

    move-object v3, v4

    .line 685
    goto/16 :goto_1a

    .line 692
    :sswitch_c6
    const/4 v7, 0x3

    if-ne v3, v7, :cond_ce

    .line 693
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 694
    goto/16 :goto_1a

    .line 698
    :cond_ce
    :sswitch_ce
    const/4 v3, 0x0

    .line 699
    const/4 v0, 0x1

    .line 700
    if-gtz v2, :cond_d6

    if-nez v2, :cond_ec

    if-nez v1, :cond_ec

    .line 701
    :cond_d6
    const/4 v7, -0x1

    if-ne v1, v7, :cond_da

    move v1, v2

    .line 704
    :cond_da
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v2}, Ljava/lang/String;-><init>([CII)V

    .line 705
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_ec
    const/4 v1, -0x1

    .line 709
    const/4 v2, 0x0

    move v7, v3

    move-object v3, v4

    .line 710
    goto/16 :goto_1a

    .line 712
    :sswitch_f2
    const/4 v7, 0x4

    if-ne v3, v7, :cond_f6

    move v1, v2

    .line 715
    :cond_f6
    const/4 v3, 0x1

    move v7, v3

    move-object v3, v4

    .line 716
    goto/16 :goto_1a

    .line 719
    :sswitch_fb
    const/4 v7, -0x1

    if-ne v1, v7, :cond_97

    .line 720
    const/4 v1, 0x0

    move-object v3, v4

    move v7, v1

    move v1, v2

    .line 722
    goto/16 :goto_1a

    :cond_104
    move v7, v3

    .line 739
    const/4 v0, 0x5

    if-eq v7, v0, :cond_10b

    const/4 v0, 0x3

    if-ne v7, v0, :cond_64

    .line 740
    :cond_10b
    const/4 v7, 0x0

    goto/16 :goto_64

    .line 750
    :cond_10e
    const/4 v0, 0x2

    if-ne v7, v0, :cond_11c

    const/4 v0, 0x4

    if-gt v5, v0, :cond_11c

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_11c
    const/4 v0, -0x1

    if-ne v1, v0, :cond_122

    if-lez v2, :cond_122

    move v1, v2

    .line 756
    :cond_122
    if-ltz v1, :cond_14c

    .line 757
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 758
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    const/4 v1, 0x1

    if-ne v7, v1, :cond_149

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    :cond_149
    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :cond_14c
    return-void

    :cond_14d
    move v7, v3

    move-object v3, v4

    goto/16 :goto_1a

    :cond_151
    move v2, v3

    move-object v3, v4

    goto/16 :goto_1a

    :cond_155
    move v3, v7

    goto/16 :goto_5d

    :cond_158
    move-object v4, v3

    goto/16 :goto_2f

    .line 646
    nop

    :sswitch_data_15c
    .sparse-switch
        0xa -> :sswitch_75
        0xd -> :sswitch_71
        0x62 -> :sswitch_79
        0x66 -> :sswitch_7d
        0x6e -> :sswitch_81
        0x72 -> :sswitch_85
        0x74 -> :sswitch_89
        0x75 -> :sswitch_8d
    .end sparse-switch

    .line 674
    :sswitch_data_17e
    .sparse-switch
        0xa -> :sswitch_c6
        0xd -> :sswitch_ce
        0x21 -> :sswitch_b0
        0x23 -> :sswitch_b0
        0x3a -> :sswitch_fb
        0x3d -> :sswitch_fb
        0x5c -> :sswitch_f2
    .end sparse-switch
.end method

.method protected static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/y;Landroid/content/Context;)V
    .registers 22

    .prologue
    .line 334
    const/4 v5, 0x0

    .line 335
    const/4 v1, 0x0

    .line 336
    const/4 v2, 0x0

    .line 337
    const/4 v4, 0x0

    .line 345
    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_138

    .line 348
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_b
    move-object/from16 v0, p9

    invoke-static {v3, v6, v7, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_5b
    .catchall {:try_start_b .. :try_end_10} :catchall_138

    move-result-object v6

    .line 363
    :goto_11
    :try_start_11
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_107

    move-result v4

    .line 365
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_de

    .line 368
    :try_start_19
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 370
    const-string v3, "SHA256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 372
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_2c} :catch_152
    .catchall {:try_start_19 .. :try_end_2c} :catchall_107

    .line 373
    :try_start_2c
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v3, v8}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2c .. :try_end_31} :catch_159
    .catchall {:try_start_2c .. :try_end_31} :catchall_13f

    .line 375
    :try_start_31
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_38} :catch_15f
    .catchall {:try_start_31 .. :try_end_38} :catchall_144

    .line 376
    const/16 v2, 0x2000

    :try_start_3a
    new-array v8, v2, [B

    .line 379
    const/4 v5, 0x0

    .line 380
    const/4 v2, 0x0

    .line 381
    :cond_3e
    :goto_3e
    invoke-virtual {v4, v8}, Ljava/security/DigestInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8b

    .line 382
    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_49} :catch_a6
    .catchall {:try_start_3a .. :try_end_49} :catchall_14a

    .line 383
    if-eqz p6, :cond_3e

    .line 384
    add-int/2addr v5, v9

    .line 386
    sub-int v9, v5, v2

    move/from16 v0, p7

    mul-int/lit16 v10, v0, 0x400

    if-lt v9, v10, :cond_3e

    .line 394
    :try_start_54
    move-object/from16 v0, p6

    invoke-interface {v0, p0, p1, v7, v5}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadProgress(Ljava/lang/String;III)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_59} :catch_64
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_54 .. :try_end_59} :catch_a6
    .catchall {:try_start_54 .. :try_end_59} :catchall_14a

    move v2, v5

    .line 400
    goto :goto_3e

    .line 358
    :catch_5b
    move-exception v6

    const/4 v6, 0x0

    :try_start_5d
    move-object/from16 v0, p9

    invoke-static {v3, p3, v6, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_138

    move-result-object v6

    goto :goto_11

    .line 396
    :catch_64
    move-exception v2

    .line 397
    :try_start_65
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got exception invoking IABTDownloadReceiver.onDownloadProgress() for package: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v0, v9, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v5

    .line 400
    goto :goto_3e

    .line 406
    :cond_8b
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 408
    invoke-static/range {p4 .. p4}, Lcom/absolute/android/crypt/HexUtilities;->GetBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_10d

    .line 411
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const-string v5, "Downloaded APK failed digest verification for algorithm: SHA256"

    const/4 v7, 0x0

    invoke-direct {v2, v5, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_a6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_65 .. :try_end_a6} :catch_a6
    .catchall {:try_start_65 .. :try_end_a6} :catchall_14a

    .line 418
    :catch_a6
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    :goto_a9
    :try_start_a9
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Downloaded APK for package: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "failed - unsupported digest verification algorithmSHA256"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_c5
    .catchall {:try_start_a9 .. :try_end_c5} :catchall_c5

    .line 430
    :catchall_c5
    move-exception v4

    move-object v5, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v2

    move-object v2, v6

    .line 431
    :goto_cb
    if-eqz v2, :cond_d0

    .line 432
    :try_start_cd
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_120

    .line 437
    :cond_d0
    :goto_d0
    if-eqz v3, :cond_d8

    .line 438
    :try_start_d2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 439
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d8} :catch_136

    .line 443
    :cond_d8
    :goto_d8
    if-eqz v5, :cond_122

    .line 444
    :try_start_da
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_128

    .line 430
    :cond_dd
    :goto_dd
    throw v1

    .line 423
    :cond_de
    :try_start_de
    move-object/from16 v0, p8

    invoke-static {v6, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/y;)Ljava/lang/String;

    move-result-object v7

    .line 424
    new-instance v8, Lorg/apache/http/client/HttpResponseException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Server returned error in response to download APK HTTP request for URL: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " response: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v4, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_107
    .catchall {:try_start_de .. :try_end_107} :catchall_107

    .line 430
    :catchall_107
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_cb

    .line 431
    :cond_10d
    if-eqz v6, :cond_112

    .line 432
    :try_start_10f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_12a

    .line 437
    :cond_112
    :goto_112
    if-eqz v1, :cond_11a

    .line 438
    :try_start_114
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 439
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11a} :catch_134

    .line 443
    :cond_11a
    :goto_11a
    if-eqz v4, :cond_12c

    .line 444
    :try_start_11c
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->close()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_132

    .line 450
    :cond_11f
    :goto_11f
    return-void

    :catch_120
    move-exception v2

    goto :goto_d0

    .line 446
    :cond_122
    if-eqz v4, :cond_dd

    .line 447
    :try_start_124
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_127} :catch_128

    goto :goto_dd

    :catch_128
    move-exception v2

    goto :goto_dd

    :catch_12a
    move-exception v2

    goto :goto_112

    .line 446
    :cond_12c
    if-eqz v3, :cond_11f

    .line 447
    :try_start_12e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_11f

    :catch_132
    move-exception v1

    goto :goto_11f

    :catch_134
    move-exception v1

    goto :goto_11a

    :catch_136
    move-exception v2

    goto :goto_d8

    .line 430
    :catchall_138
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v11

    goto :goto_cb

    :catchall_13f
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_cb

    :catchall_144
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_cb

    :catchall_14a
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto/16 :goto_cb

    .line 418
    :catch_152
    move-exception v3

    move-object v3, v5

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_a9

    :catch_159
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_a9

    :catch_15f
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_a9
.end method
