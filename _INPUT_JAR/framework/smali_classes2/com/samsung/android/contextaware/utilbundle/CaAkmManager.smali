.class public Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
.super Ljava/lang/Object;
.source "CaAkmManager.java"


# static fields
.field private static final SETTING_FILE_NAME:Ljava/lang/String; = "/data/misc/akmd_set.txt"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v0, :cond_13

    .line 41
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    .line 45
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 47
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    return-object v0

    .line 45
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private loadIntValue(Ljava/lang/String;)I
    .registers 3
    .param p1, "lpKeyName"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 112
    .local v0, "val":I
    return v0
.end method

.method private saveIntValue(Ljava/lang/String;I)V
    .registers 3
    .param p1, "lpKeyName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 179
    return-void
.end method


# virtual methods
.method public final getOrientationValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HSUC_HDST_FORM0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HSUC_HO_FORM0.x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HSUC_HO_FORM0.y"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HSUC_HO_FORM0.z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HFLUCV_HREF_FORM0.x"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HFLUCV_HREF_FORM0.y"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HFLUCV_HREF_FORM0.z"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final loadOrientationInfo()Landroid/os/Bundle;
    .registers 10

    .prologue
    .line 67
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v4, "loadAkmData":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "names":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_c
    if-ge v2, v3, :cond_38

    aget-object v1, v0, v2

    .line 71
    .local v1, "i":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->loadIntValue(Ljava/lang/String;)I

    move-result v6

    .line 72
    .local v6, "value":I
    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 76
    .end local v1    # "i":Ljava/lang/String;
    .end local v6    # "value":I
    :cond_38
    return-object v4
.end method

.method public final saveOrientationInfo(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "oriInfo"    # Landroid/os/Bundle;

    .prologue
    .line 122
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 123
    :cond_8
    const-string v6, "can\'t save the orientation information"

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 134
    :cond_d
    return-void

    .line 127
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "names":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 130
    .local v1, "i":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 131
    .local v5, "value":I
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->saveIntValue(Ljava/lang/String;I)V

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method
