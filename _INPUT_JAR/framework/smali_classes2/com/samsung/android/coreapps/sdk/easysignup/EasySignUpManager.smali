.class public Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;
.super Ljava/lang/Object;
.source "EasySignUpManager.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup"

.field private static final AUTHORITY_PUBLIC:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.public"

.field private static final BASE_CONTENT_URI:Landroid/net/Uri;

.field private static final BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

.field public static final SERVICE_ID_CIRCLE:I = 0x5

.field public static final SERVICE_ID_CONTACT:I = 0x0

.field public static final SERVICE_ID_ESU:I = 0x4

.field public static final SERVICE_ID_FREE_MESSAGE:I = 0x1

.field public static final SERVICE_ID_MVOIP:I = 0x6

.field public static final SERVICE_ID_RSHARE:I = 0x2

.field public static final SERVICE_ID_SHOP:I = 0x3

.field public static final SERVICE_OFF:I = 0x0

.field public static final SERVICE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "content://com.samsung.android.coreapps.easysignup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "content://com.samsung.android.coreapps.easysignup.public"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMsisdn(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 271
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    const-string v2, "getMsisdn"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v7, 0x0

    .line 275
    .local v7, "msisdn":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 277
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "msisdn"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_43

    :try_start_2d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_43

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 280
    const-string v0, "msisdn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_49

    move-result-object v7

    .line 282
    :cond_43
    if-eqz v6, :cond_48

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_48
    return-object v7

    .line 282
    :catchall_49
    move-exception v0

    if-eqz v6, :cond_4f

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v0
.end method

.method public static getMsisdn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 298
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    const-string v2, "getMsisdn with imsi"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v7, 0x0

    .line 302
    .local v7, "msisdn":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 304
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "msisdn"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 306
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_49

    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_49

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 307
    const-string v0, "msisdn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_4f

    move-result-object v7

    .line 309
    :cond_49
    if-eqz v6, :cond_4e

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_4e
    return-object v7

    .line 309
    :catchall_4f
    move-exception v0

    if-eqz v6, :cond_55

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v0
.end method

.method public static declared-synchronized getServiceStatus(Landroid/content/Context;I)I
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    .line 106
    const-class v13, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;

    monitor-enter v13

    const/4 v12, 0x0

    .line 108
    .local v12, "status":I
    const/4 v6, 0x0

    .line 110
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_5
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_ab

    move-result-object v1

    .line 113
    .local v1, "uri":Landroid/net/Uri;
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    if-eqz v6, :cond_7c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 116
    const-string/jumbo v0, "sids"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 118
    .local v11, "sids":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 119
    const-string v0, "\\["

    const-string v2, ""

    invoke-virtual {v11, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "items":[Ljava/lang/String;
    array-length v0, v8

    new-array v10, v0, [I

    .line 123
    .local v10, "results":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_62
    array-length v0, v8
    :try_end_63
    .catchall {:try_start_15 .. :try_end_63} :catchall_a4

    if-ge v7, v0, :cond_70

    .line 125
    :try_start_65
    aget-object v0, v8, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v10, v7
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_6d} :catch_cd
    .catchall {:try_start_65 .. :try_end_6d} :catchall_a4

    .line 123
    :goto_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    .line 129
    :cond_70
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_71
    :try_start_71
    array-length v0, v10

    if-ge v9, v0, :cond_7c

    .line 130
    aget v0, v10, v9
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_a4

    if-ne p1, v0, :cond_79

    .line 131
    const/4 v12, 0x1

    .line 129
    :cond_79
    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    .line 137
    .end local v7    # "i":I
    .end local v8    # "items":[Ljava/lang/String;
    .end local v9    # "j":I
    .end local v10    # "results":[I
    .end local v11    # "sids":Ljava/lang/String;
    :cond_7c
    if-eqz v6, :cond_81

    .line 138
    :try_start_7e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_81
    const/4 v0, 0x1

    if-ne v12, v0, :cond_ae

    .line 143
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus : serviceId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_7e .. :try_end_a2} :catchall_ab

    .line 148
    :goto_a2
    monitor-exit v13

    return v12

    .line 137
    :catchall_a4
    move-exception v0

    if-eqz v6, :cond_aa

    .line 138
    :try_start_a7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_aa
    throw v0
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_ab

    .line 106
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_ab
    move-exception v0

    monitor-exit v13

    throw v0

    .line 145
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_ae
    :try_start_ae
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus : serviceId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_ae .. :try_end_cc} :catchall_ab

    goto :goto_a2

    .line 126
    .restart local v7    # "i":I
    .restart local v8    # "items":[Ljava/lang/String;
    .restart local v10    # "results":[I
    .restart local v11    # "sids":Ljava/lang/String;
    :catch_cd
    move-exception v0

    goto :goto_6d
.end method

