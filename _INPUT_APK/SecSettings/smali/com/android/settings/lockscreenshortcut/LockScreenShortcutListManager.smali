.class public Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;
.super Ljava/lang/Object;
.source "LockScreenShortcutListManager.java"


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCr:Landroid/content/ContentResolver;

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShortcutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mCr:Landroid/content/ContentResolver;

    .line 55
    iput-object p2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mPm:Landroid/content/pm/PackageManager;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method private NmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "applist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "NormalActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 140
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const-string v2, "LockScreenShortcutListManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NmakeList NormalActivityList[size] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v0
.end method

.method private SmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "applist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "SecretActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v2, "LockScreenShortcutListManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmakeList applist[size] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-object v0
.end method

.method private getAvailableShortcutList(Ljava/util/List;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p2, "NumOfSavedShortcut"    # I
    .param p3, "app_list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "ShortcutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v5, ""

    .line 175
    .local v5, "intent_content":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v10, "savedShortcutName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 177
    .local v4, "index":I
    const/4 v7, 0x0

    .line 178
    .local v7, "old_index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v3, v0, :cond_0

    .line 179
    move v7, v4

    .line 180
    const/16 v11, 0x3b

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 181
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 182
    const/16 v11, 0x2f

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 183
    .local v8, "package_index":I
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "package_name":Ljava/lang/String;
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "activity_name":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v11, "LockScreenShortcutListManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Index ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , package : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , activity : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    add-int/lit8 v4, v4, 0x1

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "activity_name":Ljava/lang/String;
    .end local v8    # "package_index":I
    .end local v9    # "package_name":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v3, v0, :cond_3

    .line 193
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 194
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 195
    const-string v12, "LockScreenShortcutListManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "savedShortcutName : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 192
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    .end local v6    # "j":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public InitShortcutList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "intentAction"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mCr:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_shortcut_number_of_apps"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    .line 62
    const-string v3, "LockScreenShortcutListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNumOfSavedShortcut : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mCr:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_shortcut_app_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "strShortcutAppList":Ljava/lang/String;
    const-string v3, "LockScreenShortcutListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app_list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz p1, :cond_4

    .line 67
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 68
    const-string v3, "LockScreenShortcutListManager"

    const-string v4, "mShortcutList is not initialized"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return v2

    .line 71
    :cond_0
    const-string v3, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mAppList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->SmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "madeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getAvailableShortcutList(Ljava/util/List;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    .line 88
    .end local v0    # "madeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    if-ge v2, v3, :cond_1

    .line 89
    const-string v2, "LockScreenShortcutListManager"

    const-string v3, "mShortcutList.size() < mNumOfSavedShortcut)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->saveShortcutListtoDB()V

    .line 94
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const-string v3, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mAppList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->NmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 76
    .restart local v0    # "madeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getAvailableShortcutList(Ljava/util/List;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    goto :goto_1

    .line 78
    .end local v0    # "madeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v3, "LockScreenShortcutListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unKnown intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->updateAppList()V

    .line 84
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mAppList:Ljava/util/List;

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getAvailableShortcutList(Ljava/util/List;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public addShortcutListItem(ILandroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "droped_position"    # I
    .param p2, "new_shortcut"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getNumOfSavedShortcut()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    return v0
.end method

.method public getShortcutList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShortcutListItem(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public removeShortcutListItem(I)V
    .locals 1
    .param p1, "item_position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public saveShortcutListtoDB()V
    .locals 6

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mCr:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_shortcut_number_of_apps"

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    const-string v2, ""

    .line 207
    .local v2, "shortcut_app_list":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    if-ge v0, v3, :cond_0

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "shortcut_app":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "shortcut_app":Ljava/lang/String;
    :cond_0
    const-string v3, "LockScreenShortcutListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shortcut_app_list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mCr:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_shortcut_app_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    return-void
.end method

.method public setNumOfSavedShortcut(I)V
    .locals 0
    .param p1, "numOfSavedShortcut"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mNumOfSavedShortcut:I

    .line 133
    return-void
.end method

.method public updateAppList()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "LauncherIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->mAppList:Ljava/util/List;

    .line 113
    return-void
.end method
