.class Lcom/android/settings/SViewColor$CoverWallpaperObserver;
.super Landroid/database/ContentObserver;
.source "SViewColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverWallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method public constructor <init>(Lcom/android/settings/SViewColor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    .line 539
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 540
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    iget-object v2, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v2}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "s_vew_cover_background_color"

    sget v4, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    .line 548
    iget-object v1, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    iget-object v2, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v2}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_wallpaper"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/settings/SViewColor;->access$602(Lcom/android/settings/SViewColor;Z)Z

    .line 549
    iget-object v0, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v0}, Lcom/android/settings/SViewColor;->access$1000(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$500(Lcom/android/settings/SViewColor;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v0}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v0}, Lcom/android/settings/SViewColor;->access$600(Lcom/android/settings/SViewColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v0}, Lcom/android/settings/SViewColor;->access$1000(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$900(Lcom/android/settings/SViewColor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    iget-object v0, v0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings/SViewColor$CoverWallpaperObserver;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$900(Lcom/android/settings/SViewColor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ColorButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 554
    return-void
.end method
