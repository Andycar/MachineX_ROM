.class public Lcom/android/settings/handwritingsearch/RMHelper;
.super Ljava/lang/Object;
.source "RMHelper.java"


# static fields
.field private static final PATH_SEPARATOR:Ljava/lang/String;


# instance fields
.field private final client:Landroid/content/ContentProviderClient;

.field private final cr:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/handwritingsearch/RMHelper;->PATH_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/RMHelper;->cr:Landroid/content/ContentResolver;

    .line 30
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/RMHelper;->cr:Landroid/content/ContentResolver;

    const-string v1, "com.visionobjects.resourcemanager"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/RMHelper;->client:Landroid/content/ContentProviderClient;

    .line 31
    return-void
.end method


# virtual methods
.method public getLangList()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;

    .line 41
    .local v9, "langList":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/RMHelper;->client:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 45
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 46
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 47
    const/4 v7, 0x0

    .line 48
    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "lang"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "lang":Ljava/lang/String;
    aput-object v8, v9, v7

    .line 52
    add-int/lit8 v7, v7, 0x1

    .line 53
    goto :goto_0

    .line 54
    .end local v8    # "lang":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "i":I
    :cond_1
    :goto_1
    return-object v9

    .line 57
    :catch_0
    move-exception v0

    goto :goto_1
.end method
