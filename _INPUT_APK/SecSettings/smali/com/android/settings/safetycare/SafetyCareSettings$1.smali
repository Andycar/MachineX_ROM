.class Lcom/android/settings/safetycare/SafetyCareSettings$1;
.super Landroid/os/Handler;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f0a1cbc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 129
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ce4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Lcom/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "sTitle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 133
    .local v1, "sMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$000(Lcom/android/settings/safetycare/SafetyCareSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ce6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a1ce7

    new-instance v5, Lcom/android/settings/safetycare/SafetyCareSettings$1$2;

    invoke-direct {v5, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$1$2;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/safetycare/SafetyCareSettings$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$1$1;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings$1;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$102(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 161
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$100(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 137
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ce5

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Lcom/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
