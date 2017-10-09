.class Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$2;
.super Ljava/lang/Object;
.source "DataConnectionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "argSwitch"    # Z

    .prologue
    .line 101
    if-eqz p2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$002(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;Z)Z

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;->access$002(Lcom/sec/android/app/SecSetupWizard/DataConnectionActivity;Z)Z

    goto :goto_0
.end method
