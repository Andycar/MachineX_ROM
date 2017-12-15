.class public Landroid/app/wallpaperbackup/LiveChange;
.super Ljava/lang/Object;
.source "LiveChange.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;)V
    .registers 14
    .param p1, "mComponent"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 33
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "classpackage":[Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v7, "queryIntent":Landroid/content/Intent;
    aget-object v9, v0, v11

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 38
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_5f

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5f

    .line 40
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 41
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 42
    const/4 v3, 0x0

    .line 44
    .local v3, "info":Landroid/app/WallpaperInfo;
    :try_start_3c
    new-instance v3, Landroid/app/WallpaperInfo;

    .end local v3    # "info":Landroid/app/WallpaperInfo;
    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9, v8}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_43} :catch_60
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_69

    .line 52
    .restart local v3    # "info":Landroid/app/WallpaperInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.service.wallpaper.WallpaperService"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    new-instance v6, Landroid/app/wallpaperbackup/LivePreview;

    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/app/wallpaperbackup/LivePreview;-><init>(Landroid/content/Context;)V

    .line 55
    .local v6, "lp":Landroid/app/wallpaperbackup/LivePreview;
    invoke-virtual {v6, v11, v4, v3, v11}, Landroid/app/wallpaperbackup/LivePreview;->set(ILandroid/content/Intent;Landroid/app/WallpaperInfo;Z)V

    .line 61
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/app/WallpaperInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "lp":Landroid/app/wallpaperbackup/LivePreview;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5f
    :goto_5f
    return-void

    .line 45
    .restart local v2    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_60
    move-exception v1

    .line 46
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto :goto_5f

    .line 48
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_69
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    iget-object v9, p0, Landroid/app/wallpaperbackup/LiveChange;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto :goto_5f

    .line 39
    .end local v1    # "e":Ljava/io/IOException;
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_22
.end method
