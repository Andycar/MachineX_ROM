.class public final Landroid/app/im/InjectionManager;
.super Ljava/lang/Object;
.source "InjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/im/InjectionManager$1;,
        Landroid/app/im/InjectionManager$FeatureInfo;
    }
.end annotation


# static fields
.field public static final DEBUG_ELASTIC:Z

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Landroid/app/im/InjectionManager;

.field static mLibMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/app/im/IInjectionManager;


# instance fields
.field public coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

.field featureSourceStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/im/feature/IInjection;",
            ">;"
        }
    .end annotation
.end field

.field featureStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/im/InjectionManager$FeatureInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field packageHasFeatures:Z

.field pathClassLoaderStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field pkgContextStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "InjectionManager"

    sput-object v0, Landroid/app/im/InjectionManager;->TAG:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    sput-object v0, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->pkgContextStore:Ljava/util/HashMap;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/im/InjectionManager;->pathClassLoaderStore:Ljava/util/HashMap;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    .line 106
    iput-object p1, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/im/InjectionManager;->fillFeatureStoreMap(Ljava/lang/String;)V

    .line 115
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_31
    iget-object v1, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    if-eqz v1, :cond_64

    iget-object v1, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_64

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    .line 117
    iget-object v1, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    iput-object v1, p0, Landroid/app/im/InjectionManager;->coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

    .line 118
    sget-object v1, Landroid/app/im/InjectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent ClassLoader :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/im/InjectionManager;->coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_64
    return-void
.end method

.method private actionBarSpinnerController(Ljava/lang/Object;IJ)Z
    .registers 20
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 523
    iget-boolean v12, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v12, :cond_6

    .line 524
    const/4 v8, 0x0

    .line 566
    :cond_5
    return v8

    .line 526
    :cond_6
    const/4 v8, 0x0

    .line 527
    .local v8, "show":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 528
    .local v10, "targetClassName":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 531
    .local v11, "targetHasFeature":Z
    if-eqz v11, :cond_5

    .line 532
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    sget-object v13, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v13}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 534
    .local v4, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 537
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 540
    .local v3, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v9, 0x0

    .line 542
    .local v9, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_44
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v3, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v14, v3, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v12, v13, v14}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v7

    .line 545
    .local v7, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v7, :cond_37

    .line 549
    instance-of v12, v7, Landroid/app/im/feature/IDynamicView;

    if-eqz v12, :cond_37

    .line 550
    move-object v0, v7

    check-cast v0, Landroid/app/im/feature/IDynamicView;

    move-object v9, v0
    :try_end_5a
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_5a} :catch_64

    .line 562
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-interface {v9, v0, v1, v2}, Landroid/app/im/feature/IDynamicView;->onNavigationItemSelected(IJ)Z

    move-result v12

    or-int/2addr v8, v12

    .line 563
    goto :goto_37

    .line 556
    .end local v7    # "obj":Landroid/app/im/feature/IInjection;
    :catch_64
    move-exception v5

    .line 557
    .local v5, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_37
.end method

.method private adapterEventController(ILjava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 24
    .param p1, "option"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "position"    # I
    .param p6, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 570
    .local p3, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v3, :cond_8

    .line 571
    const/4 v13, 0x0

    .line 629
    :cond_7
    return v13

    .line 573
    :cond_8
    const/4 v13, 0x0

    .line 574
    .local v13, "show":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 575
    .local v14, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    .line 578
    .local v15, "targetHasFeature":Z
    if-eqz v15, :cond_7

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sget-object v4, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v4}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 581
    .local v9, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 585
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 588
    .local v8, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v2, 0x0

    .line 590
    .local v2, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_4a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v12

    .line 593
    .local v12, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v12, :cond_3d

    .line 597
    instance-of v3, v12, Landroid/app/im/feature/IDynamicView;

    if-eqz v3, :cond_3d

    .line 598
    move-object v0, v12

    check-cast v0, Landroid/app/im/feature/IDynamicView;

    move-object v2, v0
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_62} :catch_74

    .line 610
    packed-switch p1, :pswitch_data_9e

    goto :goto_3d

    :pswitch_66
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    .line 612
    invoke-interface/range {v2 .. v7}, Landroid/app/im/feature/IDynamicView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v3

    or-int/2addr v13, v3

    .line 613
    goto :goto_3d

    .line 604
    .end local v12    # "obj":Landroid/app/im/feature/IInjection;
    :catch_74
    move-exception v10

    .line 605
    .local v10, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v10}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_3d

    .end local v10    # "exp":Ljava/lang/ClassCastException;
    .restart local v12    # "obj":Landroid/app/im/feature/IInjection;
    :pswitch_79
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    .line 615
    invoke-interface/range {v2 .. v7}, Landroid/app/im/feature/IDynamicView;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v3

    or-int/2addr v13, v3

    .line 616
    goto :goto_3d

    :pswitch_87
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    .line 618
    invoke-interface/range {v2 .. v7}, Landroid/app/im/feature/IDynamicView;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v3

    or-int/2addr v13, v3

    .line 619
    goto :goto_3d

    .line 621
    :pswitch_95
    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Landroid/app/im/feature/IDynamicView;->onNothingSelected(Landroid/widget/AdapterView;)Z

    move-result v3

    or-int/2addr v13, v3

    .line 622
    goto :goto_3d

    .line 610
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_66
        :pswitch_79
        :pswitch_87
        :pswitch_95
    .end packed-switch
