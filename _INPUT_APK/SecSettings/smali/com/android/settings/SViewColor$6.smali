.class Lcom/android/settings/SViewColor$6;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 366
    .local v0, "mClickButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 416
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    .line 418
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4}, Lcom/android/settings/SViewColor;->access$800(Lcom/android/settings/SViewColor;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x10805ee

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 419
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4}, Lcom/android/settings/SViewColor;->access$1000(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v5}, Lcom/android/settings/SViewColor;->access$500(Lcom/android/settings/SViewColor;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 420
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4, v6}, Lcom/android/settings/SViewColor;->access$602(Lcom/android/settings/SViewColor;Z)Z

    .line 421
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)V

    .line 422
    :goto_1
    return-void

    .line 368
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 374
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 377
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 380
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 383
    :pswitch_5
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 386
    :pswitch_6
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 389
    :pswitch_7
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    sget v5, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    invoke-static {v4, v5}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 392
    :pswitch_8
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4, v7}, Lcom/android/settings/SViewColor;->access$602(Lcom/android/settings/SViewColor;Z)Z

    .line 393
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)V

    .line 394
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4}, Lcom/android/settings/SViewColor;->access$800(Lcom/android/settings/SViewColor;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x4d

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 395
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v4}, Lcom/android/settings/SViewColor;->access$1000(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v5}, Lcom/android/settings/SViewColor;->access$900(Lcom/android/settings/SViewColor;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 398
    :pswitch_9
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v4}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "mPath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 400
    const-string v2, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_wallpaper.jpg"

    .line 403
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 405
    .local v3, "wallpaperUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v4, "output"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    const-string v4, "aspectX"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v4, "aspectY"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v4, "scale"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    iget-object v4, p0, Lcom/android/settings/SViewColor$6;->this$0:Lcom/android/settings/SViewColor;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v1, v5}, Lcom/android/settings/SViewColor;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 402
    .end local v1    # "mIntent":Landroid/content/Intent;
    .end local v3    # "wallpaperUri":Landroid/net/Uri;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cover_wallpaper.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 366
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
