.class Lcom/android/settings/ClockMyprofileMenu$4;
.super Ljava/lang/Object;
.source "ClockMyprofileMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ClockMyprofileMenu;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ClockMyprofileMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/ClockMyprofileMenu;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/ClockMyprofileMenu$4;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/settings/ClockMyprofileMenu$4;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v1}, Lcom/android/settings/ClockMyprofileMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_enabled"

    iget-object v3, p0, Lcom/android/settings/ClockMyprofileMenu$4;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-static {v3}, Lcom/android/settings/ClockMyprofileMenu;->access$000(Lcom/android/settings/ClockMyprofileMenu;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object v1, p0, Lcom/android/settings/ClockMyprofileMenu$4;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v1}, Lcom/android/settings/ClockMyprofileMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v3, "getCurrentLockScreenString"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "getCurrentLockScreenString":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/settings/ClockMyprofileMenu$4;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v1}, Lcom/android/settings/ClockMyprofileMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ClockMyprofileMenu$4;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v1}, Lcom/android/settings/ClockMyprofileMenu;->finish()V

    .line 189
    return-void
.end method
