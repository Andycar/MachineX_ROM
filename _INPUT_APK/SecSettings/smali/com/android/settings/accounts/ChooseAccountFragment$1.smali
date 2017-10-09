.class Lcom/android/settings/accounts/ChooseAccountFragment$1;
.super Ljava/lang/Object;
.source "ChooseAccountFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v2, 0x1

    .line 145
    .local v2, "done":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 147
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 148
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_6

    .line 149
    const/4 v2, 0x0

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "addAccountOptions":Landroid/os/Bundle;
    const-string v5, "pendingIntent"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    const-string v5, "hasMultipleUsers"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 157
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 158
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 160
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$002(Lcom/android/settings/accounts/ChooseAccountFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 162
    :cond_0
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    .line 163
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    .line 175
    .end local v0    # "addAccountOptions":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    .line 191
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 165
    .restart local v0    # "addAccountOptions":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x1f7

    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v7}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$200(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "addAccountOptions":Landroid/os/Bundle;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    :try_start_2
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ChooseAccountFragment"

    const-string v6, "addAccount was canceled"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :cond_5
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto :goto_1

    .line 169
    .end local v3    # "e":Landroid/accounts/OperationCanceledException;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 170
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 171
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$002(Lcom/android/settings/accounts/ChooseAccountFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 178
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 179
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    :cond_7
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto :goto_1

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 181
    .local v3, "e":Landroid/accounts/AuthenticatorException;
    :try_start_5
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    :cond_8
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto/16 :goto_1

    .line 182
    .end local v3    # "e":Landroid/accounts/AuthenticatorException;
    :catch_3
    move-exception v3

    .line 184
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    :cond_9
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto/16 :goto_1

    .line 186
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_a

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-static {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 187
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    :cond_a
    throw v5
.end method