.method public static declared-synchronized getServiceStatus(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "serviceId"    # I

    .prologue
    .line 160
    const-class v14, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;

    monitor-enter v14

    const/4 v13, 0x0

    .line 161
    .local v13, "status":I
    const/4 v7, 0x0

    .line 163
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_5
    sget-object v1, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "auth"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "imsi"

    move-object/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_b7

    move-result-object v2

    .line 166
    .local v2, "uri":Landroid/net/Uri;
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "sids"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 168
    if-eqz v7, :cond_86

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_86

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 169
    const-string/jumbo v1, "sids"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "sids":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 172
    const-string v1, "\\["

    const-string v3, ""

    invoke-virtual {v12, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "items":[Ljava/lang/String;
    array-length v1, v9

    new-array v11, v1, [I

    .line 176
    .local v11, "results":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6a
    array-length v1, v9
    :try_end_6b
    .catchall {:try_start_1d .. :try_end_6b} :catchall_b0

    if-ge v8, v1, :cond_78

    .line 178
    :try_start_6d
    aget-object v1, v9, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v11, v8
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_75} :catch_db
    .catchall {:try_start_6d .. :try_end_75} :catchall_b0

    .line 176
    :goto_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 182
    :cond_78
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_79
    :try_start_79
    array-length v1, v11

    if-ge v10, v1, :cond_86

    .line 183
    aget v1, v11, v10
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_b0

    move/from16 v0, p2

    if-ne v0, v1, :cond_83

    .line 184
    const/4 v13, 0x1

    .line 182
    :cond_83
    add-int/lit8 v10, v10, 0x1

    goto :goto_79

    .line 190
    .end local v8    # "i":I
    .end local v9    # "items":[Ljava/lang/String;
    .end local v10    # "j":I
    .end local v11    # "results":[I
    .end local v12    # "sids":Ljava/lang/String;
    :cond_86
    if-eqz v7, :cond_8b

    .line 191
    :try_start_88
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_8b
    const/4 v1, 0x1

    if-ne v13, v1, :cond_ba

    .line 196
    sget-object v1, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceStatus : serviceId ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is ON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_88 .. :try_end_ae} :catchall_b7

    .line 201
    :goto_ae
    monitor-exit v14

    return v13

    .line 190
    :catchall_b0
    move-exception v1

    if-eqz v7, :cond_b6

    .line 191
    :try_start_b3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b6
    throw v1
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_b7

    .line 160
    .end local v2    # "uri":Landroid/net/Uri;
    :catchall_b7
    move-exception v1

    monitor-exit v14

    throw v1

    .line 198
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_ba
    :try_start_ba
    sget-object v1, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceStatus : serviceId ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_ba .. :try_end_da} :catchall_b7

    goto :goto_ae

    .line 179
    .restart local v8    # "i":I
    .restart local v9    # "items":[Ljava/lang/String;
    .restart local v11    # "results":[I
    .restart local v12    # "sids":Ljava/lang/String;
    :catch_db
    move-exception v1

    goto :goto_75
.end method

.method public static getSupportedFeatures(Landroid/content/Context;I)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    const/4 v3, 0x0

    .line 211
    const/4 v8, -0x1

    .line 213
    .local v8, "features":I
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    const-string v2, "features"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 214
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 216
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "features"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3c

    :try_start_26
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 221
    const-string v0, "features"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_65

    move-result v8

    .line 224
    :cond_3c
    if-eqz v7, :cond_41

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_41
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", features : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v8

    .line 224
    :catchall_65
    move-exception v0

    if-eqz v7, :cond_6b

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6b
    throw v0
.end method

.method public static isAuth(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 46
    const/4 v6, 0x0

    .line 48
    .local v6, "bIsAuth":Z
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "is_auth"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 52
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_26

    :try_start_1f
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_35

    move-result v0

    if-lez v0, :cond_26

    .line 53
    const/4 v6, 0x1

    .line 55
    :cond_26
    if-eqz v7, :cond_2b

    .line 56
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_2b
    if-eqz v6, :cond_3c

    .line 61
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    const-string v2, "isAuth is true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_34
    return v6

    .line 55
    :catchall_35
    move-exception v0

    if-eqz v7, :cond_3b

    .line 56
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v0

    .line 63
    :cond_3c
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    const-string v2, "isAuth is false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public static isAuth(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 76
    const/4 v6, 0x0

    .line 78
    .local v6, "bIsAuth":Z
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "is_auth"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "imsi"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2c

    :try_start_25
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3b

    move-result v0

    if-lez v0, :cond_2c

    .line 83
    const/4 v6, 0x1

    .line 85
    :cond_2c
    if-eqz v7, :cond_31

    .line 86
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_31
    if-eqz v6, :cond_42

    .line 91
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    const-string v2, "isAuth regarding imsi is true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_3a
    return v6

    .line 85
    :catchall_3b
    move-exception v0

    if-eqz v7, :cond_41

    .line 86
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0

    .line 93
    :cond_42
    sget-object v0, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    const-string v2, "isAuth regarding imsi is false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public static serviceOff(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    .line 255
    sget-object v1, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceOff - serviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.coreapps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public static serviceOn(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    .line 240
    sget-object v1, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceOn - serviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.coreapps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    return-void
.end method
