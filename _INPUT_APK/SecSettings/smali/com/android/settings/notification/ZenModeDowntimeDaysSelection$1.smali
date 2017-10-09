.class Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    iput p2, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$000(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "buttonView":Landroid/widget/CompoundButton;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->onChanged(Ljava/lang/String;)V

    .line 72
    return-void
.end method