.end method

.method private contentProviderController(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 30
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projectionIn"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    const/4 v13, 0x0

    .line 322
    .local v13, "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v3, :cond_9

    move-object v14, v13

    .line 375
    .end local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .local v14, "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    :goto_8
    return-object v14

    .line 326
    .end local v14    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .restart local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v20

    .line 327
    .local v20, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    .line 332
    .local v21, "targetHasFeature":Z
    if-eqz v21, :cond_8f

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sget-object v4, Landroid/app/im/InjectionConstants$FeatureType;->CONTENT_PROVIDER:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v4}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 337
    .local v19, "optionsMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v19, :cond_8f

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8f

    .line 339
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 343
    .local v18, "optionsMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v2, 0x0

    .line 345
    .local v2, "sourceObject":Landroid/app/im/feature/IContentProvider;
    :try_start_4a
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v17

    .line 346
    .local v17, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v17, :cond_3d

    .line 350
    move-object/from16 v0, v17

    instance-of v3, v0, Landroid/app/im/feature/IContentProvider;

    if-eqz v3, :cond_3d

    .line 351
    move-object/from16 v0, v17

    check-cast v0, Landroid/app/im/feature/IContentProvider;

    move-object v2, v0
    :try_end_67
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_67} :catch_8a

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    invoke-interface/range {v2 .. v11}, Landroid/app/im/feature/IContentProvider;->query(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 367
    .local v12, "cur":Landroid/database/Cursor;
    if-eqz v12, :cond_3d

    .line 368
    if-nez v13, :cond_86

    .line 369
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .restart local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    :cond_86
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 357
    .end local v12    # "cur":Landroid/database/Cursor;
    .end local v17    # "obj":Landroid/app/im/feature/IInjection;
    :catch_8a
    move-exception v15

    .line 358
    .local v15, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v15}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_3d

    .end local v2    # "sourceObject":Landroid/app/im/feature/IContentProvider;
    .end local v15    # "exp":Ljava/lang/ClassCastException;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "optionsMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    .end local v19    # "optionsMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    :cond_8f
    move-object v14, v13

    .line 375
    .end local v13    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .restart local v14    # "curList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    goto/16 :goto_8
.end method

.method private contextMenuController(ILjava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem;Z)Z
    .registers 22
    .param p1, "type"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "menu"    # Landroid/view/ContextMenu;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .param p6, "item"    # Landroid/view/MenuItem;
    .param p7, "isFragment"    # Z

    .prologue
    .line 756
    iget-boolean v11, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v11, :cond_6

    .line 759
    const/4 v7, 0x0

    .line 817
    :cond_5
    :goto_5
    return v7

    .line 762
    :cond_6
    const/4 v7, 0x0

    .line 764
    .local v7, "show":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 765
    .local v9, "targetClassName":Ljava/lang/String;
    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 769
    .local v10, "targetHasFeature":Z
    if-eqz v10, :cond_5

    .line 770
    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    sget-object v12, Landroid/app/im/InjectionConstants$FeatureType;->CONTEXT_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v12}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 776
    .local v4, "contextMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 778
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 780
    .local v3, "contextMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v8, 0x0

    .line 781
    .local v8, "sourceObject":Landroid/app/im/feature/IContextMenu;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v13, v3, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v6

    .line 784
    .local v6, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v6, :cond_37

    .line 788
    instance-of v11, v6, Landroid/app/im/feature/IContextMenu;

    if-eqz v11, :cond_37

    move-object v8, v6

    .line 789
    check-cast v8, Landroid/app/im/feature/IContextMenu;

    .line 797
    packed-switch p1, :pswitch_data_72

    .line 811
    :goto_5c
    if-eqz v7, :cond_37

    goto :goto_5

    .line 801
    :pswitch_5f
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-interface {v8, v0, v1, v2}, Landroid/app/im/feature/IContextMenu;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_5c

    .line 806
    :pswitch_69
    move-object/from16 v0, p6

    invoke-interface {v8, v0}, Landroid/app/im/feature/IContextMenu;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v11

    or-int/2addr v7, v11

    .line 807
    goto :goto_5c

    .line 797
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_69
    .end packed-switch
.end method

.method public static from(Landroid/content/Context;)Landroid/app/im/InjectionManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v0, "injection"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/im/InjectionManager;

    return-object v0
.end method

