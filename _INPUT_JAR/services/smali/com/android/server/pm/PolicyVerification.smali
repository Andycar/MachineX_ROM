.class public final Lcom/android/server/pm/PolicyVerification;
.super Ljava/lang/Object;
.source "PolicyVerification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PolicyVerification$PolicyVerify;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PolicyVerification"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static compareHashValue()Z
    .registers 5

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 121
    .local v0, "retVal":Z
    const/4 v2, 0x4

    :try_start_2
    invoke-static {v2}, Landroid/os/SELinux;->compareHashValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    const/4 v0, 0x1

    .line 130
    :goto_9
    return v0

    .line 124
    :cond_a
    const-string v2, "PolicyVerification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compareHashValue Fail - retVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_9

    .line 126
    :catch_23
    move-exception v1

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PolicyVerification"

    const-string v3, "Exception in compareHashValue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method private static fileRead(Ljava/lang/String;)[B
    .registers 11
    .param p0, "szFile"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "bytearray":[B
    const/4 v3, 0x0

    .line 79
    .local v3, "fileinputstream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_2b
    .catchall {:try_start_2 .. :try_end_7} :catchall_42

    .line 80
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .local v4, "fileinputstream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 81
    .local v5, "numberBytes":I
    new-array v0, v5, [B

    .line 82
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 83
    .local v6, "readBytes":I
    if-eq v6, v5, :cond_1a

    .line 84
    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_55
    .catchall {:try_start_7 .. :try_end_1a} :catchall_52

    .line 90
    :cond_1a
    if-eqz v4, :cond_1f

    .line 91
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    :cond_1f
    move-object v3, v4

    .line 97
    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .end local v5    # "numberBytes":I
    .end local v6    # "readBytes":I
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    :cond_20
    :goto_20
    return-object v0

    .line 92
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v5    # "numberBytes":I
    .restart local v6    # "readBytes":I
    :catch_21
    move-exception v2

    .line 93
    .local v2, "ei":Ljava/io/IOException;
    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 95
    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_20

    .line 86
    .end local v2    # "ei":Ljava/io/IOException;
    .end local v5    # "numberBytes":I
    .end local v6    # "readBytes":I
    :catch_2b
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    :goto_2c
    :try_start_2c
    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_42

    .line 90
    if-eqz v3, :cond_20

    .line 91
    :try_start_35
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_20

    .line 92
    :catch_39
    move-exception v2

    .line 93
    .restart local v2    # "ei":Ljava/io/IOException;
    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ei":Ljava/io/IOException;
    :catchall_42
    move-exception v7

    .line 90
    :goto_43
    if-eqz v3, :cond_48

    .line 91
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 94
    :cond_48
    :goto_48
    throw v7

    .line 92
    :catch_49
    move-exception v2

    .line 93
    .restart local v2    # "ei":Ljava/io/IOException;
    const-string v8, "PolicyVerification"

    const-string v9, "File Close Error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 89
    .end local v2    # "ei":Ljava/io/IOException;
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    :catchall_52
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_43

    .line 86
    .end local v3    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v4    # "fileinputstream":Ljava/io/FileInputStream;
    :catch_55
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileinputstream":Ljava/io/FileInputStream;
    .restart local v3    # "fileinputstream":Ljava/io/FileInputStream;
    goto :goto_2c
.end method

.method public static verifySEAndroidPolicy()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySignature()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->compareHashValue()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f

    move-result v2

    if-eqz v2, :cond_e

    .line 63
    const/4 v1, 0x1

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :cond_e
    :goto_e
    return v1

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private static verifySignature()Z
    .registers 5

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 105
    .local v0, "retVal":Z
    :try_start_1
    invoke-static {}, Landroid/os/SELinux;->verifySignature()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 106
    const/4 v0, 0x1

    .line 114
    :goto_8
    return v0

    .line 108
    :cond_9
    const-string v2, "PolicyVerification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verify Signature Fail - retVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_22

    goto :goto_8

    .line 110
    :catch_22
    move-exception v1

    .line 111
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PolicyVerification"

    const-string v3, "Exception in verifySignature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8
.end method
