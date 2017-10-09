.class public Lcom/android/server/HarmonyEASService;
.super Landroid/content/IHarmonyEAS$Stub;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HarmonyEASService$PackageHandler;,
        Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    }
.end annotation


# static fields
.field public static final HARMONY_EAS_SERVICE:Ljava/lang/String; = "harmony_eas_service"

.field private static final HARMONY_THIRDPARTY_APP_FILES:Ljava/lang/String; = "harmony_third_party_apps.xml"

.field private static final HARMONY_THIRDPARTY_APP_FILE_PATH:Ljava/lang/String; = "/data/system/harmony_third_party_apps.xml"

.field private static final SYSTEM_SECURE_DIR:Ljava/lang/String; = "/data/system/"

.field private static final TAG:Ljava/lang/String; = "HarmonyEASService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageHandler:Landroid/os/Handler;

.field mUserMgr:Landroid/os/UserManager;

.field private final mUserToAppMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-direct {p0}, Landroid/content/IHarmonyEAS$Stub;-><init>()V

    .line 72
    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    .line 107
    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/android/server/HarmonyEASService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$1;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Lcom/android/server/HarmonyEASService$PackageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$PackageHandler;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    .line 145
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    .line 147
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HarmonyEASService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/HarmonyEASService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->saveHash(I)V

    return-void
.end method

