.class Lcom/android/settings/SViewMiniWallpaper$4;
.super Ljava/lang/Object;
.source "SViewMiniWallpaper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewMiniWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewMiniWallpaper;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewMiniWallpaper;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 157
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 158
    .local v0, "mFocusButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 175
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-static {v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->access$002(Lcom/android/settings/SViewMiniWallpaper;I)I

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-virtual {v1}, Lcom/android/settings/SViewMiniWallpaper;->setPreview()V

    .line 179
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-static {v1}, Lcom/android/settings/SViewMiniWallpaper;->access$100(Lcom/android/settings/SViewMiniWallpaper;)V

    .line 180
    return-void

    .line 160
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    invoke-static {v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->access$002(Lcom/android/settings/SViewMiniWallpaper;I)I

    goto :goto_0

    .line 163
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->access$002(Lcom/android/settings/SViewMiniWallpaper;I)I

    goto :goto_0

    .line 166
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->access$002(Lcom/android/settings/SViewMiniWallpaper;I)I

    goto :goto_0

    .line 169
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->access$002(Lcom/android/settings/SViewMiniWallpaper;I)I

    goto :goto_0

    .line 172
    :sswitch_4
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper$4;->this$0:Lcom/android/settings/SViewMiniWallpaper;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->access$002(Lcom/android/settings/SViewMiniWallpaper;I)I

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c6 -> :sswitch_1
        0x7f1000c7 -> :sswitch_2
        0x7f1000c8 -> :sswitch_3
        0x7f1000c9 -> :sswitch_4
        0x7f1004b2 -> :sswitch_0
    .end sparse-switch
.end method
