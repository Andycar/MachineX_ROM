.class public Lcom/samsung/appdisabler/ShortcutHandler;
.super Ljava/lang/Object;
.source "ShortcutHandler.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/appdisabler/ShortcutHandler;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private checkIfShortcutExist(Ljava/lang/String;)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v9, "com.sec.android.app.launcher.settings"

    .line 144
    .local v9, "AUTHORITY":Ljava/lang/String;
    const-string v11, "favorites"

    .line 145
    .local v11, "TABLE_FAVORITES":Ljava/lang/String;
    const-string/jumbo v10, "notify"

    .line 146
    .local v10, "PARAMETER_NOTIFY":Ljava/lang/String;
    const-string v12, "_id"

    .line 149
    .local v12, "_ID":Ljava/lang/String;
    const-string v5, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 154
    .local v4, "CONTENT_URI_NO_NOTIFICATION":Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v17, "startIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/appdisabler/ShortcutHandler;->getIntentForShortcut(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v16

    .line 156
    .local v16, "shortcutName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    if-nez v17, :cond_2e

    .line 157
    :cond_26
    const-string/jumbo v5, "shortcut name or intent is empty"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 158
    const/4 v15, 0x0

    .line 178
    :goto_2d
    return v15

    .line 162
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/appdisabler/ShortcutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 163
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 165
    .local v15, "result":Z
    const/4 v5, 0x1

    :try_start_38
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string/jumbo v6, "title=? and intent=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 169
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_67

    .line 170
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    .line 171
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_5f} :catch_60

    goto :goto_2d

    .line 175
    .end local v13    # "c":Landroid/database/Cursor;
    :catch_60
    move-exception v14

    .line 176
    .local v14, "e":Ljava/lang/IllegalStateException;
    const-string v5, "ShortcutHandler: "

    invoke-static {v5, v14}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 173
    .end local v14    # "e":Ljava/lang/IllegalStateException;
    .restart local v13    # "c":Landroid/database/Cursor;
    :cond_67
    :try_start_67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_85} :catch_60

    goto :goto_2d
.end method

.method private getIntentForShortcut(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intentForShortcut"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 104
    iget-object v7, p0, Lcom/samsung/appdisabler/ShortcutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 106
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {v4, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activity found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_3d

    .line 113
    const/4 v2, 0x0

    .line 130
    :goto_3c
    return-object v2

    .line 115
    :cond_3d
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 116
    .local v0, "activities":Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    .local v6, "shortPackage":Ljava/lang/String;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 121
    .local v5, "shortComponent":Ljava/lang/String;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v7, 0x10200000

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "lablel":Ljava/lang/String;
    goto :goto_3c
.end method


# virtual methods
.method public addShortcut(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 45
    iget-object v8, p0, Lcom/samsung/appdisabler/ShortcutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 46
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 47
    const-string v8, "addShortcut empty packageName"

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 89
    :goto_12
    return-void

    .line 50
    :cond_13
    invoke-direct {p0, p1}, Lcom/samsung/appdisabler/ShortcutHandler;->checkIfShortcutExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shortcut for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exists, not adding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_12

    .line 56
    :cond_37
    const/4 v3, 0x0

    .line 58
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_38
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_3b} :catch_7f

    move-result-object v3

    .line 63
    :goto_3c
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmapIcon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_97

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bitmap icon is null for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 77
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_55
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v7, "shortcutIntent":Landroid/content/Intent;
    invoke-direct {p0, p1, v7}, Lcom/samsung/appdisabler/ShortcutHandler;->getIntentForShortcut(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "lablel":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "intent_home":Landroid/content/Intent;
    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string v8, "duplicate"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v8, p0, Lcom/samsung/appdisabler/ShortcutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    .line 59
    .end local v0    # "bitmapIcon":Landroid/graphics/Bitmap;
    .end local v4    # "intent_home":Landroid/content/Intent;
    .end local v5    # "lablel":Ljava/lang/String;
    .end local v7    # "shortcutIntent":Landroid/content/Intent;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_7f
    move-exception v2

    .line 60
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "icon not found for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 66
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "bitmapIcon":Landroid/graphics/Bitmap;
    :cond_97
    instance-of v8, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_a7

    .line 67
    const-string v8, "BitmapDrawable"

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 68
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_55

    .line 70
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_a7
    const-string v8, "make bitmap"

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {v3, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_55
.end method

.method public uninstallShort(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 183
    const-string/jumbo v4, "uninstallShort packageName is empty"

    invoke-static {v4}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 202
    :goto_c
    return-void

    .line 188
    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, "shortcutIntent":Landroid/content/Intent;
    invoke-direct {p0, p1, v1}, Lcom/samsung/appdisabler/ShortcutHandler;->getIntentForShortcut(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "shortcutLabel":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/appdisabler/ShortcutHandler;->checkIfShortcutExist(Ljava/lang/String;)Z

    move-result v0

    .line 191
    .local v0, "check":Z
    if-nez v0, :cond_34

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uninstallShort, no shortcut for package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_c

    .line 196
    :cond_34
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v3, "uinstallIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v4, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v4, p0, Lcom/samsung/appdisabler/ShortcutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c
.end method
