.class Lcom/android/settings/ClockMyprofileMenu$1;
.super Ljava/lang/Object;
.source "ClockMyprofileMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ClockMyprofileMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ClockMyprofileMenu;

.field final synthetic val$getCurrentLockScreenString:I


# direct methods
.method constructor <init>(Lcom/android/settings/ClockMyprofileMenu;I)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/ClockMyprofileMenu$1;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    iput p2, p0, Lcom/android/settings/ClockMyprofileMenu$1;->val$getCurrentLockScreenString:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu$1;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v0}, Lcom/android/settings/ClockMyprofileMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    iget-object v2, p0, Lcom/android/settings/ClockMyprofileMenu$1;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-static {v2}, Lcom/android/settings/ClockMyprofileMenu;->access$000(Lcom/android/settings/ClockMyprofileMenu;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget v0, p0, Lcom/android/settings/ClockMyprofileMenu$1;->val$getCurrentLockScreenString:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu$1;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v0}, Lcom/android/settings/ClockMyprofileMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu$1;->this$0:Lcom/android/settings/ClockMyprofileMenu;

    invoke-virtual {v0}, Lcom/android/settings/ClockMyprofileMenu;->finish()V

    .line 84
    return-void
.end method
