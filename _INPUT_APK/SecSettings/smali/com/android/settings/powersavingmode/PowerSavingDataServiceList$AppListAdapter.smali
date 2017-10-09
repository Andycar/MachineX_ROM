.class public Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PowerSavingDataServiceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;
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
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;


# direct methods
.method public constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;Landroid/content/Context;IILjava/util/List;)V
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
    .line 358
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    .line 359
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 361
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 364
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-virtual {v6}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 365
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0401c8

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 367
    const v6, 0x7f10005a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 368
    .local v2, "appName":Landroid/widget/TextView;
    const v6, 0x7f100059

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 369
    .local v1, "appIcon":Landroid/widget/ImageView;
    const v6, 0x7f1003cd

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 371
    .local v0, "appCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-static {v7}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->access$500(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "s":Ljava/lang/String;
    const-string v6, "PowerSavingDataServiceList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView() activityInfo.name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v6, "PowerSavingDataServiceList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView() PackageName checked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->access$200(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-static {v7}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->access$500(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-static {v6}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->access$200(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 380
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v8

    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ActivityInfo;

    invoke-static {v7, v8, v6}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->access$600(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 381
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 382
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :cond_1
    return-object p2
.end method
