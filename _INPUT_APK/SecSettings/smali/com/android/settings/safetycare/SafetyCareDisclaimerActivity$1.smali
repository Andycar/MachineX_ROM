.class Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;
.super Ljava/lang/Object;
.source "SafetyCareDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$000(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    .line 98
    return-void
.end method
