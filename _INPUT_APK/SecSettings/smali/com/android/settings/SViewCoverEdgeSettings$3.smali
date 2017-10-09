.class Lcom/android/settings/SViewCoverEdgeSettings$3;
.super Ljava/lang/Object;
.source "SViewCoverEdgeSettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewCoverEdgeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewCoverEdgeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewCoverEdgeSettings;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x1

    .line 277
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-static {v1}, Lcom/android/settings/SViewCoverEdgeSettings;->access$000(Lcom/android/settings/SViewCoverEdgeSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 280
    check-cast v0, Landroid/widget/ImageButton;

    .line 281
    .local v0, "mClickButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-static {v1, v2}, Lcom/android/settings/SViewCoverEdgeSettings;->access$302(Lcom/android/settings/SViewCoverEdgeSettings;I)I

    .line 298
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v1}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_edge_wallpaper_type"

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-static {v3}, Lcom/android/settings/SViewCoverEdgeSettings;->access$300(Lcom/android/settings/SViewCoverEdgeSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/SViewCoverEdgeSettings;->access$200(Lcom/android/settings/SViewCoverEdgeSettings;Z)V

    goto :goto_0

    .line 283
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-static {v1, v2}, Lcom/android/settings/SViewCoverEdgeSettings;->access$302(Lcom/android/settings/SViewCoverEdgeSettings;I)I

    goto :goto_1

    .line 286
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/SViewCoverEdgeSettings;->access$302(Lcom/android/settings/SViewCoverEdgeSettings;I)I

    goto :goto_1

    .line 289
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/settings/SViewCoverEdgeSettings;->access$302(Lcom/android/settings/SViewCoverEdgeSettings;I)I

    goto :goto_1

    .line 292
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$3;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/settings/SViewCoverEdgeSettings;->access$302(Lcom/android/settings/SViewCoverEdgeSettings;I)I

    goto :goto_1

    .line 281
    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
