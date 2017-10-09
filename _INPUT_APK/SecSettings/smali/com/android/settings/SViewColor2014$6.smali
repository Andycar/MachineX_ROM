.class Lcom/android/settings/SViewColor2014$6;
.super Ljava/lang/Object;
.source "SViewColor2014.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    move-object/from16 v6, p1

    check-cast v6, Landroid/widget/ImageButton;

    .line 418
    .local v6, "mClickButton":Landroid/widget/ImageButton;
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const v14, 0x7f0205d9

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 512
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v13}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$800(Lcom/android/settings/SViewColor2014;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    .line 514
    :goto_1
    return-void

    .line 420
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 421
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    .line 424
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    .line 428
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 429
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto :goto_0

    .line 432
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 436
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x4

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x4

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 440
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x5

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x5

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 444
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x6

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x6

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 448
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 449
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    goto/16 :goto_0

    .line 452
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$900(Lcom/android/settings/SViewColor2014;)[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v13}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v14}, Lcom/android/settings/SViewColor2014;->access$1000(Lcom/android/settings/SViewColor2014;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 458
    :pswitch_9
    const-string v4, "cover_wallpaper.jpg"

    .line 459
    .local v4, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v13}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sview_bg_wallpaper_path"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, "mPath":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 462
    const-string v8, "/data/data/com.android.systemui/files/wallpaper_images"

    .line 465
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v9, "mfilePath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 467
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 470
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 473
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_2
    :goto_2
    const-string v13, "SViewColor2014"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mImageButtonListner mPath : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 481
    .local v11, "wallpaperUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v7, "mIntent":Landroid/content/Intent;
    const-string v13, "image/*"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v13, "com.sec.android.gallery3d"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v13, "crop"

    const-string v14, "true"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v13, "set_sview"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const-string v13, "output"

    invoke-virtual {v7, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    const/4 v12, 0x1

    .line 488
    .local v12, "width":I
    const/4 v5, 0x1

    .line 490
    .local v5, "height":I
    :try_start_1
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 491
    .local v1, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v10

    .line 492
    .local v10, "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v10, :cond_3

    .line 493
    invoke-virtual {v10}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v12

    .line 494
    invoke-virtual {v10}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v5

    .line 495
    const-string v13, "SViewColor2014"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scoverState width : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ height : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :cond_3
    const-string v13, "aspectX"

    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v13, "aspectY"

    invoke-virtual {v7, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v13, "SViewColor2014"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gallery3d intent - aspectX : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ aspectY : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v1    # "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    .end local v10    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :goto_3
    const-string v13, "scale"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SViewColor2014$6;->this$0:Lcom/android/settings/SViewColor2014;

    const/16 v14, 0x3e9

    invoke-virtual {v13, v7, v14}, Lcom/android/settings/SViewColor2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 474
    .end local v5    # "height":I
    .end local v7    # "mIntent":Landroid/content/Intent;
    .end local v11    # "wallpaperUri":Landroid/net/Uri;
    .end local v12    # "width":I
    :catch_0
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "SViewColor2014"

    const-string v14, "createNewfile---->error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 497
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "height":I
    .restart local v7    # "mIntent":Landroid/content/Intent;
    .restart local v11    # "wallpaperUri":Landroid/net/Uri;
    .restart local v12    # "width":I
    :catch_1
    move-exception v2

    .line 498
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v13, "SViewColor2014"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    const-string v13, "aspectX"

    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v13, "aspectY"

    invoke-virtual {v7, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v13, "SViewColor2014"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gallery3d intent - aspectX : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ aspectY : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 500
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    const-string v14, "aspectX"

    invoke-virtual {v7, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v14, "aspectY"

    invoke-virtual {v7, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v14, "SViewColor2014"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gallery3d intent - aspectX : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/ aspectY : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    throw v13

    .line 418
    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