.method public static getClassLibPath(I)Ljava/lang/String;
    .registers 3
    .param p0, "includeSharedLib"    # I

    .prologue
    .line 905
    sget-object v0, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    .line 906
    sget-object v0, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 908
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .param p0, "mPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    sget-object v1, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    if-nez v1, :cond_16

    .line 886
    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 889
    :try_start_a
    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/im/IInjectionManager;->getClassLibPath(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_19

    .line 897
    :cond_16
    :goto_16
    sget-object v1, Landroid/app/im/InjectionManager;->mLibMap:Ljava/util/HashMap;

    return-object v1

    .line 892
    :catch_19
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method private getClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 198
    .local v0, "mPkgContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method private getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;
    .registers 8
    .param p1, "targetClassName"    # Ljava/lang/String;
    .param p2, "featurePackage"    # Ljava/lang/String;
    .param p3, "featureClass"    # Ljava/lang/String;

    .prologue
    .line 1344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/im/feature/IInjection;

    .line 1346
    .local v2, "sourceObject":Landroid/app/im/feature/IInjection;
    if-nez v2, :cond_28

    .line 1348
    :try_start_1f
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_22} :catch_2a

    move-result-object v2

    .line 1354
    iget-object v3, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    move-object v3, v2

    .line 1356
    :goto_29
    return-object v3

    .line 1350
    :catch_2a
    move-exception v0

    .line 1351
    .local v0, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 1352
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static getInstance()Landroid/app/im/InjectionManager;
    .registers 1

    .prologue
    .line 159
    sget-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/im/InjectionManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    sget-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;

    if-nez v0, :cond_b

    .line 147
    new-instance v0, Landroid/app/im/InjectionManager;

    invoke-direct {v0, p0}, Landroid/app/im/InjectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;

    .line 149
    :cond_b
    sget-object v0, Landroid/app/im/InjectionManager;->mInstance:Landroid/app/im/InjectionManager;

    return-object v0
.end method

.method private getMenuInflator(Ljava/lang/String;)Landroid/view/MenuInflater;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 829
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {p0, p1}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getPackageContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v2, p0, Landroid/app/im/InjectionManager;->pkgContextStore:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 176
    .local v1, "mPkgContext":Landroid/content/Context;
    if-nez v1, :cond_16

    .line 178
    :try_start_a
    iget-object v2, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 181
    iget-object v2, p0, Landroid/app/im/InjectionManager;->pkgContextStore:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_16} :catch_17

    .line 187
    :cond_16
    :goto_16
    return-object v1

    .line 183
    :catch_17
    move-exception v0

    .line 184
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_16
.end method

.method public static getService()Landroid/app/im/IInjectionManager;
    .registers 2

    .prologue
    .line 95
    sget-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;

    if-eqz v1, :cond_7

    .line 96
    sget-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;

    .line 100
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 98
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "injection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/im/IInjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/im/IInjectionManager;

    move-result-object v1

    sput-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;

    .line 100
    sget-object v1, Landroid/app/im/InjectionManager;->sService:Landroid/app/im/IInjectionManager;

    goto :goto_6
.end method

.method private mergeOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .registers 15
    .param p1, "sourceMenu"    # Landroid/view/Menu;
    .param p2, "targetMenu"    # Landroid/view/Menu;

    .prologue
    .line 708
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    .line 709
    .local v3, "menuCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v3, :cond_8b

    .line 710
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 712
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 713
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v10

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {p2, v8, v9, v10, v11}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    move-result-object v7

    .line 716
    .local v7, "targetSubMenu":Landroid/view/SubMenu;
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    .line 717
    .local v4, "sourceSubMenu":Landroid/view/SubMenu;
    invoke-interface {v4}, Landroid/view/SubMenu;->size()I

    move-result v5

    .line 718
    .local v5, "sourceSubMenuCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_36
    if-ge v2, v5, :cond_87

    .line 719
    invoke-interface {v4, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 720
    .local v6, "sourceSubMenuItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->getGroupId()I

    move-result v8

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-interface {v6}, Landroid/view/MenuItem;->getOrder()I

    move-result v10

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v6}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 718
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 727
    .end local v2    # "j":I
    .end local v4    # "sourceSubMenu":Landroid/view/SubMenu;
    .end local v5    # "sourceSubMenuCount":I
    .end local v6    # "sourceSubMenuItem":Landroid/view/MenuItem;
    .end local v7    # "targetSubMenu":Landroid/view/SubMenu;
    :cond_5a
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v10

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {p2, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v8

    check-cast v1, Landroid/view/ElasticMenuItem;

    .end local v1    # "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/ElasticMenuItem;->getShowAsAction()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 709
    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 734
    :cond_8b
    return-void
.end method

.method private optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z
    .registers 21
    .param p1, "option"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "menu"    # Landroid/view/Menu;
    .param p4, "menuInflater"    # Landroid/view/MenuInflater;
    .param p5, "item"    # Landroid/view/MenuItem;
    .param p6, "isFragment"    # Z

    .prologue
    .line 635
    iget-boolean v11, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v11, :cond_6

    .line 636
    const/4 v7, 0x0

    .line 704
    :cond_5
    :goto_5
    return v7

    .line 638
    :cond_6
    const/4 v7, 0x0

    .line 639
    .local v7, "show":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 640
    .local v9, "targetClassName":Ljava/lang/String;
    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 645
    .local v10, "targetHasFeature":Z
    if-eqz v10, :cond_5

    .line 647
    iget-object v11, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    sget-object v12, Landroid/app/im/InjectionConstants$FeatureType;->OPTIONS_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v12}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 650
    .local v5, "optionsMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 654
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 657
    .local v4, "optionsMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v8, 0x0

    .line 659
    .local v8, "sourceObject":Landroid/app/im/feature/IOptionsMenu;
    :try_start_44
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v4, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v3

    .line 663
    .local v3, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v3, :cond_37

    .line 667
    instance-of v11, v3, Landroid/app/im/feature/IOptionsMenu;

    if-eqz v11, :cond_37

    .line 668
    move-object v0, v3

    check-cast v0, Landroid/app/im/feature/IOptionsMenu;

    move-object v8, v0
    :try_end_5a
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_5a} :catch_63

    .line 680
    packed-switch p1, :pswitch_data_94

    .line 698
    :goto_5d
    const/4 v11, 0x3

    if-ne p1, v11, :cond_37

    if-eqz v7, :cond_37

    goto :goto_5

    .line 674
    .end local v3    # "obj":Landroid/app/im/feature/IInjection;
    :catch_63
    move-exception v1

    .line 675
    .local v1, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_37

    .line 682
    .end local v1    # "exp":Ljava/lang/ClassCastException;
    .restart local v3    # "obj":Landroid/app/im/feature/IInjection;
    :pswitch_68
    new-instance v6, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v11, v4, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 684
    .local v6, "pkgContextOptionsMenu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v11, v4, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Landroid/app/im/InjectionManager;->getMenuInflator(Ljava/lang/String;)Landroid/view/MenuInflater;

    move-result-object v11

    invoke-interface {v8, v6, v11}, Landroid/app/im/feature/IOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v11

    or-int/2addr v7, v11

    .line 687
    move-object/from16 v0, p3

    invoke-direct {p0, v6, v0}, Landroid/app/im/InjectionManager;->mergeOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    goto :goto_5d

    .line 690
    .end local v6    # "pkgContextOptionsMenu":Lcom/android/internal/view/menu/MenuBuilder;
    :pswitch_84
    move-object/from16 v0, p3

    invoke-interface {v8, v0}, Landroid/app/im/feature/IOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v11

    or-int/2addr v7, v11

    .line 691
    goto :goto_5d

    .line 693
    :pswitch_8c
    move-object/from16 v0, p5

    invoke-interface {v8, v0}, Landroid/app/im/feature/IOptionsMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v11

    or-int/2addr v7, v11

    .line 694
    goto :goto_5d

    .line 680
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_68
        :pswitch_84
        :pswitch_8c
    .end packed-switch
