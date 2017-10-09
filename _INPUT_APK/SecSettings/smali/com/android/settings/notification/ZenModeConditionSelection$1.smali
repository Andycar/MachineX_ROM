.class Lcom/android/settings/notification/ZenModeConditionSelection$1;
.super Ljava/lang/Object;
.source "ZenModeConditionSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeConditionSelection;->newRadioButton(Landroid/service/notification/Condition;)Landroid/widget/RadioButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeConditionSelection;

.field final synthetic val$button:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeConditionSelection;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->this$0:Lcom/android/settings/notification/ZenModeConditionSelection;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->val$button:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->this$0:Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeConditionSelection$1;->val$button:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->setCondition(Landroid/service/notification/Condition;)V

    .line 75
    :cond_0
    return-void
.end method
