.class public Lcom/android/settings/ScreenTimeoutFragment;
.super Landroid/app/DialogFragment;
.source "ScreenTimeoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static isDeviceLockTime:Z

.field private static mContext:Landroid/content/Context;

.field private static mCr:Landroid/content/ContentResolver;

.field private static mScreenTimeoutEntries:[Ljava/lang/String;

.field private static mScreenTimeoutValues:[Ljava/lang/String;


# instance fields
.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private static disableUnusableTimeouts()V
    .locals 23

    .prologue
    .line 303
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v19, "device_policy"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 305
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "screen_off_timeout"

    const-wide/16 v20, 0x7530

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 307
    .local v2, "currentTimeout":J
    if-eqz v4, :cond_1

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v12

    .line 308
    .local v12, "maxTimeout":J
    :goto_0
    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 311
    .local v15, "sSalesCode":Ljava/lang/String;
    const/4 v10, -0x1

    .line 312
    .local v10, "limit":I
    const-string v18, "VZW"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 314
    const v10, 0x927c0

    .line 318
    :goto_1
    int-to-long v0, v10

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 319
    const-wide/16 v18, 0x1

    cmp-long v18, v12, v18

    if-gez v18, :cond_0

    .line 320
    int-to-long v12, v10

    .line 324
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_3

    .line 377
    :goto_2
    return-void

    .line 307
    .end local v10    # "limit":I
    .end local v12    # "maxTimeout":J
    .end local v15    # "sSalesCode":Ljava/lang/String;
    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 316
    .restart local v10    # "limit":I
    .restart local v12    # "maxTimeout":J
    .restart local v15    # "sSalesCode":Ljava/lang/String;
    :cond_2
    const v10, 0x1b7740

    goto :goto_1

    .line 328
    :cond_3
    const/4 v7, -0x1

    .line 330
    .local v7, "idx":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v11, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v14, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 333
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v18, v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 334
    .local v16, "timeout":J
    cmp-long v18, v16, v12

    if-gtz v18, :cond_4

    .line 335
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-static {v2, v3}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-nez v18, :cond_4

    cmp-long v18, v2, v16

    if-gez v18, :cond_4

    .line 341
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    move v7, v6

    .line 332
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 348
    .end local v16    # "timeout":J
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v2, v3}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "entry":Ljava/lang/String;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_6

    .line 350
    invoke-virtual {v11, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 351
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 355
    :cond_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_9

    .line 357
    :cond_7
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v19, 0x7f0a1553

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v12, v13}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_8
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    sput-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    .line 376
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    sput-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    goto/16 :goto_2

    .line 361
    :cond_9
    const-string v18, "ScreenTimeoutFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "revisedValues.size() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v8, v12, v18

    .line 364
    .local v8, "last_timeout":J
    const-string v18, "ScreenTimeoutFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "last_timeout : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_8

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    sget-object v19, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v12, v18

    if-gez v18, :cond_8

    .line 369
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v19, 0x7f0a1553

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v12, v13}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private getScreenTimeoutValue(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 160
    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getScreenTimoutIndex(J)I
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 165
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 164
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const-string v1, "ScreenTimeoutFragment"

    const-string v2, "getScreenTimoutIndex : mScreenTimeoutValues.length-1 return"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v1, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private static getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 14
    .param p0, "time"    # J

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 276
    const-wide/16 v6, 0x3e8

    div-long v4, p0, v6

    .line 277
    .local v4, "second":J
    div-long v0, v4, v12

    .line 278
    .local v0, "minute":J
    rem-long/2addr v4, v12

    .line 280
    const-string v2, ""

    .line 281
    .local v2, "result":Ljava/lang/String;
    cmp-long v3, v0, v8

    if-lez v3, :cond_0

    .line 282
    sget-object v3, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f11000a

    long-to-int v7, v0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 286
    :cond_0
    cmp-long v3, v0, v8

    if-lez v3, :cond_1

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    :cond_1
    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11000b

    long-to-int v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    long-to-int v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    :cond_2
    const-string v3, "ScreenTimeoutFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v2
.end method

.method private static isInDefaultTimeoutList(J)Z
    .locals 6
    .param p0, "timeout"    # J

    .prologue
    const/4 v2, 0x0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "values":[Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 259
    sget-object v3, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_0
    if-nez v1, :cond_2

    .line 272
    :cond_0
    :goto_1
    return v2

    .line 261
    :cond_1
    sget-object v3, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 268
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 269
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p0

    if-nez v3, :cond_3

    .line 270
    const/4 v2, 0x1

    goto :goto_1

    .line 268
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setScreenTimeoutValue(I)V
    .locals 14
    .param p1, "timeVal"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 116
    int-to-long v10, p1

    invoke-static {v10, v11}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const-string v5, "ScreenTimeoutFragment"

    const-string v10, "isInDefaultTimeoutList = true"

    invoke-static {v5, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    sget-object v5, Lcom/android/settings/ScreenTimeoutFragment;->mCr:Landroid/content/ContentResolver;

    const-string v10, "screen_off_timeout_rollback"

    invoke-static {v5, v10, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    :try_start_1
    sget-object v5, Lcom/android/settings/ScreenTimeoutFragment;->mCr:Landroid/content/ContentResolver;

    if-eqz v5, :cond_1

    .line 128
    sget-object v5, Lcom/android/settings/ScreenTimeoutFragment;->mCr:Landroid/content/ContentResolver;

    const-string v10, "screen_off_timeout"

    invoke-static {v5, v10, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v4, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ScreenTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .end local v4    # "i":Landroid/content/Intent;
    :goto_1
    sget-object v5, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "screen_off_timeout"

    invoke-static {v5, v10, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v4    # "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ScreenTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/ScreenTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v10, "device_policy"

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 143
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 144
    .local v6, "maxTimeout":J
    :goto_2
    sget-object v5, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 145
    .local v0, "currentDeviceLockTimeout":J
    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 146
    cmp-long v5, v6, v0

    if-gez v5, :cond_2

    move-wide v0, v6

    .line 148
    :cond_2
    const-string v5, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeVal: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v5, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-boolean v5, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v5, :cond_3

    cmp-long v5, v0, v8

    if-eqz v5, :cond_3

    int-to-long v8, p1

    cmp-long v5, v8, v0

    if-lez v5, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/ScreenTimeoutFragment;->showScreenTimeDialog()V

    .line 155
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ScreenTimeoutFragment;->mSummaryView:Landroid/widget/TextView;

    int-to-long v8, p1

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutSummary(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v5, p0, Lcom/android/settings/ScreenTimeoutFragment;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 157
    return-void

    .line 120
    .end local v0    # "currentDeviceLockTimeout":J
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v6    # "maxTimeout":J
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "ScreenTimeoutFragment"

    const-string v10, "could not persist screen timeout setting"

    invoke-static {v5, v10, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 133
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 134
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "ScreenTimeoutFragment"

    const-string v10, "could not persist screen timeout setting"

    invoke-static {v5, v10, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "i":Landroid/content/Intent;
    :cond_4
    move-wide v6, v8

    .line 143
    goto :goto_2
.end method

.method public static updateScreenTimeoutValue()V
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    .line 414
    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    .line 418
    sget-boolean v0, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v0, :cond_0

    .line 419
    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    .line 421
    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    .line 426
    :cond_0
    invoke-static {}, Lcom/android/settings/ScreenTimeoutFragment;->disableUnusableTimeouts()V

    .line 428
    return-void
.end method


# virtual methods
.method public getTimeoutSummary(J)Ljava/lang/String;
    .locals 23
    .param p1, "currentTimeout"    # J

    .prologue
    .line 175
    const/4 v7, 0x0

    .line 176
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v12, 0x0

    .line 178
    .local v12, "summary":Ljava/lang/String;
    :try_start_0
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v18, "device_policy"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    if-eqz v7, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 185
    .local v4, "adminTimeout":J
    :goto_1
    const-wide/16 v14, -0x1

    .line 186
    .local v14, "summary_val":J
    const-wide/16 v18, 0x0

    cmp-long v13, p1, v18

    if-gez v13, :cond_3

    .line 188
    const-string v12, ""

    .line 242
    :goto_2
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v18, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 243
    .local v8, "currentDeviceLockTimeout":J
    const-wide/16 v18, 0x0

    cmp-long v13, v4, v18

    if-eqz v13, :cond_0

    .line 244
    cmp-long v13, v4, v8

    if-gez v13, :cond_0

    move-wide v8, v4

    .line 246
    :cond_0
    sget-boolean v13, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v13, :cond_1

    cmp-long v13, v14, v8

    if-lez v13, :cond_1

    .line 247
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v18, 0x7f0a0090

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 250
    :cond_1
    return-object v12

    .line 180
    .end local v4    # "adminTimeout":J
    .end local v8    # "currentDeviceLockTimeout":J
    .end local v14    # "summary_val":J
    :catch_0
    move-exception v10

    .line 181
    .local v10, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 189
    .restart local v4    # "adminTimeout":J
    .restart local v14    # "summary_val":J
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v13

    if-nez v13, :cond_4

    cmp-long v13, p1, v4

    if-gtz v13, :cond_4

    .line 191
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v18, 0x7f0a06d5

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 195
    :cond_4
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    if-eqz v13, :cond_5

    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v13, v13

    if-nez v13, :cond_6

    .line 196
    :cond_5
    const-string v12, ""

    goto :goto_2

    .line 198
    :cond_6
    const/4 v6, 0x0

    .line 199
    .local v6, "best":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v13, v13

    if-ge v11, v13, :cond_8

    .line 200
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v13, v13, v11

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 201
    .local v16, "timeout":J
    cmp-long v13, p1, v16

    if-ltz v13, :cond_7

    .line 202
    move v6, v11

    .line 199
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 207
    .end local v16    # "timeout":J
    :cond_8
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v13, v13

    if-nez v13, :cond_a

    .line 208
    :cond_9
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v18, 0x7f0a06d5

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4, v5}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 211
    :cond_a
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v13, v18, v4

    if-gez v13, :cond_b

    cmp-long v13, v4, p1

    if-gez v13, :cond_b

    .line 213
    const-string v13, "ScreenTimeoutFragment"

    const-string v18, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v18, 0x7f0a06d5

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4, v5}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 218
    move-wide v14, v4

    goto/16 :goto_2

    .line 220
    :cond_b
    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v13

    if-eqz v13, :cond_d

    cmp-long v13, p1, v4

    if-ltz v13, :cond_c

    const-wide/16 v18, 0x0

    cmp-long v13, v4, v18

    if-nez v13, :cond_d

    .line 222
    :cond_c
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v18, 0x7f0a06d5

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    aget-object v21, v21, v6

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 224
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto/16 :goto_2

    .line 226
    :cond_d
    const-wide/16 v18, 0x0

    cmp-long v13, v4, v18

    if-nez v13, :cond_e

    .line 227
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v18, 0x7f0a06d5

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 229
    move-wide/from16 v14, p1

    goto/16 :goto_2

    .line 231
    :cond_e
    sget-object v13, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v18, 0x7f0a06d5

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4, v5}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 233
    move-wide v14, v4

    goto/16 :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lcom/android/settings/ScreenTimeoutFragment;->getScreenTimeoutValue(I)I

    move-result v0

    .line 105
    .local v0, "timeVal":I
    invoke-direct {p0, v0}, Lcom/android/settings/ScreenTimeoutFragment;->setScreenTimeoutValue(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ScreenTimeoutFragment;->dismiss()V

    .line 108
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-static {}, Lcom/android/settings/ScreenTimeoutFragment;->updateScreenTimeoutValue()V

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v4, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const-wide/16 v6, 0x7530

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 89
    .local v2, "currentTimeout":J
    invoke-direct {p0, v2, v3}, Lcom/android/settings/ScreenTimeoutFragment;->getScreenTimoutIndex(J)I

    move-result v1

    .line 90
    .local v1, "idx":I
    const v4, 0x7f0a06d3

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    sget-object v4, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    invoke-virtual {v0, v4, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v4, 0x7f0a01d1

    new-instance v5, Lcom/android/settings/ScreenTimeoutFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/ScreenTimeoutFragment$1;-><init>(Lcom/android/settings/ScreenTimeoutFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public showScreenTimeDialog()V
    .locals 14

    .prologue
    .line 382
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 384
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 385
    .local v6, "maxTimeout":J
    :goto_0
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 386
    .local v2, "currentDeviceLockTimeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    .line 387
    cmp-long v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    .line 389
    :cond_0
    const-string v9, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v9, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    .line 393
    iget-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 394
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 397
    :cond_1
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/ScreenTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 398
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04017a

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 399
    .local v5, "layout":Landroid/view/View;
    const v9, 0x7f100366

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 400
    .local v8, "tv":Landroid/widget/TextView;
    const v9, 0x7f0a0091

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ScreenTimeoutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 403
    const v9, 0x7f0a06d3

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 404
    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 407
    iget-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 408
    return-void

    .line 384
    .end local v2    # "currentDeviceLockTimeout":J
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layout":Landroid/view/View;
    .end local v6    # "maxTimeout":J
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method
