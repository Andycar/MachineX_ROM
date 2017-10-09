.class Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;
.super Landroid/database/ContentObserver;
.source "SViewColor2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverWallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method public constructor <init>(Lcom/android/settings/SViewColor2014;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    .line 682
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 683
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 687
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$700(Lcom/android/settings/SViewColor2014;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0, v3}, Lcom/android/settings/SViewColor2014;->access$702(Lcom/android/settings/SViewColor2014;Z)Z

    .line 707
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v1}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/SViewColor2014;->access$302(Lcom/android/settings/SViewColor2014;I)I

    .line 696
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v2, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v2}, Lcom/android/settings/SViewColor2014;->access$300(Lcom/android/settings/SViewColor2014;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SViewColor2014;->ConvertDBIdtoResId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/SViewColor2014;->access$802(Lcom/android/settings/SViewColor2014;I)I

    .line 698
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0, v3}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$300(Lcom/android/settings/SViewColor2014;)I

    move-result v0

    sget v1, Lcom/android/settings/SViewColor2014;->WALLPAPER_PREPARED_DB_ID:I

    if-ne v0, v1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$1000(Lcom/android/settings/SViewColor2014;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 706
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    iget-object v0, v0, Lcom/android/settings/SViewColor2014;->mCutsomButtonBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$1200(Lcom/android/settings/SViewColor2014;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0}, Lcom/android/settings/SViewColor2014;->access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$800(Lcom/android/settings/SViewColor2014;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