.end method

.method private scaleEventController(ILjava/lang/Object;Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "scaleEvent"    # I
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "scaleGD"    # Landroid/view/ScaleGestureDetector;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 395
    iget-boolean v10, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v10, :cond_6

    .line 396
    const/4 v6, 0x0

    .line 450
    :cond_5
    return v6

    .line 398
    :cond_6
    const/4 v6, 0x0

    .line 399
    .local v6, "show":Z
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, "targetClassName":Ljava/lang/String;
    iget-object v10, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 403
    .local v9, "targetHasFeature":Z
    if-eqz v9, :cond_5

    .line 404
    iget-object v10, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    sget-object v11, Landroid/app/im/InjectionConstants$FeatureType;->SCALE_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v11}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 405
    .local v2, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 407
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 409
    .local v1, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v7, 0x0

    .line 411
    .local v7, "sourceObject":Landroid/app/im/feature/IScaleView;
    :try_start_44
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v5

    .line 414
    .local v5, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v5, :cond_37

    .line 418
    instance-of v10, v5, Landroid/app/im/feature/IScaleView;

    if-eqz v10, :cond_37

    .line 419
    move-object v0, v5

    check-cast v0, Landroid/app/im/feature/IScaleView;

    move-object v7, v0
    :try_end_5a
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_5a} :catch_64

    .line 431
    packed-switch p1, :pswitch_data_7c

    goto :goto_37

    .line 433
    :pswitch_5e
    move-object/from16 v0, p4

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_37

    .line 425
    .end local v5    # "obj":Landroid/app/im/feature/IInjection;
    :catch_64
    move-exception v3

    .line 426
    .local v3, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_37

    .line 436
    .end local v3    # "exp":Ljava/lang/ClassCastException;
    .restart local v5    # "obj":Landroid/app/im/feature/IInjection;
    :pswitch_69
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onScale(Landroid/view/ScaleGestureDetector;)V

    goto :goto_37

    .line 439
    :pswitch_6f
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_37

    .line 442
    :pswitch_75
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Landroid/app/im/feature/IScaleView;->onScaleBegin(Landroid/view/ScaleGestureDetector;)V

    goto :goto_37

    .line 431
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_69
        :pswitch_6f
        :pswitch_75
    .end packed-switch
.end method