.method private declared-synchronized addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hashValue"    # Ljava/lang/String;
    .param p3, "userID"    # I

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 241
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 245
    monitor-exit p0

    return-void

    .line 239
    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized addPackageAsUnknown(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    .line 192
    monitor-enter p0

    const/4 v1, 0x0

    .line 194
    .local v1, "needXMLUpdate":Z
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 195
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .line 197
    .local v2, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 199
    const/4 v1, 0x1

    .line 201
    :cond_17
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    if-eqz v1, :cond_29

    .line 203
    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2b

    .line 204
    :cond_29
    monitor-exit p0

    return-void

    .line 192
    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .end local v2    # "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_1
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    .line 492
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-nez v0, :cond_16

    .line 493
    new-instance v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;-><init>(Lcom/android/server/HarmonyEASService$1;)V

    .line 494
    .restart local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    :cond_16
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_25

    .line 498
    invoke-direct {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V

    .line 500
    :cond_25
    monitor-exit p0

    return-object v0

    .line 501
    .end local v0    # "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V
    .registers 20
    .param p1, "appDetails"    # Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .param p2, "userHandle"    # I

    .prologue
    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static/range {p2 .. p2}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .line 350
    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .line 351
    .local v11, "thirdPartyPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    .line 352
    .local v5, "hashValueToPkgNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .line 355
    .local v13, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_11
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_d3
    .catchall {:try_start_11 .. :try_end_1a} :catchall_d1

    .line 356
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    if-nez v3, :cond_23

    .line 406
    if-eqz v3, :cond_21

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_cc

    :cond_21
    :goto_21
    move-object v2, v3

    .line 409
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_22
    :goto_22
    return-void

    .line 358
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_23
    :try_start_23
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 359
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v9, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 363
    :cond_2b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_35

    const/4 v14, 0x2

    if-ne v12, v14, :cond_2b

    .line 366
    :cond_35
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 367
    .local v10, "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 368
    .local v4, "hash":Ljava/lang/String;
    const/4 v6, 0x0

    .line 369
    .local v6, "isUnsigned":Z
    const-string/jumbo v14, "third-party-apps"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6a

    .line 371
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "harmony eas settings do not start with proper tag: found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5d} :catch_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_b5

    .line 402
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "isUnsigned":Z
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_5d
    move-exception v1

    move-object v2, v3

    .line 403
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_d1

    .line 406
    if-eqz v2, :cond_22

    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_22

    .line 407
    :catch_68
    move-exception v14

    goto :goto_22

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "isUnsigned":Z
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_6a
    :try_start_6a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 376
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 377
    .local v8, "outerDepth":I
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 378
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 381
    :cond_78
    :goto_78
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_c0

    const/4 v14, 0x3

    if-ne v12, v14, :cond_88

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_c0

    .line 384
    :cond_88
    const/4 v14, 0x3

    if-eq v12, v14, :cond_78

    const/4 v14, 0x4

    if-eq v12, v14, :cond_78

    .line 387
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 388
    const/4 v14, 0x0

    const-string v15, "hash"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    const/4 v14, 0x0

    const-string v15, "isUnsigned"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 391
    monitor-enter p0
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a5} :catch_5d
    .catchall {:try_start_6a .. :try_end_a5} :catchall_b5

    .line 393
    :try_start_a5
    invoke-virtual {v11, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    if-eqz v6, :cond_b0

    .line 396
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_bd

    .line 400
    :try_start_b1
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_5d
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_78

    .line 405
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "isUnsigned":Z
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "type":I
    :catchall_b5
    move-exception v14

    move-object v2, v3

    .line 406
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_b7
    if-eqz v2, :cond_bc

    :try_start_b9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_cf

    .line 407
    :cond_bc
    :goto_bc
    throw v14

    .line 398
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "isUnsigned":Z
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v12    # "type":I
    :catchall_bd
    move-exception v14

    :try_start_be
    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw v14
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c0} :catch_5d
    .catchall {:try_start_bf .. :try_end_c0} :catchall_b5

    .line 406
    :cond_c0
    if-eqz v3, :cond_c5

    :try_start_c2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c8

    :cond_c5
    move-object v2, v3

    .line 407
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_22

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_c8
    move-exception v14

    move-object v2, v3

    .line 408
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_22

    .line 407
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "isUnsigned":Z
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "type":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_cc
    move-exception v14

    goto/16 :goto_21

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_cf
    move-exception v15

    goto :goto_bc

    .line 405
    :catchall_d1
    move-exception v14

    goto :goto_b7

    .line 402
    :catch_d3
    move-exception v1

    goto :goto_5f
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userHandle"    # I

    .prologue
    .line 279
    if-nez p0, :cond_27

    const-string v0, "/data/system/harmony_third_party_apps.xml"

    .line 284
    .local v0, "base":Ljava/lang/String;
    :goto_4
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 279
    .end local v0    # "base":Ljava/lang/String;
    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "harmony_third_party_apps.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private saveHash(I)V
    .registers 22
    .param p1, "userHandle"    # I

    .prologue
    .line 293
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v3

    .line 295
    .local v3, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v15, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .line 296
    .local v15, "thirdPartyPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    .line 299
    .local v16, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 300
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 301
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    invoke-static/range {p1 .. p1}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v13

    .line 303
    .local v13, "journal":Lcom/android/internal/util/JournaledFile;
    :try_start_10
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_f9
    .catchall {:try_start_10 .. :try_end_1f} :catchall_e2

    .line 304
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_1f
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_fb
    .catchall {:try_start_1f .. :try_end_24} :catchall_f0

    .line 305
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    :try_start_24
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 306
    .local v14, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v17, "utf-8"

    move-object/from16 v0, v17

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 307
    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 308
    const-string v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 310
    const/16 v17, 0x0

    const-string/jumbo v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 312
    .local v12, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 313
    .local v7, "currPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 314
    .local v6, "currHash":Ljava/lang/String;
    const/4 v11, 0x0

    .line 315
    .local v11, "isUnsigned":Z
    :goto_62
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b9

    .line 316
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "currPackage":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 317
    .restart local v7    # "currPackage":Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "currHash":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 318
    .restart local v6    # "currHash":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 319
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    const/16 v17, 0x0

    const-string v18, "hash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    const/16 v17, 0x0

    const-string v18, "isUnsigned"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_a4} :catch_a5
    .catchall {:try_start_24 .. :try_end_a4} :catchall_f3

    goto :goto_62

    .line 330
    .end local v6    # "currHash":Ljava/lang/String;
    .end local v7    # "currPackage":Ljava/lang/String;
    .end local v11    # "isUnsigned":Z
    .end local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_a5
    move-exception v8

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 331
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_a8
    :try_start_a8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_e2

    .line 335
    if-eqz v4, :cond_b3

    :try_start_b0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 336
    :cond_b3
    if-eqz v9, :cond_b8

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b8} :catch_f7

    .line 339
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b8
    :goto_b8
    return-void

    .line 324
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "currHash":Ljava/lang/String;
    .restart local v7    # "currPackage":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "isUnsigned":Z
    .restart local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_b9
    const/16 v17, 0x0

    :try_start_bb
    const-string/jumbo v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 327
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 328
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 329
    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d1} :catch_a5
    .catchall {:try_start_bb .. :try_end_d1} :catchall_f3

    .line 335
    if-eqz v5, :cond_d6

    :try_start_d3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 336
    :cond_d6
    if-eqz v10, :cond_db

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_db} :catch_de

    :cond_db
    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 337
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b8

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_de
    move-exception v17

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 338
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b8

    .line 334
    .end local v6    # "currHash":Ljava/lang/String;
    .end local v7    # "currPackage":Ljava/lang/String;
    .end local v11    # "isUnsigned":Z
    .end local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_e2
    move-exception v17

    .line 335
    :goto_e3
    if-eqz v4, :cond_e8

    :try_start_e5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 336
    :cond_e8
    if-eqz v9, :cond_ed

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ed} :catch_ee

    .line 337
    :cond_ed
    :goto_ed
    throw v17

    :catch_ee
    move-exception v18

    goto :goto_ed

    .line 334
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_f0
    move-exception v17

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_e3

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_f3
    move-exception v17

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_e3

    .line 337
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_f7
    move-exception v17

    goto :goto_b8

    .line 330
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_f9
    move-exception v8

    goto :goto_a8

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_fb
    move-exception v8

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_a8
.end method


