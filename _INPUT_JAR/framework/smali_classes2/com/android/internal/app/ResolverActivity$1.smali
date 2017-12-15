.class Lcom/android/internal/app/ResolverActivity$1;
.super Landroid/os/Handler;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_46

    .line 275
    :cond_5
    :goto_5
    return-void

    .line 257
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 258
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 259
    .local v0, "mDevInfo":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z
    invoke-static {v1, v0}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    invoke-static {v1, v0}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    .line 264
    .end local v0    # "mDevInfo":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    :cond_29
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 269
    :sswitch_33
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/16 v2, 0x8

    # invokes: Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;I)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;I)V

    goto :goto_5

    .line 255
    :sswitch_data_46
    .sparse-switch
        0x3e8 -> :sswitch_6
        0x7d0 -> :sswitch_33
    .end sparse-switch
.end method
