.class public Lcom/android/settings/ReadingMode;
.super Landroid/app/ListFragment;
.source "ReadingMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ReadingMode$SettingsObserver;,
        Lcom/android/settings/ReadingMode$AlphaComparator;,
        Lcom/android/settings/ReadingMode$AppListAdapter;
    }
.end annotation


# static fields
.field static MAX_READINGMODE:I

.field private static list_view:Landroid/widget/ListView;

.field private static sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

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

.field private mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

.field private mExtraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedAppListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x14

    sput v0, Lcom/android/settings/ReadingMode;->MAX_READINGMODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    .line 92
    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    .line 442
    return-void
.end method

.method private UpdateSavedReadingMode()V
    .locals 24

    .prologue
    .line 101
    const/16 v18, 0x0

    .line 102
    .local v18, "mSavedReadingModeNums":I
    const/4 v5, 0x0

    .line 103
    .local v5, "Rcnt":I
    const/4 v6, 0x0

    .line 104
    .local v6, "RemainedList":Z
    const/4 v7, 0x0

    .line 105
    .local v7, "SavedApplist":Ljava/lang/String;
    const/4 v15, 0x0

    .line 106
    .local v15, "mSavedApplist":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 107
    .local v17, "mSavedApplist_Package":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 108
    .local v16, "mSavedApplist_Activity":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 109
    .local v14, "mRemainedApplist_Package":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 111
    .local v13, "mRemainedApplist_Activity":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "reading_mode_app_list"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    const-string v21, "ReadingMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "UpdateSavedReadingMode SavedApplist :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 114
    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 115
    array-length v0, v15

    move/from16 v18, v0

    .line 117
    :cond_0
    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    .line 118
    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 119
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 120
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 121
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 122
    const/16 v19, 0x0

    .line 123
    .local v19, "package_index":I
    aget-object v21, v15, v11

    const/16 v22, 0x2f

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 124
    aget-object v21, v15, v11

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 125
    .local v20, "package_name":Ljava/lang/String;
    aget-object v21, v15, v11

    add-int/lit8 v22, v19, 0x1

    aget-object v23, v15, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "activity_name":Ljava/lang/String;
    aput-object v20, v17, v11

    .line 127
    aput-object v8, v16, v11

    .line 128
    const-string v21, ""

    aput-object v21, v14, v11

    .line 129
    const-string v21, ""

    aput-object v21, v13, v11

    .line 121
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 131
    .end local v8    # "activity_name":Ljava/lang/String;
    .end local v19    # "package_index":I
    .end local v20    # "package_name":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "LauncherIntent":Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    .line 136
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    .line 138
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 139
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 146
    .end local v12    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 148
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_5

    .line 151
    aget-object v22, v17, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    aget-object v22, v16, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v6, 0x1

    .line 158
    :cond_5
    if-nez v6, :cond_6

    .line 159
    aget-object v21, v17, v11

    aput-object v21, v14, v5

    .line 160
    aget-object v21, v16, v11

    aput-object v21, v13, v5

    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 148
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 150
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 165
    .end local v12    # "j":I
    :cond_8
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    .line 166
    aget-object v21, v14, v11

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 167
    move/from16 v18, v11

    .line 172
    :cond_9
    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v11, v0, :cond_d

    .line 173
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_c

    .line 174
    aget-object v22, v14, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 177
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 178
    .local v4, "Papp":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v4    # "Papp":Landroid/content/pm/PackageInfo;
    :cond_a
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 165
    .end local v12    # "j":I
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 179
    .restart local v12    # "j":I
    :catch_0
    move-exception v10

    .line 181
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 172
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 210
    .end local v12    # "j":I
    :cond_d
    new-instance v9, Lcom/android/settings/ReadingMode$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/ReadingMode$AlphaComparator;-><init>(Lcom/android/settings/ReadingMode;)V

    .line 211
    .local v9, "alphaComparator":Lcom/android/settings/ReadingMode$AlphaComparator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ReadingMode;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ReadingMode;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ReadingMode;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ReadingMode;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ReadingMode;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ReadingMode;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ReadingMode;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ReadingMode;)Lcom/android/settings/ReadingMode$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ReadingMode;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "iconResId"    # I
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 396
    new-instance v7, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    .line 397
    .local v7, "mIconResizer":Lcom/android/settings/lockscreenshortcut/IconResizer;
    const/4 v5, 0x0

    .line 398
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 399
    .local v8, "packageName":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 401
    .local v0, "activityName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    iget v10, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v10, :cond_1

    .end local v0    # "activityName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 402
    .local v2, "cscIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 403
    invoke-virtual {v7, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 420
    .end local v2    # "cscIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object v5

    .restart local v0    # "activityName":Ljava/lang/String;
    :cond_1
    move-object v0, v8

    .line 401
    goto :goto_0

    .line 405
    .end local v0    # "activityName":Ljava/lang/String;
    .restart local v2    # "cscIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v9, p0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 406
    .local v1, "appRes":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 408
    .local v6, "iconDpi":I
    invoke-virtual {v7, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v9

    invoke-virtual {v1, p1, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 409
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    .line 412
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "cscIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "iconDpi":I
    :catch_0
    move-exception v4

    .line 413
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "ReadingMode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAppIcon : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 414
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 415
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "ReadingMode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v9, "ReadingMode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAppIcon : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v11, -0x2

    const/4 v4, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 226
    .local v2, "activity":Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    .line 229
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 231
    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    instance-of v0, v2, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    move-object v9, v2

    .line 233
    check-cast v9, Landroid/preference/PreferenceActivity;

    .line 234
    .local v9, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 236
    .local v8, "padding":I
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4, v4, v8, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 237
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 239
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0205e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0205e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v3, v11, v11, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 247
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    .line 265
    .end local v8    # "padding":I
    .end local v9    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/ReadingMode;->UpdateSavedReadingMode()V

    .line 269
    new-instance v0, Lcom/android/settings/ReadingMode$AppListAdapter;

    const v3, 0x7f0401c9

    iget-object v5, p0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ReadingMode$AppListAdapter;-><init>(Lcom/android/settings/ReadingMode;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    .line 271
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 273
    .local v10, "stub":Landroid/graphics/drawable/Drawable;
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 274
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ReadingMode;->setHasOptionsMenu(Z)V

    .line 276
    return-void

    .line 250
    .end local v10    # "stub":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 251
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040065

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 253
    .local v6, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    instance-of v0, v2, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    move-object v9, v2

    .line 254
    check-cast v9, Landroid/preference/PreferenceActivity;

    .line 255
    .restart local v9    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 256
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v1, v11, v11, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 261
    const v0, 0x7f10010e

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    .line 262
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 358
    const-string v0, "ReadingMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged desiredState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "e_reading_display_mode"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 281
    const v0, 0x7f0a1ad3

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    const v0, 0x7f0401c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 291
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 294
    .local v0, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-string v1, "com.android.settings.ReadingModeSettings"

    const v3, 0x7f0a1ad3

    const-string v4, ""

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v6, v7

    .line 300
    .end local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v6

    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    move v6, v7

    .line 297
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 340
    sget-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/ReadingMode$SettingsObserver;->stopObserving()V

    .line 342
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    .line 344
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 305
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 307
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "e_reading_display_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 313
    .local v2, "state":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 315
    sget-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    if-nez v3, :cond_1

    .line 316
    new-instance v3, Lcom/android/settings/ReadingMode$SettingsObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v5, v6}, Lcom/android/settings/ReadingMode$SettingsObserver;-><init>(Lcom/android/settings/ReadingMode;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    .line 317
    sget-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$SettingsObserver;->startObserving()V

    .line 320
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$AppListAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$AppListAdapter;->getCount()I

    move-result v0

    .line 323
    .local v0, "AdapterNum":I
    const-string v3, "ReadingMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume() AdapterNum.num :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 325
    const-string v5, "ReadingMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume() mAppListAdapter.packageName [ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3, v4}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    iget-object v5, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/ReadingMode$AppListAdapter;->remove(Ljava/lang/Object;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "AdapterNum":I
    .end local v1    # "i":I
    .end local v2    # "state":Z
    :cond_2
    move v2, v4

    .line 312
    goto/16 :goto_0

    .line 330
    .restart local v2    # "state":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ReadingMode;->UpdateSavedReadingMode()V

    .line 331
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    iget-object v4, p0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/settings/ReadingMode$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 332
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$AppListAdapter;->notifyDataSetChanged()V

    .line 334
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 349
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 355
    return-void
.end method