# virtual methods
.method clearDataForUser(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 505
    monitor-enter p0

    .line 507
    if-nez p1, :cond_5

    .line 508
    :try_start_3
    monitor-exit p0

    .line 516
    :goto_4
    return-void

    .line 510
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v0, "thirdPartyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 513
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 514
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 515
    :cond_20
    monitor-exit p0

    goto :goto_4

    .end local v0    # "thirdPartyFile":Ljava/io/File;
    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getHashValueFromPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 426
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 427
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 429
    .local v1, "hashValue":Ljava/lang/String;
    :goto_f
    if-eqz v1, :cond_15

    .end local v1    # "hashValue":Ljava/lang/String;
    :goto_11
    return-object v1

    .line 427
    :cond_12
    const-string v1, ""

    goto :goto_f

    .line 429
    .restart local v1    # "hashValue":Ljava/lang/String;
    :cond_15
    const-string v1, ""

    goto :goto_11
.end method

.method public getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "hashValue"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 418
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 419
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 421
    .local v1, "pkgName":Ljava/lang/String;
    :goto_f
    if-eqz v1, :cond_15

    .end local v1    # "pkgName":Ljava/lang/String;
    :goto_11
    return-object v1

    .line 419
    :cond_12
    const-string v1, ""

    goto :goto_f

    .line 421
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_15
    const-string v1, ""

    goto :goto_11
.end method

.method public getThirdPartyApps(I)Ljava/util/List;
    .registers 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 483
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    .local v1, "thirdPartyAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method public getUnknownSourcesPackages(I)Ljava/util/List;
    .registers 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 256
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method handlePackagesChanged(I)V
    .registers 12
    .param p1, "userHandle"    # I

    .prologue
    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, "isAnyPackageRemoved":Z
    const/4 v3, 0x0

    .line 532
    .local v3, "isCurrentPackageRemoved":Z
    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 534
    .local v5, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 535
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 537
    .local v4, "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 538
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_36

    .line 540
    .local v0, "currPackage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 543
    const/4 v6, 0x0

    :try_start_25
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_28} :catch_39
    .catchall {:try_start_25 .. :try_end_28} :catchall_36

    move-result-object v6

    if-nez v6, :cond_2d

    .line 544
    const/4 v3, 0x1

    .line 545
    const/4 v2, 0x1

    .line 553
    :cond_2d
    :goto_2d
    if-eqz v3, :cond_17

    .line 558
    :try_start_2f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    .line 559
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 565
    .end local v0    # "currPackage":Ljava/lang/String;
    .end local v4    # "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_36
    move-exception v6

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_36

    throw v6

    .line 547
    .restart local v0    # "currPackage":Ljava/lang/String;
    .restart local v4    # "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_39
    move-exception v1

    .line 549
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x1

    .line 550
    const/4 v2, 0x1

    goto :goto_2d

    .line 563
    .end local v0    # "currPackage":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3d
    if-eqz v2, :cond_4c

    .line 564
    :try_start_3f
    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_36

    .line 566
    return-void
.end method

.method declared-synchronized handleUserChanged(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 521
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 523
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 525
    :cond_e
    monitor-exit p0

    return-void

    .line 521
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPackageUnknownSource(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, "result":Z
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 271
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 272
    const/4 v1, 0x1

    .line 274
    :cond_e
    return v1
.end method

.method public removeInstallationPackage(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_35

    .line 439
    const/4 v3, -0x1

    if-ne p2, v3, :cond_32

    .line 440
    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v3, :cond_35

    .line 441
    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 442
    .local v2, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 443
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    goto :goto_20

    .line 447
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    .line 450
    :cond_35
    return-void
.end method

.method public removeInstallationPackageExtras(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 458
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 460
    .local v0, "appDetails":Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .line 461
    .local v2, "thirdPartyPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    .line 462
    .local v1, "hashValueToPkgNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .line 464
    .local v3, "unknownPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-enter p0

    .line 465
    :try_start_b
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 466
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_18
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 469
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 470
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_30

    .line 472
    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    return-void

    .line 470
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v4
.end method

.method public setInstallationPackageHashValue(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hashValue"    # Ljava/lang/String;
    .param p3, "source"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 214
    const/4 v4, 0x1

    if-eq v4, p3, :cond_4

    .line 235
    :cond_3
    :goto_3
    return-void

    .line 217
    :cond_4
    const/4 v1, 0x0

    .line 218
    .local v1, "updateForAllUsers":Z
    const/4 v3, 0x0

    .line 220
    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v4, -0x1

    if-ne v4, p4, :cond_17

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_17

    .line 221
    const/4 v1, 0x1

    .line 223
    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 226
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_17
    if-eqz v1, :cond_4b

    .line 227
    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 229
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_39

    .line 233
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4b
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3
.end method

.method public setInstallationPackageUnknown(Ljava/lang/String;II)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 166
    const/4 v4, 0x1

    if-eq v4, p2, :cond_4

    .line 187
    :cond_3
    :goto_3
    return-void

    .line 169
    :cond_4
    const/4 v1, 0x0

    .line 170
    .local v1, "updateForAllUsers":Z
    const/4 v3, 0x0

    .line 172
    .local v3, "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v4, -0x1

    if-ne v4, p3, :cond_17

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_17

    .line 173
    const/4 v1, 0x1

    .line 175
    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 178
    .restart local v3    # "userInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_17
    if-eqz v1, :cond_4b

    .line 179
    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 181
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_39

    .line 185
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4b
    invoke-direct {p0, p1, p3}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_3
.end method
