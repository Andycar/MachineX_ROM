.class Lcom/android/internal/app/PlatLogoActivity$2$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/PlatLogoActivity$2;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$2;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v1, v1, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_d

    const/4 v1, 0x0

    .line 198
    :goto_c
    return v1

    .line 175
    :cond_d
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "egg_mode"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_28

    .line 179
    const-string v1, "egg_mode"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 183
    :cond_28
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/internal/app/PlatLogoActivity$2$1$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/PlatLogoActivity$2$1$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$2$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 198
    const/4 v1, 0x1

    goto :goto_c
.end method