.method private tabHostController(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 15
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tabId"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-boolean v9, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v9, :cond_5

    .line 520
    :cond_4
    return-void

    .line 481
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 482
    .local v7, "targetClassName":Ljava/lang/String;
    iget-object v9, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 485
    .local v8, "targetHasFeature":Z
    if-eqz v8, :cond_4

    .line 486
    iget-object v9, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    sget-object v10, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v10}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 488
    .local v2, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 491
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 494
    .local v1, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v6, 0x0

    .line 496
    .local v6, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v11}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v5

    .line 499
    .local v5, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v5, :cond_35

    .line 503
    instance-of v9, v5, Landroid/app/im/feature/IDynamicView;

    if-eqz v9, :cond_35

    .line 504
    move-object v0, v5

    check-cast v0, Landroid/app/im/feature/IDynamicView;

    move-object v6, v0
    :try_end_58
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_58} :catch_5c

    .line 516
    invoke-interface {v6, p2}, Landroid/app/im/feature/IDynamicView;->onTabChanged(Ljava/lang/String;)V

    goto :goto_35

    .line 510
    .end local v5    # "obj":Landroid/app/im/feature/IInjection;
    :catch_5c
    move-exception v3

    .line 511
    .local v3, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_35
.end method


# virtual methods
.method public dispatchActionBarSpinnerEvent(Ljava/lang/Object;IJ)Z
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/im/InjectionManager;->actionBarSpinnerController(Ljava/lang/Object;IJ)Z

    move-result v0

    return v0
.end method

.method public dispatchAdapterEvent(Ljava/lang/Object;ILandroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 16
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "adapterEvent"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "position"    # I
    .param p6, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 474
    .local p3, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/im/InjectionManager;->adapterEventController(ILjava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public dispatchBuildHeader(Ljava/lang/Object;Ljava/util/List;)V
    .registers 13
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 916
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-boolean v7, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-eqz v7, :cond_14

    .line 917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 918
    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 923
    .local v6, "targetHasFeature":Z
    if-nez v6, :cond_15

    .line 951
    .end local v5    # "targetClassName":Ljava/lang/String;
    .end local v6    # "targetHasFeature":Z
    :cond_14
    return-void

    .line 926
    .restart local v5    # "targetClassName":Ljava/lang/String;
    .restart local v6    # "targetHasFeature":Z
    :cond_15
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    sget-object v8, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE_HEADER:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v8}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 931
    .local v3, "preferenceHeaderSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 932
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 933
    .local v2, "preferenceHeaderSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v4, 0x0

    .line 935
    .local v4, "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    :try_start_42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v4

    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    check-cast v4, Landroid/app/im/feature/IPreferenceHeader;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_50} :catch_56

    .line 944
    .restart local v4    # "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    if-eqz v4, :cond_14

    .line 947
    invoke-interface {v4, p2}, Landroid/app/im/feature/IPreferenceHeader;->onBuildHeader(Ljava/util/List;)V

    goto :goto_35

    .line 939
    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreferenceHeader;
    :catch_56
    move-exception v0

    .line 940
    .local v0, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_35
.end method

