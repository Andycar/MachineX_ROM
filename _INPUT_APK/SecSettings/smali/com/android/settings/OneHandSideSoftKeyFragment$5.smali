.class Lcom/android/settings/OneHandSideSoftKeyFragment$5;
.super Ljava/lang/Object;
.source "OneHandSideSoftKeyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandSideSoftKeyFragment;->showDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandSideSoftKeyFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$5;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$5;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-virtual {v0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 192
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment$5;->this$0:Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-virtual {v0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    return-void
.end method
