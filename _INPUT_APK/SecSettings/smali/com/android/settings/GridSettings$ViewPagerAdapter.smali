.class public Lcom/android/settings/GridSettings$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1177
    iput-object p2, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 1178
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 1300
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 1301
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 1182
    iget-object v1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v1}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x5

    const v8, 0x7f07005f

    const/4 v9, 0x0

    .line 1196
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1199
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v4, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v4, "mListView":Landroid/widget/ListView;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1201
    new-instance v6, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;-><init>(Lcom/android/settings/GridSettings$ViewPagerAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1213
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v3

    .line 1215
    .local v3, "mListManagerPosition":I
    move v5, p2

    .line 1216
    .local v5, "mPagerIndex":I
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v6}, Lcom/android/settings/GridSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 1217
    add-int/lit8 v5, v5, 0x1

    .line 1218
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 1275
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1276
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1277
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    .line 1279
    new-instance v6, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    move-object v0, p1

    .line 1282
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1283
    .local v0, "curPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    if-ge v6, p2, :cond_2

    .line 1284
    invoke-virtual {v0, v4, v9}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1288
    :goto_1
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1290
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$2100(Lcom/android/settings/GridSettings;)[Landroid/widget/ListView;

    move-result-object v6

    aput-object v4, v6, p2

    .line 1291
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$2100(Lcom/android/settings/GridSettings;)[Landroid/widget/ListView;

    move-result-object v6

    aget-object v6, v6, p2

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 1293
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v6, v2, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v6, :cond_1

    .line 1294
    check-cast v2, Lcom/android/settings/GridSettings$HeaderAdapter;

    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v2}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    .line 1296
    :cond_1
    return-object v4

    .line 1220
    .end local v0    # "curPager":Landroid/support/v4/view/ViewPager;
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1221
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1222
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    .line 1223
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v8, v8, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1224
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1225
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v8, v8, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1227
    new-instance v6, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 1230
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1231
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1232
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/GridSettings;->loadHeadersFromResourceForTabView(ILjava/util/List;)V

    .line 1233
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    .line 1234
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v8, v8, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1236
    new-instance v6, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 1239
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1240
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1241
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/GridSettings;->loadHeadersFromResourceForTabView(ILjava/util/List;)V

    .line 1242
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    .line 1243
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v8, v8, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1245
    new-instance v6, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 1248
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1249
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1250
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/GridSettings;->loadHeadersFromResourceForTabView(ILjava/util/List;)V

    .line 1251
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    .line 1252
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v8, v8, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1254
    new-instance v6, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 1257
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1258
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1259
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/GridSettings;->loadHeadersFromResourceForTabView(ILjava/util/List;)V

    .line 1260
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    .line 1261
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v8, v8, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1263
    new-instance v6, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 1266
    :pswitch_5
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1267
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    .line 1268
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/GridSettings;->loadHeadersFromResourceForTabView(ILjava/util/List;)V

    .line 1269
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/settings/GridSettings;->access$1500(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V

    .line 1270
    iget-object v6, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v6}, Lcom/android/settings/GridSettings;->access$1300(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v7}, Lcom/android/settings/GridSettings;->access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    iget-object v8, v8, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1272
    new-instance v6, Lcom/android/settings/GridSettings$HeaderAdapter;

    iget-object v7, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v8}, Lcom/android/settings/GridSettings;->access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 1286
    .restart local v0    # "curPager":Landroid/support/v4/view/ViewPager;
    :cond_2
    invoke-virtual {v0, v4, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 1218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1190
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
