.class Lcom/android/settings/sim/SimSettings$SimPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

.field final synthetic val$dialogLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->val$dialogLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->val$dialogLayout:Landroid/view/View;

    const v3, 0x7f100288

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 344
    .local v1, "nameText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->val$dialogLayout:Landroid/view/View;

    const v3, 0x7f10028a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 347
    .local v0, "displayNumbers":Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$000(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    iget-wide v4, v3, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v2, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayNumberFormat(IJ)I

    .line 352
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$000(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 353
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$000(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    iget-object v2, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$000(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    iget-wide v4, v3, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-static {v2, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I

    .line 356
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v2, v2, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)V

    .line 357
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 358
    return-void

    .line 347
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
