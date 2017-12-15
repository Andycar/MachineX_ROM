.class public Landroid/app/BluetoothSecureManagerService;
.super Landroid/bluetooth/IBluetoothSecureManagerService$Stub;
.source "BluetoothSecureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BluetoothSecureManagerService$1;,
        Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final DBG:Z = true

.field public static final Name:Ljava/lang/String; = "bluetooth_secure_mode_manager"

.field public static final SECURE_MANAGER_ENABLE:Ljava/lang/String; = "secure_mode_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_ENABLE:Ljava/lang/String; = "white_list_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_MAX:Ljava/lang/String; = "white_list_max_index"

.field public static final SECURE_MANAGER_WHITE_LIST_PREFIX:Ljava/lang/String; = "white_list"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManagerService"


# instance fields
.field private final SECURE_CONFIG_PATH:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPrefs:Landroid/app/SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/bt_secure_manager_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    .line 199
    iput-object p1, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    .line 200
    new-instance v0, Landroid/app/SharedPreferencesImpl;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    .line 201
    return-void
.end method

.method private enforcePermission()V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.BLUETOOTH_SECUREMODE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private final findWhiteListFreeIndex()I
    .registers 7

    .prologue
    .line 223
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 225
    .local v2, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    if-gt v0, v2, :cond_19

    .line 226
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 230
    .end local v1    # "key":Ljava/lang/String;
    :cond_19
    return v0

    .line 225
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private final findWhiteListIndex(Ljava/lang/String;I)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I

    .prologue
    .line 211
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 212
    .local v2, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    if-gt v0, v2, :cond_4b

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "white_list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 215
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v3

    .line 216
    .local v3, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v3, :cond_48

    iget-object v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    iget v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    if-ne v4, p2, :cond_48

    .line 220
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    :goto_47
    return v0

    .line 212
    .restart local v0    # "i":I
    .restart local v1    # "key":Ljava/lang/String;
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 220
    .end local v1    # "key":Ljava/lang/String;
    :cond_4b
    const/4 v0, -0x1

    goto :goto_47
.end method

.method public static final getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "valueName"    # Ljava/lang/String;

    .prologue
    .line 208
    return-object p0
.end method

.method private final getWhiteListKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "white_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .param p3, "uuids"    # [Ljava/lang/String;

    .prologue
    const/16 v6, 0x3b

    .line 236
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x100

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 237
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1c
    if-ge v1, v2, :cond_29

    aget-object v4, v0, v1

    .line 242
    .local v4, "u":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 245
    .end local v4    # "u":Ljava/lang/String;
    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private final unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    .registers 12
    .param p1, "packedValues"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 253
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "values":[Ljava/lang/String;
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unpackWhiteListValue v: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; split len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    array-length v5, v3

    if-nez v5, :cond_32

    move-object v2, v4

    .line 268
    :cond_31
    return-object v2

    .line 257
    :cond_32
    new-instance v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    invoke-direct {v2, v4}, Landroid/app/BluetoothSecureManagerService$WhiteListValue;-><init>(Landroid/app/BluetoothSecureManagerService$1;)V

    .line 258
    .local v2, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    array-length v4, v3

    if-lt v4, v8, :cond_3f

    .line 259
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    .line 260
    :cond_3f
    array-length v4, v3

    if-lt v4, v9, :cond_4c

    .line 261
    aget-object v4, v3, v8

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    .line 262
    :cond_4c
    array-length v4, v3

    if-le v4, v9, :cond_31

    .line 263
    array-length v4, v3

    add-int/lit8 v1, v4, -0x2

    .line 264
    .local v1, "size":I
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    .line 265
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_57
    array-length v4, v3

    if-ge v0, v4, :cond_31

    .line 266
    iget-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x2

    aget-object v6, v3, v0

    aput-object v6, v4, v5

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_57
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .param p3, "uuids"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 364
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addWhiteList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; cod: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-nez p3, :cond_2d

    .line 367
    const-string v5, "BluetoothSecureManagerService"

    const-string v6, "addWhiteList: uuids is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_2c
    return v4

    .line 372
    :cond_2d
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList: uuids: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    .line 380
    monitor-enter p0

    .line 381
    :try_start_4d
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "BluetoothSecureManagerService"

    const-string v5, "addWhiteList 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v1

    .line 385
    .local v1, "index":I
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList findWhiteListIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-gez v1, :cond_7c

    .line 387
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->findWhiteListFreeIndex()I

    move-result v1

    .line 388
    :cond_7c
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 389
    .local v2, "max":I
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList max index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-le v1, v2, :cond_a6

    .line 391
    const-string/jumbo v4, "white_list_max_index"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    :cond_a6
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BluetoothSecureManagerService;->packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "v":Ljava/lang/String;
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; packed v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_2c

    .line 396
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "index":I
    .end local v2    # "max":I
    .end local v3    # "v":Ljava/lang/String;
    :catchall_db
    move-exception v4

    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_4d .. :try_end_dd} :catchall_db

    throw v4
