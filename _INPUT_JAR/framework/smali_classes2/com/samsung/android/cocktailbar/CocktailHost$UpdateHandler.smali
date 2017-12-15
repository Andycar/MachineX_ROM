.class Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;
.super Landroid/os/Handler;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailHost;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    .line 173
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_b6

    .line 235
    :goto_5
    return-void

    .line 179
    :sswitch_6
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$000(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V

    goto :goto_5

    .line 183
    :sswitch_14
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$100(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V

    goto :goto_5

    .line 187
    :sswitch_22
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->removeCocktail(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_5

    .line 191
    :sswitch_2c
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->showCocktail(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$300(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_5

    .line 195
    :sswitch_36
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->closeContextualCocktail(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$400(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto :goto_5

    .line 199
    :sswitch_48
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->viewDataChanged(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$500(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto :goto_5

    .line 203
    :sswitch_5a
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->updateToolLauncher(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$600(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    goto :goto_5

    .line 207
    :sswitch_62
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->notifyKeyguardState(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$700(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_5

    .line 211
    :sswitch_6c
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->switchDefaultCocktail(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$800(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    goto :goto_5

    .line 215
    :sswitch_74
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$900(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V

    goto :goto_5

    .line 219
    :sswitch_80
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->notifyWakeUpState(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$1000(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto/16 :goto_5

    .line 223
    :sswitch_93
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->setMode(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$1100(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto/16 :goto_5

    .line 227
    :sswitch_9e
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->setDisableTickerView(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$1200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto/16 :goto_5

    .line 231
    :sswitch_a9
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->notifyScreenTurnedOn(ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    invoke-static {v1, v2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$1300(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V

    goto/16 :goto_5

    .line 177
    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_14
        0x3 -> :sswitch_22
        0x4 -> :sswitch_2c
        0x5 -> :sswitch_36
        0x6 -> :sswitch_48
        0x7 -> :sswitch_5a
        0x9 -> :sswitch_9e
        0xa -> :sswitch_6c
        0xb -> :sswitch_93
        0xc -> :sswitch_74
        0x64 -> :sswitch_62
        0x65 -> :sswitch_80
        0x66 -> :sswitch_a9
    .end sparse-switch
.end method