.method public dispatchContentProviderCall(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projectionIn"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct/range {p0 .. p7}, Landroid/app/im/InjectionManager;->contentProviderController(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public dispatchContextItemSelected(Ljava/lang/Object;Landroid/view/MenuItem;)Z
    .registers 11
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 751
    const/4 v1, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/app/im/InjectionManager;->contextMenuController(ILjava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchCreateContextMenu(Ljava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Z)V
    .registers 14
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "menu"    # Landroid/view/ContextMenu;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .param p5, "isFragment"    # Z

    .prologue
    .line 742
    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/im/InjectionManager;->contextMenuController(ILjava/lang/Object;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem;Z)Z

    .line 744
    return-void
.end method

.method public dispatchCreateOptionsMenu(Ljava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Z)Z
    .registers 12
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;
    .param p4, "isFragment"    # Z

    .prologue
    .line 295
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/im/InjectionManager;->optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsItemSelected(Ljava/lang/Object;Landroid/view/MenuItem;)Z
    .registers 10
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 383
    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/im/InjectionManager;->optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/content/res/Configuration;)V
    .registers 19
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetObject"    # Ljava/lang/Object;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1011
    iget-boolean v12, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v12, :cond_5

    .line 1055
    :cond_4
    return-void

    .line 1014
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1015
    .local v10, "targetClassName":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 1016
    .local v11, "targetHasFeature":Z
    if-eqz v11, :cond_4

    .line 1022
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1023
    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1031
    .local v2, "category":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1033
    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 1034
    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1036
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    .line 1041
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v12, v13, v14}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v9

    .line 1046
    .local v9, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v9, :cond_50

    .line 1048
    sget-object v12, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_9e

    goto :goto_50

    .line 1050
    :pswitch_98
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/app/im/feature/IInjection;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_50

    .line 1048
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_98
    .end packed-switch
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;Landroid/os/Bundle;Z)V
    .registers 21
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetObject"    # Ljava/lang/Object;
    .param p3, "state"    # Landroid/os/Bundle;
    .param p4, "isFragment"    # Z

    .prologue
    .line 1217
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v13, :cond_7

    .line 1279
    :cond_6
    return-void

    .line 1220
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1221
    .local v11, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 1222
    .local v12, "targetHasFeature":Z
    if-eqz v12, :cond_6

    .line 1228
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1229
    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1237
    .local v2, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1238
    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 1239
    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1240
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_58

    .line 1245
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v9

    .line 1251
    .local v9, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v9, :cond_58

    .line 1253
    const/4 v10, 0x0

    .line 1254
    .local v10, "targetActivity":Landroid/app/Activity;
    if-eqz p4, :cond_bb

    move-object/from16 v13, p2

    .line 1255
    check-cast v13, Landroid/app/Fragment;

    invoke-virtual {v13}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 1259
    :goto_a1
    sget-object v13, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_ce

    goto :goto_58

    .line 1261
    :pswitch_ad
    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/app/im/InjectionManager;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v13, v0}, Landroid/app/im/feature/IInjection;->onCreate(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_58

    :cond_bb
    move-object/from16 v10, p2

    .line 1257
    check-cast v10, Landroid/app/Activity;

    goto :goto_a1

    .line 1268
    :pswitch_c0
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/app/im/feature/IInjection;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_58

    .line 1271
    :pswitch_c6
    if-nez p4, :cond_58

    .line 1274
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/app/im/feature/IInjection;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_58

    .line 1259
    :pswitch_data_ce
    .packed-switch 0x9
        :pswitch_ad
        :pswitch_c0
        :pswitch_c6
    .end packed-switch
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 19
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetClassName"    # Ljava/lang/String;
    .param p3, "targetObject"    # Ljava/lang/Object;

    .prologue
    .line 1071
    iget-boolean v12, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v12, :cond_5

    .line 1138
    :cond_4
    return-void

    .line 1077
    :cond_5
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 1078
    .local v11, "targetHasFeature":Z
    if-eqz v11, :cond_4

    .line 1084
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1085
    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1091
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1093
    .local v2, "category":Ljava/lang/String;
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1094
    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 1095
    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1097
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4e

    .line 1102
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-direct {p0, v12, v13, v14}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v10

    .line 1107
    .local v10, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v10, :cond_4e

    .line 1110
    sget-object v12, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_d4

    goto :goto_4e

    .line 1112
    :pswitch_98
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onStart()V

    goto :goto_4e

    .line 1115
    :pswitch_9c
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onRestart()V

    goto :goto_4e

    .line 1118
    :pswitch_a0
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onStop()V

    goto :goto_4e

    .line 1121
    :pswitch_a4
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onDestroy()V

    .line 1122
    iget-object v12, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/im/feature/IInjection;

    .line 1128
    .local v9, "removed":Landroid/app/im/feature/IInjection;
    goto :goto_4e

    .line 1130
    .end local v9    # "removed":Landroid/app/im/feature/IInjection;
    :pswitch_cb
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onPause()V

    goto :goto_4e

    .line 1133
    :pswitch_cf
    invoke-interface {v10}, Landroid/app/im/feature/IInjection;->onResume()V

    goto/16 :goto_4e

    .line 1110
    :pswitch_data_d4
    .packed-switch 0x2
        :pswitch_98
        :pswitch_9c
        :pswitch_a0
        :pswitch_a4
        :pswitch_cb
        :pswitch_cf
    .end packed-switch
.end method

.method public dispatchParentCallToFeature(Landroid/app/im/InjectionConstants$DispatchParentCall;Ljava/lang/Object;)Z
    .registers 19
    .param p1, "type"    # Landroid/app/im/InjectionConstants$DispatchParentCall;
    .param p2, "targetObject"    # Ljava/lang/Object;

    .prologue
    .line 1150
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-nez v13, :cond_8

    .line 1151
    const/4 v10, 0x0

    .line 1199
    :goto_7
    return v10

    .line 1153
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1154
    .local v11, "targetClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 1155
    .local v12, "targetHasFeature":Z
    if-nez v12, :cond_1c

    .line 1158
    const/4 v10, 0x0

    goto :goto_7

    .line 1161
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1162
    .local v3, "categoryList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_32

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_34

    .line 1163
    :cond_32
    const/4 v10, 0x0

    goto :goto_7

    .line 1168
    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v1, "calledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1170
    .local v2, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1172
    .local v4, "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    const/4 v10, 0x0

    .line 1173
    .local v10, "status":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 1174
    .local v5, "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1175
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5e

    .line 1180
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Landroid/app/im/InjectionManager;->getFeatureSourceObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v9

    .line 1186
    .local v9, "sourceObject":Landroid/app/im/feature/IInjection;
    if-eqz v9, :cond_5e

    .line 1188
    sget-object v13, Landroid/app/im/InjectionManager$1;->$SwitchMap$android$app$im$InjectionConstants$DispatchParentCall:[I

    invoke-virtual/range {p1 .. p1}, Landroid/app/im/InjectionConstants$DispatchParentCall;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_ba

    .line 1193
    :goto_a7
    const/4 v13, 0x1

    if-ne v10, v13, :cond_5e

    sget-object v13, Landroid/app/im/InjectionConstants$DispatchParentCall;->ONSEARCHREQUESTED:Landroid/app/im/InjectionConstants$DispatchParentCall;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5e

    goto/16 :goto_7

    .line 1190
    :pswitch_b2
    invoke-interface {v9}, Landroid/app/im/feature/IInjection;->onSearchRequested()Z

    move-result v10

    goto :goto_a7

    .line 1199
    .end local v2    # "category":Ljava/lang/String;
    .end local v4    # "featureList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    .end local v5    # "featureSource":Landroid/app/im/InjectionManager$FeatureInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "sourceObject":Landroid/app/im/feature/IInjection;
    .end local v10    # "status":Z
    :cond_b7
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1188
    :pswitch_data_ba
    .packed-switch 0x8
        :pswitch_b2
    .end packed-switch
.end method

.method public dispatchPreferences(Ljava/lang/Object;)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 960
    iget-boolean v7, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-eqz v7, :cond_14

    .line 961
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 962
    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 967
    .local v6, "targetHasFeature":Z
    if-nez v6, :cond_15

    .line 998
    .end local v5    # "targetClassName":Ljava/lang/String;
    .end local v6    # "targetHasFeature":Z
    :cond_14
    return-void

    .line 970
    .restart local v5    # "targetClassName":Ljava/lang/String;
    .restart local v6    # "targetHasFeature":Z
    :cond_15
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    sget-object v8, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v8}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 975
    .local v3, "preferenceSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 976
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 977
    .local v2, "preferenceSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v4, 0x0

    .line 979
    .local v4, "sourceObject":Landroid/app/im/feature/IPreference;
    :try_start_42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v4

    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    check-cast v4, Landroid/app/im/feature/IPreference;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_50} :catch_5d

    .line 987
    .restart local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    if-eqz v4, :cond_14

    .line 989
    instance-of v7, v4, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_62

    move-object v7, p1

    .line 990
    check-cast v7, Landroid/preference/PreferenceActivity;

    invoke-interface {v4, v7}, Landroid/app/im/feature/IPreference;->addPreference(Landroid/preference/PreferenceActivity;)V

    goto :goto_35

    .line 982
    .end local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    :catch_5d
    move-exception v0

    .line 983
    .local v0, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_35

    .line 991
    .end local v0    # "exp":Ljava/lang/ClassCastException;
    .restart local v4    # "sourceObject":Landroid/app/im/feature/IPreference;
    :cond_62
    instance-of v7, v4, Landroid/preference/PreferenceFragment;

    if-eqz v7, :cond_35

    move-object v7, p1

    .line 992
    check-cast v7, Landroid/preference/PreferenceFragment;

    invoke-interface {v4, v7}, Landroid/app/im/feature/IPreference;->addPreference(Landroid/preference/PreferenceFragment;)V

    goto :goto_35