.end method

.method public enableSecureMode(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 276
    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSecureMode enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo v1, "secure_mode_enable"

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p0, v1, v0}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public enableWhiteList(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 340
    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWhiteList, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string/jumbo v1, "white_list_enable"

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p0, v1, v0}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .registers 7
    .param p1, "valueName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 300
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureModeSetting, name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_19
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_23} :catch_25

    move-result v1

    .line 311
    :goto_24
    return v1

    .line 308
    :catch_25
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureModeSetting name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public getWhiteListCod(I)I
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 494
    const-string v2, "BluetoothSecureManagerService"

    const-string v3, "getWhiteListCod"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "values":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 502
    .local v0, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_1c

    .line 503
    iget v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    .line 504
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public getWhiteListFirstIndex()I
    .registers 7

    .prologue
    .line 431
    const-string v3, "BluetoothSecureManagerService"

    const-string v4, "getWhiteListFirstIndex"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-enter p0

    .line 438
    :try_start_8
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 439
    .local v2, "max":I
    const-string v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWhiteListFirstIndex: max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2b
    if-gt v0, v2, :cond_3e

    .line 441
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 443
    monitor-exit p0

    .line 445
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    :goto_3a
    return v0

    .line 440
    .restart local v0    # "i":I
    .restart local v1    # "key":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 445
    .end local v1    # "key":Ljava/lang/String;
    :cond_3e
    const/4 v0, -0x1

    monitor-exit p0

    goto :goto_3a

    .line 446
    .end local v0    # "i":I
    .end local v2    # "max":I
    :catchall_41
    move-exception v3

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v3
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 476
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhiteListName, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "values":Ljava/lang/String;
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhiteListName, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 485
    .local v0, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_4f

    .line 486
    iget-object v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    .line 487
    :goto_4e
    return-object v2

    :cond_4f
    const/4 v2, 0x0

    goto :goto_4e
.end method

.method public getWhiteListNextIndex(I)I
    .registers 9
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 453
    const-string v4, "BluetoothSecureManagerService"

    const-string v5, "getWhiteListNextIndex"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-ne p1, v3, :cond_c

    move v0, v3

    .line 469
    :goto_b
    return v0

    .line 461
    :cond_c
    monitor-enter p0

    .line 462
    :try_start_d
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, "max":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_19
    if-gt v0, v2, :cond_2f

    .line 464
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 466
    monitor-exit p0

    goto :goto_b

    .line 468
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "max":I
    :catchall_29
    move-exception v3

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v3

    .line 463
    .restart local v0    # "i":I
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "max":I
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 468
    .end local v1    # "key":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_29

    move v0, v3

    .line 469
    goto :goto_b
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 511
    const-string v2, "BluetoothSecureManagerService"

    const-string v3, "getWhiteListUuids"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "values":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 519
    .local v0, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_1c

    .line 520
    iget-object v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    .line 521
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public isSecureModeEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 288
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "isSecureModeEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string/jumbo v1, "secure_mode_enable"

    invoke-virtual {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isWhiteListEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 352
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "isWhiteListEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string/jumbo v1, "white_list_enable"

    invoke-virtual {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I

    .prologue
    const/4 v3, 0x0

    .line 404
    const-string v4, "BluetoothSecureManagerService"

    const-string/jumbo v5, "removeWhiteList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    .line 413
    monitor-enter p0

    .line 414
    :try_start_d
    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v1

    .line 415
    .local v1, "index":I
    if-ltz v1, :cond_3b

    .line 416
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 417
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 418
    .local v2, "max":I
    if-ne v2, v1, :cond_2d

    .line 419
    const-string/jumbo v3, "white_list_max_index"

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    :cond_2d
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    const/4 v3, 0x1

    monitor-exit p0

    .line 424
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "max":I
    :goto_3a
    return v3

    .line 423
    :cond_3b
    monitor-exit p0

    goto :goto_3a

    .end local v1    # "index":I
    :catchall_3d
    move-exception v3

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "valueName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 318
    const-string v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSecureModeSetting, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    .line 328
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v1}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 329
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    const-string v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "setSecureModeSetting calling apply()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    const-string v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "setSecureModeSetting apply() returned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v1, 0x1

    return v1
.end method
