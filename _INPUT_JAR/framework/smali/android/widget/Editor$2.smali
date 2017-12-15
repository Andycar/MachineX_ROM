.class Landroid/widget/Editor$2;
.super Landroid/content/BroadcastReceiver;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    .prologue
    .line 6107
    iput-object p1, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6109
    const-string v6, "caller"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6110
    .local v0, "caller":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6112
    .local v5, "target_text":Ljava/lang/String;
    if-eqz v0, :cond_94

    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 6113
    const-string/jumbo v6, "result_code"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6115
    .local v2, "resultCode":I
    const/4 v6, 0x1

    if-ne v2, v6, :cond_68

    .line 6116
    const-string/jumbo v6, "target_text"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6117
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 6118
    .local v4, "selStart":I
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 6119
    .local v3, "selEnd":I
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_start:I
    invoke-static {v6}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v6

    if-le v6, v4, :cond_46

    .line 6120
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->selection_start:I
    invoke-static {v6, v4}, Landroid/widget/Editor;->access$4102(Landroid/widget/Editor;I)I

    .line 6122
    :cond_46
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_end:I
    invoke-static {v6}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)I

    move-result v6

    if-le v6, v3, :cond_53

    .line 6123
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->selection_end:I
    invoke-static {v6, v3}, Landroid/widget/Editor;->access$4202(Landroid/widget/Editor;I)I

    .line 6125
    :cond_53
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_start:I
    invoke-static {v7}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_end:I
    invoke-static {v8}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)I

    move-result v8

    invoke-virtual {v6, v7, v8, v5}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 6128
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_68
    const-string v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "target text = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6132
    :try_start_81
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v7}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_94} :catch_95

    .line 6138
    .end local v2    # "resultCode":I
    :cond_94
    :goto_94
    return-void

    .line 6133
    .restart local v2    # "resultCode":I
    :catch_95
    move-exception v1

    .line 6134
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_94
.end method
