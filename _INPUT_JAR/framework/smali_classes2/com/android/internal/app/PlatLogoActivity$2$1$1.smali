.class Lcom/android/internal/app/PlatLogoActivity$2$1$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$2$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$2$1;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10808000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.internal.category.PLATLOGO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1d} :catch_27

    .line 195
    :goto_1d
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$2$1;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity;->finish()V

    .line 196
    return-void

    .line 192
    :catch_27
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "PlatLogoActivity"

    const-string v2, "No more eggs."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
