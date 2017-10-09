.class public Lcom/android/settings/AppListPreference;
.super Landroid/preference/ListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$AppArrayAdapter;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 115
    .local v6, "selectedIndex":I
    new-instance v0, Lcom/android/settings/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040021

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    .line 117
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 119
    return-void
.end method

.method public setPackageNames([Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "defaultPackageName"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, "foundPackages":I
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 78
    .local v9, "pm":Landroid/content/pm/PackageManager;
    array-length v11, p1

    new-array v1, v11, [Landroid/content/pm/ApplicationInfo;

    .line 79
    .local v1, "appInfos":[Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, p1

    if-ge v5, v11, :cond_0

    .line 81
    :try_start_0
    aget-object v11, p1, v5

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    aput-object v11, v1, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 79
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    :cond_0
    new-array v2, v4, [Ljava/lang/CharSequence;

    .line 90
    .local v2, "applicationNames":[Ljava/lang/CharSequence;
    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 91
    const/4 v7, 0x0

    .line 92
    .local v7, "index":I
    const/4 v10, -0x1

    .line 93
    .local v10, "selectedIndex":I
    move-object v3, v1

    .local v3, "arr$":[Landroid/content/pm/ApplicationInfo;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v0, v3, v6

    .line 94
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v2, v7

    .line 96
    iget-object v11, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v7

    .line 97
    if-eqz p2, :cond_1

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 99
    move v10, v7

    .line 101
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 93
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 106
    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 107
    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    .line 108
    aget-object v11, v2, v10

    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    :cond_4
    return-void

    .line 83
    .end local v2    # "applicationNames":[Ljava/lang/CharSequence;
    .end local v3    # "arr$":[Landroid/content/pm/ApplicationInfo;
    .end local v6    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "len$":I
    .end local v10    # "selectedIndex":I
    :catch_0
    move-exception v11

    goto :goto_1
.end method
