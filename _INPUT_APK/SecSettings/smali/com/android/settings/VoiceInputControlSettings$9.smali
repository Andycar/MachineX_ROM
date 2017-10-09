.class Lcom/android/settings/VoiceInputControlSettings$9;
.super Ljava/lang/Object;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1055
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 1040
    if-nez p2, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    if-ne p2, v1, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1045
    :cond_2
    if-ne p2, v2, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$9;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
