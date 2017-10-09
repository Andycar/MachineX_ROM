.class Lcom/android/settings/PreviewFragment$2;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreviewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/PreviewFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 214
    const-string v0, "UnlockEffect"

    iget-object v1, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v1, v1, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v2, v2, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-static {v3}, Lcom/android/settings/PreviewFragment;->access$000(Lcom/android/settings/PreviewFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 227
    return-void

    .line 217
    :cond_1
    const-string v0, "ClockSize"

    iget-object v1, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v1, v1, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_clock_size"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v2, v2, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-static {v3}, Lcom/android/settings/PreviewFragment;->access$000(Lcom/android/settings/PreviewFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 220
    :cond_2
    const-string v0, "PatternType"

    iget-object v1, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v1, v1, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_pattern_type"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v2, v2, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-static {v3}, Lcom/android/settings/PreviewFragment;->access$000(Lcom/android/settings/PreviewFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 223
    :cond_3
    const-string v0, "ChargingEffect"

    iget-object v1, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v1, v1, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-virtual {v0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_charging_effect"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    iget-object v2, v2, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/PreviewFragment$2;->this$0:Lcom/android/settings/PreviewFragment;

    invoke-static {v3}, Lcom/android/settings/PreviewFragment;->access$000(Lcom/android/settings/PreviewFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
