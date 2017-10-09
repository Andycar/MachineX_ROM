.class public Lcom/android/settings/RecommendedAppsList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecommendedAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RecommendedAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RecommendedAppsList;


# direct methods
.method public constructor <init>(Lcom/android/settings/RecommendedAppsList;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iput-object p1, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    .line 360
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 362
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 365
    iget-object v7, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v7}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 369
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v7}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_3

    .line 370
    :cond_0
    const v5, 0x7f0401c8

    .line 374
    .local v5, "resLayout":I
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 376
    const v7, 0x7f10005a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 377
    .local v2, "appName":Landroid/widget/TextView;
    const v7, 0x7f100059

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 378
    .local v1, "appIcon":Landroid/widget/ImageView;
    const v7, 0x7f1003cd

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 380
    .local v0, "appCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0, p1}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v8}, Lcom/android/settings/RecommendedAppsList;->access$500(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, "s":Ljava/lang/String;
    const-string v7, "RecommendedAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView() activityInfo.name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v7, "RecommendedAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView() PackageName checked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v9}, Lcom/android/settings/RecommendedAppsList;->access$200(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v8}, Lcom/android/settings/RecommendedAppsList;->access$500(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v7, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-static {v7}, Lcom/android/settings/RecommendedAppsList;->access$200(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 389
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {p0, p1}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v9

    invoke-virtual {p0, p1}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ActivityInfo;

    invoke-static {v8, v9, v7}, Lcom/android/settings/RecommendedAppsList;->access$600(Lcom/android/settings/RecommendedAppsList;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 390
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 391
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :cond_2
    return-object p2

    .line 372
    .end local v0    # "appCheck":Landroid/widget/CheckBox;
    .end local v1    # "appIcon":Landroid/widget/ImageView;
    .end local v2    # "appName":Landroid/widget/TextView;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "resLayout":I
    :cond_3
    const v5, 0x7f04021f

    .restart local v5    # "resLayout":I
    goto/16 :goto_0
.end method
