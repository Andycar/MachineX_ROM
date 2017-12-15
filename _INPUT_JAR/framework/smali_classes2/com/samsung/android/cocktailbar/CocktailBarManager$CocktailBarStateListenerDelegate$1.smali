.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;
.super Landroid/os/Handler;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 996
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 999
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1000
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_56

    .line 1020
    :cond_d
    :goto_d
    return-void

    .line 1002
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 1003
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-eqz v1, :cond_d

    .line 1004
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 1005
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_VISIBILITY:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    .line 1006
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarVisibilityChanged(I)V

    .line 1009
    :cond_31
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_BACKGROUND_TYPE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_43

    .line 1010
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarBackgroundTypeChanged(I)V

    .line 1013
    :cond_43
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    sget v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->FLAG_CHANGE_POSITION:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;->onCocktailBarPositionChanged(I)V

    goto :goto_d

    .line 1000
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