.end method

.method public dispatchPrepareOptionsMenu(Ljava/lang/Object;Landroid/view/Menu;)Z
    .registers 10
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 304
    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/app/im/InjectionManager;->optionsMenuController(ILjava/lang/Object;Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/view/MenuItem;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchScaleEvent(Ljava/lang/Object;ILandroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "scaleEvent"    # I
    .param p3, "scaleGD"    # Landroid/view/ScaleGestureDetector;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    invoke-direct {p0, p2, p1, p3, p4}, Landroid/app/im/InjectionManager;->scaleEventController(ILjava/lang/Object;Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTabHostEvent(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tabId"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Landroid/app/im/InjectionManager;->tabHostController(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public dispatchViewCreated(Ljava/lang/Object;Z)V
    .registers 13
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "isFragment"    # Z

    .prologue
    .line 845
    iget-boolean v7, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    if-eqz v7, :cond_14

    .line 846
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 847
    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 850
    .local v6, "targetHasFeature":Z
    if-nez v6, :cond_15

    .line 879
    .end local v5    # "targetClassName":Ljava/lang/String;
    .end local v6    # "targetHasFeature":Z
    :cond_14
    return-void

    .line 852
    .restart local v5    # "targetClassName":Ljava/lang/String;
    .restart local v6    # "targetHasFeature":Z
    :cond_15
    iget-object v7, p0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    sget-object v8, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v8}, Landroid/app/im/InjectionConstants$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 855
    .local v1, "dynamicMenuSourceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 856
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/im/InjectionManager$FeatureInfo;

    .line 857
    .local v0, "dynamicMenuSource":Landroid/app/im/InjectionManager$FeatureInfo;
    const/4 v4, 0x0

    .line 859
    .local v4, "sourceObject":Landroid/app/im/feature/IDynamicView;
    :try_start_42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/app/im/InjectionManager$FeatureInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/app/im/InjectionManager$FeatureInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/im/InjectionManager;->getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;

    move-result-object v4

    .end local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    check-cast v4, Landroid/app/im/feature/IDynamicView;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_50} :catch_5f

    .line 867
    .restart local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    if-eqz v4, :cond_14

    .line 869
    if-eqz p2, :cond_64

    move-object v7, p1

    .line 870
    check-cast v7, Landroid/app/Fragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/app/im/feature/IDynamicView;->onViewCreated(Landroid/view/View;)V

    goto :goto_35

    .line 862
    .end local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    :catch_5f
    move-exception v2

    .line 863
    .local v2, "exp":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_35

    .end local v2    # "exp":Ljava/lang/ClassCastException;
    .restart local v4    # "sourceObject":Landroid/app/im/feature/IDynamicView;
    :cond_64
    move-object v7, p1

    .line 873
    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/app/im/feature/IDynamicView;->onViewCreated(Landroid/view/View;)V

    goto :goto_35
.end method

.method public fillFeatureStoreMap(Ljava/lang/String;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1288
    :try_start_0
    invoke-static {}, Landroid/app/im/InjectionManager;->getService()Landroid/app/im/IInjectionManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/im/IInjectionManager;->getPackageFeatures(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    .line 1291
    .local v15, "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 1292
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    .line 1338
    .end local v15    # "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_1e
    :goto_1e
    return-void

    .line 1295
    .restart local v15    # "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_1f
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    .line 1296
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1298
    .local v4, "activitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1299
    .local v3, "activity":Ljava/lang/String;
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1302
    .local v7, "categorySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1304
    .local v5, "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    if-nez v5, :cond_65

    .line 1305
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1306
    .restart local v5    # "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/im/InjectionManager;->featureStore:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    :cond_65
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_69
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1309
    .local v6, "category":Ljava/lang/String;
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1312
    .local v10, "featureSource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1313
    .local v8, "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    if-nez v8, :cond_93

    .line 1314
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .restart local v8    # "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :cond_93
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_97
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_69

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1322
    .local v17, "st":Ljava/lang/String;
    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1324
    .local v16, "source":[Ljava/lang/String;
    new-instance v11, Landroid/app/im/InjectionManager$FeatureInfo;

    const/16 v18, 0x0

    aget-object v18, v16, v18

    const/16 v19, 0x1

    aget-object v19, v16, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Landroid/app/im/InjectionManager$FeatureInfo;-><init>(Landroid/app/im/InjectionManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    .local v11, "featureinfo":Landroid/app/im/InjectionManager$FeatureInfo;
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_bf} :catch_c0

    goto :goto_97

    .line 1335
    .end local v3    # "activity":Ljava/lang/String;
    .end local v4    # "activitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "activitymap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;>;"
    .end local v6    # "category":Ljava/lang/String;
    .end local v7    # "categorySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "categorymap":Ljava/util/List;, "Ljava/util/List<Landroid/app/im/InjectionManager$FeatureInfo;>;"
    .end local v10    # "featureSource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "featureinfo":Landroid/app/im/InjectionManager$FeatureInfo;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "packageFeatureInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v16    # "source":[Ljava/lang/String;
    .end local v17    # "st":Ljava/lang/String;
    :catch_c0
    move-exception v9

    .line 1336
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1e
.end method

.method public getClassInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/im/feature/IInjection;
    .registers 12
    .param p1, "targetClassName"    # Ljava/lang/String;
    .param p2, "sourcePkgName"    # Ljava/lang/String;
    .param p3, "sourceClassName"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v6, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    if-eqz v6, :cond_2c

    iget-object v6, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2c

    .line 240
    iget-object v6, p0, Landroid/app/im/InjectionManager;->featureSourceStore:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/im/feature/IInjection;

    .line 242
    .local v4, "obj":Landroid/app/im/feature/IInjection;
    if-eqz v4, :cond_2c

    .line 285
    .end local v4    # "obj":Landroid/app/im/feature/IInjection;
    :goto_2b
    return-object v4

    .line 247
    :cond_2c
    const/4 v5, 0x0

    .line 262
    .local v5, "sourceObject":Landroid/app/im/feature/IInjection;
    iget-object v2, p0, Landroid/app/im/InjectionManager;->coreFeatureClassLoader:Ldalvik/system/PathClassLoader;

    .line 264
    .local v2, "mPathClass":Ldalvik/system/PathClassLoader;
    if-nez v2, :cond_33

    .line 265
    const/4 v4, 0x0

    goto :goto_2b

    .line 271
    :cond_33
    :try_start_33
    invoke-virtual {v2, p3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 272
    .local v3, "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 273
    .local v4, "obj":Ljava/lang/Object;
    instance-of v6, v4, Landroid/app/im/feature/IInjection;

    if-eqz v6, :cond_43

    .line 274
    move-object v0, v4

    check-cast v0, Landroid/app/im/feature/IInjection;

    move-object v5, v0
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_43} :catch_45
    .catch Ljava/lang/InstantiationException; {:try_start_33 .. :try_end_43} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_43} :catch_4f

    .end local v3    # "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_43
    :goto_43
    move-object v4, v5

    .line 285
    goto :goto_2b

    .line 276
    :catch_45
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_43

    .line 278
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4a
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_43

    .line 280
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_4f
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_43
.end method

.method public getPathClassLoader(Ljava/lang/String;)Ldalvik/system/PathClassLoader;
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .local v2, "pathCl":Ldalvik/system/PathClassLoader;
    :try_start_2
    iget-object v4, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 222
    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v4, p0, Landroid/app/im/InjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1a} :catch_1c

    .end local v2    # "pathCl":Ldalvik/system/PathClassLoader;
    .local v3, "pathCl":Ldalvik/system/PathClassLoader;
    move-object v2, v3

    .line 226
    .end local v3    # "pathCl":Ldalvik/system/PathClassLoader;
    .restart local v2    # "pathCl":Ldalvik/system/PathClassLoader;
    :goto_1b
    return-object v2

    .line 223
    :catch_1c
    move-exception v0

    .line 224
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1b
.end method

.method public isPackageHasFeatures()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/app/im/InjectionManager;->packageHasFeatures:Z

    return v0
.end method
